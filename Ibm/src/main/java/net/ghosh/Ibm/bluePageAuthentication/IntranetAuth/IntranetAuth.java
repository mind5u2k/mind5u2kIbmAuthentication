package net.ghosh.Ibm.bluePageAuthentication.IntranetAuth;

import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import javax.naming.Context;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.directory.Attributes;
import javax.naming.directory.DirContext;
import javax.naming.directory.InitialDirContext;
import javax.naming.directory.SearchControls;
import javax.naming.directory.SearchResult;

public class IntranetAuth {
	private DirContext dirContext;
	private final String host;
	private final int port;
	private final String defaultO;
	private final String defaultOu;

	public IntranetAuth() throws NamingException {
		this("bluepages.ibm.com", 636, "ibm.com", "bluepages");
	}

	private IntranetAuth(String host, int port, String o, String ou)
			throws NamingException {
		this.host = host;
		this.port = port;
		this.defaultO = o;
		this.defaultOu = ou;
		Properties theProps;
		theProps = new Properties();

		theProps.put("java.naming.factory.initial",
				"com.sun.jndi.ldap.LdapCtxFactory");
		theProps.put("java.naming.provider.url", "ldap://" + host + ":"
				+ String.valueOf(port));

		theProps.put("java.naming.ldap.version", "2");
		theProps.put(Context.SECURITY_PROTOCOL, "ssl");
		theProps.put(Context.SECURITY_AUTHENTICATION, "simple");
		dirContext = new InitialDirContext(theProps);
	}

	public boolean isLDAPUserWithUserEmail(String mail, String password)
			throws Exception {
		IntranetUser usr = getUserInfo(mail);
		if (usr == null) {
			return false;
		}
		String distinguished = "uid=" + usr.getUid() + ", c="
				+ usr.getCountry() + ", ou=" + usr.getOu() + ", o="
				+ usr.getO();
		return isLDAPUserWithDistinguishedName(distinguished, password);
	}

	private boolean isLDAPUserWithDistinguishedName(String distinguishedName,
			String password) {
		DirContext userContext;
		Properties theProps;
		theProps = new Properties();
		theProps.put("java.naming.factory.initial",
				"com.sun.jndi.ldap.LdapCtxFactory");
		theProps.put("java.naming.provider.url", "ldap://" + host + ":"
				+ String.valueOf(port));
		theProps.put("java.naming.ldap.version", "2");
		theProps.put(Context.SECURITY_AUTHENTICATION, "simple");
		theProps.put(Context.SECURITY_PRINCIPAL, distinguishedName);
		/** Authenticate with name: distinguishedName */
		theProps.put(Context.SECURITY_CREDENTIALS, password);
		/** Authenticate with password: password */
		theProps.put(Context.SECURITY_PROTOCOL, "ssl");
		/** Request the use of SSL protocol */
		try {
			userContext = new InitialDirContext(theProps);
			userContext.close();
			return true;
		} catch (NamingException e) {
			e.printStackTrace();
			return false;
		}
	}

	public IntranetUser getUserInfo(String email) throws Exception {
		List<IntranetUser> result = Search("ou=bluepages,o=ibm.com", "(|(mail="
				+ email + "))");
		return result.size() > 0 ? result.get(0) : null;
	}

	public List<IntranetUser> SearchByName(String name) throws Exception {
		return SearchByName(defaultOu, defaultO, name);
	}

	private List<IntranetUser> SearchByName(String ou, String o, String name)
			throws Exception {
		return Search(getOuString(o, ou), "(|(cn=" + name + "*))");
	}

	private String getDefaultOuString() {
		return getOuString(defaultO, defaultOu);
	}

	private String getOuString(String o, String ou) {
		return "ou=" + ou + ", o=" + o;
	}

	private List<IntranetUser> Search(String ou, String filter)
			throws Exception {
		SearchControls constraints = new SearchControls();
		constraints.setSearchScope(SearchControls.SUBTREE_SCOPE);

		String[] attributesToReturn = { "uid", "cn", "sn", "givenName", "mail",
				"o", "ou", "c" };
		constraints.setReturningAttributes(attributesToReturn);
		NamingEnumeration results = null;
		results = dirContext.search(ou, filter, constraints);
		ArrayList<IntranetUser> userList = new ArrayList();
		while (results.hasMore()) {
			SearchResult si = (SearchResult) results.next();
			Attributes attrs = si.getAttributes();
			IntranetUser usr = convertFromAttributes(attrs);
			userList.add(usr);
		}
		return userList;
	}

	private IntranetUser convertFromAttributes(Attributes att) throws Exception {
		String uid = (String) att.get("uid").get();

		String mail;
		try {
			mail = (String) att.get("mail").get();
		} catch (Exception ex) {
			mail = "";
		}
		String ou = (String) att.get("ou").get();
		String o = (String) att.get("o").get();
		String surName = (String) att.get("sn").get();
		String givenName = (String) att.get("givenName").get();
		String commonName = (String) att.get("cn").get();
		String country = (String) att.get("c").get();
		IntranetUser usr = new IntranetUser(uid, commonName, surName,
				givenName, mail, o, ou, country);
		return usr;
	}

	public void closeLdap() throws NamingException {
		dirContext.close();
	}

}

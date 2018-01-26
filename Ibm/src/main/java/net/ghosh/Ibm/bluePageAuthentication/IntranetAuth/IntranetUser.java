package net.ghosh.Ibm.bluePageAuthentication.IntranetAuth;

public class IntranetUser {
	private String uid;
	private String commonName;
	private String surname;
	private String givenName;
	private String mail;
	private String o;
	private String ou;
	private String country;

	public IntranetUser(String uid, String commonName, String surname,
			String givenName, String mail, String o, String ou, String country) {
		this.uid = uid;
		this.commonName = commonName;
		this.surname = surname;
		this.givenName = givenName;
		this.mail = mail;
		this.o = o;
		this.ou = ou;
		this.country = country;
	}

	public String getCommonName() {
		return commonName;
	}

	public void setCommonName(String commonName) {
		this.commonName = commonName;
	}

	public String getGivenName() {
		return givenName;
	}

	public void setGivenName(String givenName) {
		this.givenName = givenName;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getO() {
		return o;
	}

	public void setO(String o) {
		this.o = o;
	}

	public String getOu() {
		return ou;
	}

	public void setOu(String ou) {
		this.ou = ou;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	@Override
	public String toString() {
		return String.format("uid=" + uid + "; commonName=" + commonName
				+ "; surname=" + surname + "; givenName=" + givenName
				+ "; mail=" + mail + "; c=" + country + "; o=" + o + "; ou="
				+ ou);
	}
}

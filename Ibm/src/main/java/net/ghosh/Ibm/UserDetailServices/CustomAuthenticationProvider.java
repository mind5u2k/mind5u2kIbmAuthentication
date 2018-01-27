package net.ghosh.Ibm.UserDetailServices;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import net.ghosh.Ibm.bluePageAuthentication.IntranetAuth.IntranetAuth;
import net.ghosh.Ibm.util.Util;
import net.ghosh.IbmBackend.dao.UserDao;
import net.ghosh.IbmBackend.dto.Sh_User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

@Component
@Service("customAuthenticationProvider")
public class CustomAuthenticationProvider implements AuthenticationProvider {

	@Autowired
	private UserDao userDao;

	public Authentication authenticate(Authentication auth)
			throws AuthenticationException {
		String username = auth.getName();
		String password = auth.getCredentials().toString();

		List<Sh_User> compUsers = userDao.getUserByEmailId(username);
		if (compUsers == null) {
			return null;
		}
		Sh_User user = compUsers.get(0);
		boolean authenticationStatus = true;
		try {
			IntranetAuth intranetAuth = new IntranetAuth();
			authenticationStatus = intranetAuth.isLDAPUserWithUserEmail(
					username, password);
		} catch (Exception e) {
			e.printStackTrace();
		}

		if (authenticationStatus) {
			Collection<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();

			if (compUsers.size() == 1) {
				if (user.getAdmin().equals(Util.ROLE_ASSIGNED)) {
					authorities.add(new SimpleGrantedAuthority(
							Util.ROLE_SUPERADMIN));
				}
				if (user.getAdmin().equals(Util.ROLE_ASSIGNED)) {
					authorities
							.add(new SimpleGrantedAuthority(Util.ROLE_ADMIN));
				}
				if (user.getAdmin().equals(Util.ROLE_ASSIGNED)) {
					authorities.add(new SimpleGrantedAuthority(
							Util.ROLE_PASS_OWNER));
				}
				if (user.getAdmin().equals(Util.ROLE_ASSIGNED)) {
					authorities.add(new SimpleGrantedAuthority(
							Util.ROLE_AUTH_READERS));
				}
				if (user.getAdmin().equals(Util.ROLE_ASSIGNED)) {
					authorities.add(new SimpleGrantedAuthority(
							Util.ROLE_PLATFORM_HEAD));
				}
				if (user.getAdmin().equals(Util.ROLE_ASSIGNED)) {
					authorities.add(new SimpleGrantedAuthority(
							Util.ROLE_COMPLIANCE));
				}
				if (user.getAdmin().equals(Util.ROLE_ASSIGNED)) {
					authorities.add(new SimpleGrantedAuthority(
							Util.ROLE_CUSTOMER_DELEGATE));
				}
				if (user.getAdmin().equals(Util.ROLE_ASSIGNED)) {
					authorities.add(new SimpleGrantedAuthority(
							Util.ROLE_W3_MANAGER));
				}
			}

			return new UsernamePasswordAuthenticationToken(username, password,
					authorities);
		} else {
			throw new BadCredentialsException(
					"External system authentication failed");
		}
	}

	public boolean supports(Class<?> auth) {
		return auth.equals(UsernamePasswordAuthenticationToken.class);
	}
}
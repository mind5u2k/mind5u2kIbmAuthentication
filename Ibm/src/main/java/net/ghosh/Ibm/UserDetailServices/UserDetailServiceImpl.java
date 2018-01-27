package net.ghosh.Ibm.UserDetailServices;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.transaction.Transactional;

import net.ghosh.IbmBackend.dao.UserDao;
import net.ghosh.IbmBackend.dto.CompUser;
import net.ghosh.IbmBackend.dto.Sh_User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service("userDetailsService")
public class UserDetailServiceImpl implements UserDetailsService {

	@Autowired
	private UserDao userDao;

	@Autowired
	private BCryptPasswordEncoder passwordEncoder;

	@Override
	@Transactional
	public UserDetails loadUserByUsername(String userName)
			throws UsernameNotFoundException {
		List<Sh_User> compUser = userDao.getUserByEmailId(userName);
		System.out.println("user is [" + compUser + "]");
		if (compUser == null) {
			return null;
		}

		Sh_User user = compUser.get(0);
		Collection<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		authorities.add(new SimpleGrantedAuthority("Admin"));

		User securityUser = new org.springframework.security.core.userdetails.User(
				userName, "asdf", true, true, true, true, authorities);

		return securityUser;

	}

}

package net.ghosh.Ibm.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import net.ghosh.Ibm.model.UserModel;
import net.ghosh.IbmBackend.dao.UserDao;
import net.ghosh.IbmBackend.dto.Sh_Countries;
import net.ghosh.IbmBackend.dto.Sh_User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

@ControllerAdvice
public class GlobalController {
	/**
	 * @author anurag ghosh
	 */

	@Autowired
	private UserDao userDao;

	@Autowired
	private HttpSession session;

	private UserModel userModel = null;

	@ModelAttribute("userModel")
	public UserModel getUserModel() {
		if (session.getAttribute("userModel") == null) {
			Authentication authentication = SecurityContextHolder.getContext()
					.getAuthentication();
			List<Sh_User> compUser = userDao.getUserByEmailId(authentication
					.getName());

			if (compUser != null) {
				if (compUser.size() > 0) {
					Sh_User user = compUser.get(0);
					userModel = new UserModel();
					userModel.setId(user.getId());
					userModel.setEmail(user.getMailId());
					userModel.setFullName(user.getName());
					List<Sh_Countries> countries = new ArrayList<Sh_Countries>();
					for (Sh_User u : compUser) {
						countries.add(u.getCountry());
					}
					userModel.setCountries(countries);
					session.setAttribute("userModel", userModel);
					return userModel;
				}

			}
		}
		return (UserModel) session.getAttribute("userModel");
	}
}

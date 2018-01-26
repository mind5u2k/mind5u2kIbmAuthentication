package net.ghosh.Ibm.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import net.ghosh.Ibm.model.UserModel;
import net.ghosh.IbmBackend.dao.UserDao;
import net.ghosh.IbmBackend.dto.CompUser;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

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
			List<CompUser> compUser = userDao.getUserByEmailId(authentication
					.getName());
			CompUser user = compUser.get(0);
			if (user != null) {
				userModel = new UserModel();
				userModel.setId(user.getId());
				userModel.setEmail(user.getEmail());
				userModel.setFullName(user.getName());
				userModel.setRole(user.getRole());
				session.setAttribute("userModel", userModel);
				return userModel;
			}
		}
		return (UserModel) session.getAttribute("userModel");
	}
}

package com.mysociety.login.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mysociety.login.domain.SocietyMaster;
import com.mysociety.login.domain.User;
import com.mysociety.login.service.LoginService;

@Controller
public class LoginController {
	@Autowired
	private LoginService loginService;
	
	@Autowired
	private SessionFactory sessionFactory;

	@RequestMapping(value = "/Login", method = RequestMethod.GET)
	public ModelAndView LoginPage() {
		return new ModelAndView("login/Login");
	}
	
	@RequestMapping(value = "/Logout", method = RequestMethod.GET)
	public ModelAndView LogoutPage(HttpServletRequest request) throws ServletException {
		request.getSession().invalidate();
		request.logout();
		return new ModelAndView("login/Logout");
	}

	@RequestMapping(value = "/Register", method = RequestMethod.GET)
	public ModelAndView RegisterPage() {
		return new ModelAndView("login/Register");
	}

	@RequestMapping(value = "/SoceityRegistration", method = RequestMethod.POST)
	public ModelAndView SocietyRegisterPage(HttpServletRequest request,
			@ModelAttribute("command") SocietyMaster societyMaster, User userObj) {

		userObj.setDescription("Admin User for Society - "+societyMaster.getShortName());
		
		if(loginService.checkIfUserIdUnique(userObj.getUserId())){
			//TODO: error Message saying User already exists.
		}
		
		if(loginService.checkIfSocietyNameUnique(societyMaster.getSocietyName())){
			//TODO: error Message saying Society already exists.
		}
		
		//loginService.registerUser(userObj);
		if(loginService.registerSociety(societyMaster, userObj)){
			return new ModelAndView("login/SocietyRegSuccess");
		}else{
			return new ModelAndView("login/RegistrationFailed");
		}
		
	}

	@RequestMapping(value = "/RegisterSociety", method = RequestMethod.GET)
	public ModelAndView RegisterSociety() {
		return new ModelAndView("login/RegisterSociety");
	}

	@RequestMapping(value = "/ValidateUser", method = RequestMethod.POST)
	public ModelAndView ValidateUser(HttpServletRequest request,
			@ModelAttribute("command") User userObj) {

		if (validateUser(userObj)) {
			request.getSession().setAttribute("UserId", userObj.getUserId());
			return new ModelAndView("Home");
		} else {
			return new ModelAndView("login/LoginError");
		}
	}
	
	private boolean validateUser(User userObj){
		boolean isValid = false;
		if (userObj.getUserId() == null || userObj.getPassword() == null) {
			return isValid;
		}
		isValid = loginService.validateUser(userObj);
		return isValid;
	}
}

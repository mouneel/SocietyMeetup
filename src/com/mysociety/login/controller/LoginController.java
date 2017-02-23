package com.mysociety.login.controller;

import javax.servlet.http.HttpServletRequest;

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

	@RequestMapping(value = "/Login", method = RequestMethod.GET)
	public ModelAndView LoginPage() {
		return new ModelAndView("login/Login");
	}

	@RequestMapping(value = "/Register", method = RequestMethod.GET)
	public ModelAndView RegisterPage() {
		return new ModelAndView("login/Register");
	}

	@RequestMapping(value = "/SoceityRegistration", method = RequestMethod.POST)
	public ModelAndView SocietyRegisterPage(HttpServletRequest request,
			@ModelAttribute("command") SocietyMaster societyMaster, User userObj) {

		userObj.setDescription("Admin User for Society - "+societyMaster.getShortName());
		loginService.registerUser(userObj);
		loginService.registerSociety(societyMaster);

		return new ModelAndView("login/SocietyRegSuccess");
	}

	@RequestMapping(value = "/RegisterSociety", method = RequestMethod.GET)
	public ModelAndView RegisterSociety() {
		return new ModelAndView("login/RegisterSociety");
	}

	@RequestMapping(value = "/ValidateUser", method = RequestMethod.POST)
	public ModelAndView ValidateUser(HttpServletRequest request,
			@ModelAttribute("command") User userObj) {

		if (userObj.getUserId() == null || userObj.getPassword() == null) {
			return new ModelAndView("login/LoginError");
		}
		boolean isValid = loginService.validateUser(userObj);
		if (isValid) {
			request.getSession().setAttribute("UserId", userObj.getUserId());
			return new ModelAndView("Home");
		} else {
			return new ModelAndView("login/LoginError");
		}
	}
}

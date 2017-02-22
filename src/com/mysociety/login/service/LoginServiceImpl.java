package com.mysociety.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mysociety.login.dao.UserDAO;
import com.mysociety.login.dao.UserDAOImpl;
import com.mysociety.login.domain.User;

@Service("LoginService")
public class LoginServiceImpl implements LoginService {

	@Autowired
	private UserDAO userDAO;

	@Override
	public boolean validateUser(User userObj) {
		if(userObj == null || userObj.getUserId() == null){
			return false;
		}

		User dbUserDetails = userDAO.getUserByObject(userObj);
		if (dbUserDetails != null
				&& dbUserDetails.getPassword().equals(userObj.getPassword())) {
			return true;
		}
		return false;
	}

	@Override
	public void registerUser(User userObj) {
		// TODO Auto-generated method stub
		
	}

}

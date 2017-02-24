package com.mysociety.login.service;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mysociety.login.dao.SocietyMasterDAO;
import com.mysociety.login.dao.UserDAO;
import com.mysociety.login.domain.SocietyMaster;
import com.mysociety.login.domain.User;

@Service("LoginService")
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private SocietyMasterDAO societyMasterDAO;

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
	public boolean registerUser(User userObj) {
		try{
			userDAO.addUser(userObj);
			System.out.println("User Created..!");
		}catch(Exception ex){
			System.out.println("Registration Failed..!");
			return false;
		}
		return true;
	}

	@Override
	public boolean registerSociety(SocietyMaster societyMaster, User userObj) {
		try{
			//TODO: IMPORTNAT: Add in transaction
			userDAO.addUser(userObj);
			System.out.println("User Created..!");
			societyMasterDAO.createSociety(societyMaster);
			System.out.println("Society Created..!");
		}catch(Exception ex){
			System.out.println("Registration Failed..!"+ex.toString());
			return false;
		}
		return true;
	}

	@Override
	public String getSocietyName(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean checkIfUserIdUnique(String userId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean checkIfSocietyNameUnique(String societyName) {
		// TODO Auto-generated method stub
		return false;
	}

}

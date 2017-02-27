package com.mysociety.login.service;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mysociety.common.LoggerUtil;
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
	
	private static Logger logger = LoggerUtil.getInstance().getLogger();

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
			logger.debug("User Registration for UserId: "+userObj.getUserId());
			//TODO: IMPORTNAT: Add in transaction
			userDAO.addUser(userObj);
			System.out.println("User Created..!");
			societyMasterDAO.createSociety(societyMaster);
			System.out.println("Society Created..!");
		}catch(Exception ex){
			logger.error("LoginServiceImpl#registerSociety(): Registration Failed for user: ["+userObj.getUserId()+"] & Society Name: ["+societyMaster.getSocietyName()+"]");
			logger.error("Error:"+ex.toString());
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

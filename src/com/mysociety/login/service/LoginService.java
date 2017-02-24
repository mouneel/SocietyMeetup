package com.mysociety.login.service;

import com.mysociety.login.domain.SocietyMaster;
import com.mysociety.login.domain.User;

public interface LoginService {
	public boolean validateUser(User userObj);
	public boolean registerUser(User userObj);
	public boolean registerSociety(SocietyMaster societyMaster, User userObj);
	
	public String getSocietyName(String userId);
	public boolean checkIfUserIdUnique(String userId);
	public boolean checkIfSocietyNameUnique(String societyName);
}

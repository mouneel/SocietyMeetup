package com.mysociety.login.service;

import com.mysociety.login.domain.User;

public interface LoginService {
	public boolean validateUser(User userObj);
	public void registerUser(User userObj);
}

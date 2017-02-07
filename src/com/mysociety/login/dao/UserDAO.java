package com.mysociety.login.dao;

import java.util.List;

import com.mysociety.login.domain.User;

public interface UserDAO {
	public User getUserById(String userId);
	public User getUserByObject(User userObj);
	public List<User> getAllUsers();
	public void updateUserDetails(User userObj);
	public void deleteUser(String userId);
}

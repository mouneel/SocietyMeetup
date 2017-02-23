package com.mysociety.login.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.mysociety.login.domain.User;

@Transactional
@Repository("UserDAO")
public class UserDAOImpl implements UserDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public User getUserById(String userId) {
		// TODO Auto-generated method stub
		return (User) sessionFactory.getCurrentSession().get(User.class, userId);
	}

	@Override
	public User getUserByObject(User userObj) {
		// TODO Auto-generated method stub
		return (User) sessionFactory.getCurrentSession().get(User.class, userObj.getUserId());
	}

	@Override
	public List<User> getAllUsers() {
		return (List<User>) sessionFactory.getCurrentSession()
				.createCriteria(User.class).list();
	}

	@Override
	public void updateUserDetails(User userObj) {
		sessionFactory.getCurrentSession().saveOrUpdate(userObj);
	}

	@Override
	public void deleteUser(String userId) {
		sessionFactory.getCurrentSession().createQuery("DELETE FROM User WHERE userid = '"+userId+"'").executeUpdate();
	}

	@Override
	public void addUser(User userObj) {
		sessionFactory.getCurrentSession().saveOrUpdate(userObj);
	}
}

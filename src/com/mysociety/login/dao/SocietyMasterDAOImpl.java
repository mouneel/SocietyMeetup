package com.mysociety.login.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.mysociety.login.domain.SocietyMaster;
import com.mysociety.login.domain.User;

@Transactional
@Repository("SocietyMasterDAO")
public class SocietyMasterDAOImpl implements SocietyMasterDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void createSociety(SocietyMaster societyMaster) {
		sessionFactory.getCurrentSession().saveOrUpdate(societyMaster);
	}

	@Override
	public void updateSociety(SocietyMaster societyMaster) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteSociety(SocietyMaster societyMaster) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<SocietyMaster> getAllSocietyMaster() {
		// TODO Auto-generated method stub
		return null;
	}

}

package com.mysociety.login.dao;

import java.util.List;

import com.mysociety.login.domain.SocietyMaster;

public interface SocietyMasterDAO {
	public void createSociety(SocietyMaster societyMaster);
	public void updateSociety(SocietyMaster societyMaster);
	public void deleteSociety(SocietyMaster societyMaster);
	public List<SocietyMaster> getAllSocietyMaster();
}

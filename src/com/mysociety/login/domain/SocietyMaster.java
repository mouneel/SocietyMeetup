package com.mysociety.login.domain;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="societymaster")
public class SocietyMaster {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name = "tenantid")
	private int tenantId;
	
	@Column(name="userid")
	private String userId;
	
	@Column(name="SocietyName")
	private String societyName;
	
	@Column(name="ShortName")
	private String shortName;
	
	@Column(name="ContactPerson")
	private String contactPerson;
	
	@Column(name="Designation")
	private String designation;
	
	@Column(name="SocietyEmail")
	private String SocietyEmail;
	
	@Column(name="SocietyContacts")
	private String SocietyContacts;
	
	@Column(name="City")
	private String city;
	
	@Column(name="Pincode")
	private String pincode;
	
	@Column(name="RegistrationNo")
	private String registrationNo;
	
	@Column(name="RegistrationDate")
	private Date registrationDate;

	public int getTenantId() {
		return tenantId;
	}

	public void setTenantId(int tenantId) {
		this.tenantId = tenantId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getSocietyName() {
		return societyName;
	}

	public void setSocietyName(String societyName) {
		this.societyName = societyName;
	}

	public String getShortName() {
		return shortName;
	}

	public void setShortName(String shortName) {
		this.shortName = shortName;
	}

	public String getContactPerson() {
		return contactPerson;
	}

	public void setContactPerson(String contactPerson) {
		this.contactPerson = contactPerson;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public String getSocietyEmail() {
		return SocietyEmail;
	}

	public void setSocietyEmail(String societyEmail) {
		SocietyEmail = societyEmail;
	}

	public String getSocietyContacts() {
		return SocietyContacts;
	}

	public void setSocietyContacts(String societyContacts) {
		SocietyContacts = societyContacts;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	public String getRegistrationNo() {
		return registrationNo;
	}

	public void setRegistrationNo(String registrationNo) {
		this.registrationNo = registrationNo;
	}

	public Date getRegistrationDate() {
		return registrationDate;
	}

	public void setRegistrationDate(Date registrationDate) {
		this.registrationDate = registrationDate;
	}
	
	
}

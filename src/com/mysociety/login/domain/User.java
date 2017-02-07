package com.mysociety.login.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="users")
public class User {
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User(String userId, String password, String description) {
		super();
		this.userId = userId;
		this.password = password;
		this.description = description;
	}

	@Id
	@Column(name = "userid")
	private String userId;
	
	@Column(name="password")
	private String password;
	
	@Column(name="description")
	private String description;
	
	
	public String getUserId() {
		return userId;
	}
	
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getDescription() {
		return description;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}
}

package com.Ajay.Automate.Models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user")
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long ID;

	@Column(name = "username")
	private String username;

	@Column(name = "Password")
	private String Password;

	@Column(name = "role")
	private String role;

	public Long getID() {
		return ID;
	}

	public void setID(Long iD) {
		ID = iD;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "User [ID=" + ID + ", username=" + username + ", Password=" + Password + ", role=" + role + "]";
	}

	public User(Long iD, String username, String password, String role) {
		super();
		ID = iD;
		this.username = username;
		Password = password;
		this.role = role;
	}

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

}

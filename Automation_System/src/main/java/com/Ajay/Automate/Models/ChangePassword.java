package com.Ajay.Automate.Models;

public class ChangePassword {

	private String username;
	private String password;
	private String role;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	@Override
	public String toString() {
		return "ChangePassword [username=" + username + ", password=" + password + ", role=" + role + "]";
	}
	public ChangePassword(String username, String password, String role) {
		super();
		this.username = username;
		this.password = password;
		this.role = role;
	}
	public ChangePassword() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}

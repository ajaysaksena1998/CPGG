package com.Ajay.Automate.Models;

public class RemoveStaff {
	
	private String email;
	private String role;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	@Override
	public String toString() {
		return "RemoveStaff [email=" + email + ", role=" + role + "]";
	}
	public RemoveStaff(String email, String role) {
		super();
		this.email = email;
		this.role = role;
	}
	public RemoveStaff() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

}

package com.demo.Entities.Registration;

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
	Long id;
	
	@Column(name = "loc_category")
	String loc_category;
	
	@Column(name="loc_id")
	String loc_id;
	
	@Column(name = "name")
	String name;
	
	@Column(name = "email")
	String email;
	
	@Column(name = "password")
	String password;
	
	@Column(name="approve")
	int approve;
	
	

	public int getApprove() {
		return approve;
	}

	public void setApprove(int approve) {
		this.approve = approve;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	



	@Override
	public String toString() {
		return "User [id=" + id + ", loc_category=" + loc_category + ", loc_id=" + loc_id + ", name=" + name
				+ ", email=" + email + ", password=" + password + ", approve=" + approve + "]";
	}

	public User(Long id, String loc_category, String loc_id, String name, String email, String password, int approve) {
		super();
		this.id = id;
		this.loc_category = loc_category;
		this.loc_id = loc_id;
		this.name = name;
		this.email = email;
		this.password = password;
		this.approve = approve;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getLoc_category() {
		return loc_category;
	}

	public void setLoc_category(String loc_category) {
		this.loc_category = loc_category;
	}

	public String getLoc_id() {
		return loc_id;
	}

	public void setLoc_id(String loc_id) {
		this.loc_id = loc_id;
	}

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

}

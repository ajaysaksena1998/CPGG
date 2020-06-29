package com.Ajay.Automate.Models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Table;
import javax.persistence.Id;

@Entity
@Table(name = "stock_holder")
public class StockHolders {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long Id;

	@Column(name = "Holder_Id")
	private int holder_id;

	@Column(name = "Holder_Name")
	private String username;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public StockHolders(Long id, int holder_id, String username) {
		super();
		Id = id;
		this.holder_id = holder_id;
		this.username = username;
	}

	@Override
	public String toString() {
		return "StockHolders [Id=" + Id + ", holder_id=" + holder_id + ", username=" + username + "]";
	}

	public int getHolder_id() {
		return holder_id;
	}

	public void setHolder_id(int holder_id) {
		this.holder_id = holder_id;
	}

	public Long getId() {
		return Id;
	}

	public void setId(Long id) {
		Id = id;
	}

	public StockHolders() {
		super();
		// TODO Auto-generated constructor stub
	}

}

package com.Ajay.Automate.Models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "medicine")
public class Medicine {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long Med_Id;

	@Column(name = "Medicine_Name")
	private String medname;

	@Column(name = "Medicine_Stock")
	private int med_stock;

	@Column(name = "Price_Per_Piece")
	private int priceperpiece;

	@Column(name = "expiry_date")
	private String expiryDate;

	public String getMedname() {
		return medname;
	}

	public void setMedname(String medname) {
		this.medname = medname;
	}

	public int getMed_stock() {
		return med_stock;
	}

	public void setMed_stock(int med_stock) {
		this.med_stock = med_stock;
	}

	public int getPriceperpiece() {
		return priceperpiece;
	}

	public void setPriceperpiece(int priceperpiece) {
		this.priceperpiece = priceperpiece;
	}

	public Medicine(Long med_Id, String medname, int med_stock, int priceperpiece, String expiryDate) {
		super();
		Med_Id = med_Id;
		this.medname = medname;
		this.med_stock = med_stock;
		this.priceperpiece = priceperpiece;
		this.expiryDate = expiryDate;
	}

	@Override
	public String toString() {
		return "Medicine [Med_Id=" + Med_Id + ", medname=" + medname + ", med_stock=" + med_stock + ", priceperpiece="
				+ priceperpiece + ", expiryDate=" + expiryDate + "]";
	}

	public String getExpiryDate() {
		return expiryDate;
	}

	public void setExpiryDate(String expiryDate) {
		this.expiryDate = expiryDate;
	}

	public Long getMed_Id() {
		return Med_Id;
	}

	public void setMed_Id(Long med_Id) {
		Med_Id = med_Id;
	}

	public Medicine() {
		super();
		// TODO Auto-generated constructor stub
	}

}

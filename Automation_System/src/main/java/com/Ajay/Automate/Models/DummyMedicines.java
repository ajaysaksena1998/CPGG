package com.Ajay.Automate.Models;

public class DummyMedicines {

	private int sapid;
	private String medname;
	private int med_stock;

	public int getSapid() {
		return sapid;
	}

	public void setSapid(int sapid) {
		this.sapid = sapid;
	}

	public String getMedname() {
		return medname;
	}

	public void setMedname(String medname) {
		this.medname = medname;
	}

	@Override
	public String toString() {
		return "DummyMedicines [sapid=" + sapid + ", medname=" + medname + ", med_stock=" + med_stock + "]";
	}

	public DummyMedicines(int sapid, String medname, int med_stock) {
		super();
		this.sapid = sapid;
		this.medname = medname;
		this.med_stock = med_stock;
	}

	public int getMed_stock() {
		return med_stock;
	}

	public void setMed_stock(int med_stock) {
		this.med_stock = med_stock;
	}

	public DummyMedicines() {
		super();
		// TODO Auto-generated constructor stub
	}

}

package com.Ajay.Automate.Models;

public class DoctorPatientList {

	private int sapid;
	private String medicine;
	private String diagnosis;
	public int getSapid() {
		return sapid;
	}
	public void setSapid(int sapid) {
		this.sapid = sapid;
	}
	public String getMedicine() {
		return medicine;
	}
	public void setMedicine(String medicine) {
		this.medicine = medicine;
	}
	public String getDiagnosis() {
		return diagnosis;
	}
	public void setDiagnosis(String diagnosis) {
		this.diagnosis = diagnosis;
	}
	@Override
	public String toString() {
		return "DoctorPatientList [sapid=" + sapid + ", medicine=" + medicine + ", diagnosis=" + diagnosis + "]";
	}
	public DoctorPatientList(int sapid, String medicine, String diagnosis) {
		super();
		this.sapid = sapid;
		this.medicine = medicine;
		this.diagnosis = diagnosis;
	}
	public DoctorPatientList() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}

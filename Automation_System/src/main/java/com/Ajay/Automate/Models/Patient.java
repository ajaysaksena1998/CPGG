package com.Ajay.Automate.Models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "patient")
public class Patient {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long Id;

	@Column(name = "Patient_Id")
	private int sapid;

	@Column(name = "Patient_Name")
	private String name;

	@Column(name = "Contact")
	private String contact;

	@Column(name = "Age")
	private int age;

	@Column(name = "Gender")
	private String gender;

	@Column(name = "Course")
	private String course;

	@Column(name = "Doctor")
	private String doctorname;

	@Column(name = "Medicine")
	private String medicine;

	@Column(name = "Diagnosis")
	private String diagnosis;

	@Column(name = "Temperature")
	private String temperature;

	@Column(name = "Blood_Pressure")
	private String bloodpressure;

	@Column(name = "Weight")
	private String weight;

	@Column(name = "Chronic_Ailment")
	private String chronicAilment;

	@Column(name = "Allergies")
	private String allergies;

	@Column(name = "Conveyance")
	private String conveyance;

	@Column(name = "Hostel_Address")
	private String hostelAddr;

	@Column(name = "Date_And_Time")
	private String dateAndtime;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
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

	public String getTemperature() {
		return temperature;
	}

	public void setTemperature(String temperature) {
		this.temperature = temperature;
	}

	public String getAllergies() {
		return allergies;
	}

	public void setAllergies(String allergies) {
		this.allergies = allergies;
	}

	public String getBloodpressure() {
		return bloodpressure;
	}

	public void setBloodpressure(String bloodpressure) {
		this.bloodpressure = bloodpressure;
	}

	public Patient(Long id, int sapid, String name, String contact, int age, String gender, String course,
			String doctorname, String medicine, String diagnosis, String temperature, String bloodpressure,
			String weight, String chronicAilment, String allergies, String conveyance, String hostelAddr,
			String dateAndtime) {
		super();
		Id = id;
		this.sapid = sapid;
		this.name = name;
		this.contact = contact;
		this.age = age;
		this.gender = gender;
		this.course = course;
		this.doctorname = doctorname;
		this.medicine = medicine;
		this.diagnosis = diagnosis;
		this.temperature = temperature;
		this.bloodpressure = bloodpressure;
		this.weight = weight;
		this.chronicAilment = chronicAilment;
		this.allergies = allergies;
		this.conveyance = conveyance;
		this.hostelAddr = hostelAddr;
		this.dateAndtime = dateAndtime;
	}

	@Override
	public String toString() {
		return "Patient [Id=" + Id + ", sapid=" + sapid + ", name=" + name + ", contact=" + contact + ", age=" + age
				+ ", gender=" + gender + ", course=" + course + ", doctorname=" + doctorname + ", medicine=" + medicine
				+ ", diagnosis=" + diagnosis + ", temperature=" + temperature + ", bloodpressure=" + bloodpressure
				+ ", weight=" + weight + ", chronicAilment=" + chronicAilment + ", allergies=" + allergies
				+ ", conveyance=" + conveyance + ", hostelAddr=" + hostelAddr + ", dateAndtime=" + dateAndtime + "]";
	}

	public String getDoctorname() {
		return doctorname;
	}

	public void setDoctorname(String doctorname) {
		this.doctorname = doctorname;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public String getChronicAilment() {
		return chronicAilment;
	}

	public void setChronicAilment(String chronicAilment) {
		this.chronicAilment = chronicAilment;
	}

	public String getHostelAddr() {
		return hostelAddr;
	}

	public void setHostelAddr(String hostelAddr) {
		this.hostelAddr = hostelAddr;
	}

	public String getConveyance() {
		return conveyance;
	}

	public void setConveyance(String conveyance) {
		this.conveyance = conveyance;
	}

	public Long getId() {
		return Id;
	}

	public String getDateAndtime() {
		return dateAndtime;
	}

	public void setDateAndtime(String dateAndtime) {
		this.dateAndtime = dateAndtime;
	}

	public void setId(Long id) {
		Id = id;
	}

	public int getSapid() {
		return sapid;
	}

	public void setSapid(int sapid) {
		this.sapid = sapid;
	}

	public Patient() {
		super();
		// TODO Auto-generated constructor stub
	}

}

package com.Ajay.Automate.Models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Table;
import javax.persistence.Id;

@Entity
@Table(name = "receptionist")
public class Receptionist {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long Id;
	
	@Column(name = "Receptionist_Id")
	private int receptionist_id;
	
	@Column(name = "Receptionist_Name")
	private String receptionistname;

	public Long getId() {
		return Id;
	}

	public void setId(Long id) {
		Id = id;
	}

	public int getReceptionist_id() {
		return receptionist_id;
	}

	public void setReceptionist_id(int receptionist_id) {
		this.receptionist_id = receptionist_id;
	}

	public String getReceptionistname() {
		return receptionistname;
	}

	public void setReceptionistname(String receptionist_name) {
		this.receptionistname = receptionist_name;
	}

	@Override
	public String toString() {
		return "Receptionist [Id=" + Id + ", receptionist_id=" + receptionist_id + ", receptionist_name="
				+ receptionistname + "]";
	}

	public Receptionist(Long id, int receptionist_id, String receptionist_name) {
		super();
		Id = id;
		this.receptionist_id = receptionist_id;
		this.receptionistname = receptionistname;
	}

	public Receptionist() {
		super();
		// TODO Auto-generated constructor stub
	}

}

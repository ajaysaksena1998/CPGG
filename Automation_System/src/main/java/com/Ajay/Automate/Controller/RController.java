package com.Ajay.Automate.Controller;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.Ajay.Automate.Models.Role;
import com.Ajay.Automate.Models.StockHolders;
import com.Ajay.Automate.Models.User;
import com.Ajay.Automate.Models.provideMedicines;
import com.Ajay.Automate.Models.ChangePassword;
import com.Ajay.Automate.Models.DocPatList;
import com.Ajay.Automate.Models.Doctor;
import com.Ajay.Automate.Models.DoctorPatientList;
import com.Ajay.Automate.Models.DummyMedicines;
import com.Ajay.Automate.Models.Medicine;
import com.Ajay.Automate.Models.Patient;
import com.Ajay.Automate.Models.Receptionist;
import com.Ajay.Automate.Models.RegisterUser;
import com.Ajay.Automate.Models.RemoveStaff;
import com.Ajay.Automate.Repository.DocPatListRepository;
import com.Ajay.Automate.Repository.DoctorRepository;
import com.Ajay.Automate.Repository.MedicineRepository;
import com.Ajay.Automate.Repository.PatientRepository;
import com.Ajay.Automate.Repository.ProvideMedicinesRepository;
import com.Ajay.Automate.Repository.ReceptionistRepository;
import com.Ajay.Automate.Repository.Stock_HolderRepository;
import com.Ajay.Automate.Repository.UserRepository;
import com.Ajay.Automate.Util.EmailUtil;
import com.Ajay.Automate.Util.PdfGenerator;

@RestController
@CrossOrigin
public class RController {

	@Autowired
	PatientRepository patientRepo;

	@Autowired
	DoctorRepository doctorRepo;

	@Autowired
	MedicineRepository medicineRepo;

	@Autowired
	UserRepository userRepo;

	@Autowired
	Stock_HolderRepository stockholderRepo;

	@Autowired
	ReceptionistRepository receptionistRepo;

	@Autowired
	DocPatListRepository docPat;

	@Autowired
	ProvideMedicinesRepository promedRepo;
	
	@Autowired
	PdfGenerator pdfGenerator;
	
	@Autowired
	EmailUtil emailUtil;
	
	@Value("${com.Ajay.HospitalAutomation.Directory}")
	private String ITINARY_DIR;

	BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();

	@GetMapping("/patients")
	public List<Patient> getPatients() {
		return patientRepo.findAll();
	}

	@GetMapping("/doctors")
	public List<Doctor> getDoctors() {
		return doctorRepo.findAll();
	}

	@GetMapping("/patient/{id}")
	public List<Patient> getPatient(@PathVariable int id) {
		return patientRepo.findBysapid(id);
	}

	@GetMapping("/medicines")
	public List<Medicine> getMedicines() {
		return medicineRepo.findAll();
	}

	@GetMapping("/getRole/{username}")
	public Role getRole(@PathVariable String username) {
		try {
			User user = userRepo.findByUsername(username);
			return new Role(user.getRole());
		} catch (NullPointerException n) {
			return new Role("");
		}
	}

	@PostMapping("/addDoctors")
	public Doctor addDoctor(@RequestBody Doctor doctor) {
		User byUsername = userRepo.findByUsername(doctor.getDoctoremail());
	
		if(byUsername==null) {
			User user = new User();
			user.setUsername(doctor.getDoctoremail());
			user.setPassword("computing");
			user.setRole("DOCTOR");
			userRepo.save(user);
			return doctorRepo.save(doctor);
		}
		else {
			
			if(byUsername.getRole().equals("RECEPTIONIST")) {
				Receptionist byreceptionistname = receptionistRepo.findByreceptionistname(doctor.getDoctoremail());
				receptionistRepo.delete(byreceptionistname);
			}
			else if(byUsername.getRole().equals("STOCK HOLDER")) {
				StockHolders byname = stockholderRepo.findByusername(doctor.getDoctoremail());
				stockholderRepo.delete(byname);
			}
			
			byUsername.setUsername(doctor.getDoctoremail());
			byUsername.setPassword("computing");
			byUsername.setRole("DOCTOR");
			userRepo.save(byUsername);
			Doctor bydoctoremail = doctorRepo.findBydoctoremail(doctor.getDoctoremail());
			if(bydoctoremail==null) {
				return doctorRepo.save(doctor);
			}
			else {
				bydoctoremail.setDoctorname(doctor.getDoctorname());
				bydoctoremail.setDoctorId(doctor.getDoctorId());
				bydoctoremail.setDesignation(doctor.getDesignation());
				return doctorRepo.save(bydoctoremail);
			}
		}
	}

	@PostMapping("/addStockHolder")
	public StockHolders addStockHolder(@RequestBody StockHolders stockHolder) {
		
		User byUsername = userRepo.findByUsername(stockHolder.getUsername());
		if(byUsername==null) {
			User user = new User();
			user.setUsername(stockHolder.getUsername());
			user.setPassword("computing");
			user.setRole("STOCK HOLDER");
			userRepo.save(user);
			return stockholderRepo.save(stockHolder);
		}
		else {
			if(byUsername.getRole().equals("RECEPTIONIST")) {
				Receptionist byreceptionistname = receptionistRepo.findByreceptionistname(stockHolder.getUsername());
				receptionistRepo.delete(byreceptionistname);
			}
			else if(byUsername.getRole().equals("DOCTOR")) {
				Doctor byname = doctorRepo.findBydoctoremail(stockHolder.getUsername());
				doctorRepo.delete(byname);
			}
			byUsername.setUsername(stockHolder.getUsername());
			byUsername.setPassword("computing");
			byUsername.setRole("STOCK HOLDER");
			userRepo.save(byUsername);
			StockHolders stock = stockholderRepo.findByusername(stockHolder.getUsername());
			if(stock==null) {
				return stockholderRepo.save(stockHolder);
			}
			else {
				stock.setUsername(stockHolder.getUsername());
				stock.setHolder_id(stockHolder.getHolder_id());
				return stockholderRepo.save(stock);
			}
			
			
		}
	}

	@PostMapping("/addReceptionist")
	public Receptionist addReceptionist(@RequestBody Receptionist receptionist) {

		User byUsername = userRepo.findByUsername(receptionist.getReceptionistname());

		if(byUsername==null) {
			User user = new User();
			user.setUsername(receptionist.getReceptionistname());
			user.setPassword("computing");
			user.setRole("RECEPTIONIST");
			userRepo.save(user);
			return receptionistRepo.save(receptionist);
		}
		else {
			if(byUsername.getRole().equals("STOCK HOLDER")) {
				StockHolders bystockholder = stockholderRepo.findByusername(receptionist.getReceptionistname());
				stockholderRepo.delete(bystockholder);
			}
			else if(byUsername.getRole().equals("DOCTOR")) {
				Doctor byname = doctorRepo.findBydoctoremail(receptionist.getReceptionistname());
				doctorRepo.delete(byname);
			}
			byUsername.setUsername(receptionist.getReceptionistname());
			byUsername.setPassword("computing");
			byUsername.setRole("RECEPTIONIST");
			userRepo.save(byUsername);
			Receptionist rec = receptionistRepo.findByreceptionistname(receptionist.getReceptionistname());
			if(rec==null) {
				return receptionistRepo.save(receptionist);
			}
			else {
				rec.setReceptionistname(receptionist.getReceptionistname());
				rec.setReceptionist_id(receptionist.getReceptionist_id());;
				return receptionistRepo.save(rec);
			}
			
			
		}
		
	}

	@PostMapping("/register")
	public Boolean Register(@RequestBody RegisterUser registerUser) {
		try {
			User user = userRepo.findByUsername(registerUser.getUsername());
			if (user.getPassword().equals("computing")) {
				String encodedString = encoder.encode(registerUser.getPassword());
				user.setPassword(encodedString);
				userRepo.save(user);
				return true;
			}
			return false;
		} catch (NullPointerException e) {
			System.out.println(e.getMessage());
			return false;
		}

	}

	@GetMapping("/getDoctorNames")
	public List<String> getDoctorName() {
		List<String> names = new ArrayList<>();
		List<Doctor> doctors = doctorRepo.findAll();
		for (Doctor d : doctors) {
			names.add(d.getDoctorname());
		}
		return names;

	}

	@PostMapping("/savePatient")
	public Patient savePatient(@RequestBody Patient patient) {
		DocPatList doc = new DocPatList();
		doc.setSapid(patient.getSapid());
		doc.setTemperature(patient.getTemperature());
		doc.setAllergies(patient.getAllergies());
		doc.setBloodpressure(patient.getBloodpressure());
		doc.setChronicAilment(patient.getChronicAilment());
		doc.setWeight(patient.getWeight());
		doc.setName(patient.getName());
		doc.setDoctorname(patient.getDoctorname());
		docPat.save(doc);
		return patientRepo.save(patient);
	}

	@GetMapping("/getPatientInfo/{username}")
	public List<DocPatList> getPatientInfo(@PathVariable String username) {
		Doctor doctor = doctorRepo.findBydoctoremail(username);
		String docName = doctor.getDoctorname();
		List<DocPatList> patientList = docPat.findBydoctorname(docName);
		return patientList;
	}

	@PostMapping("/presMed")
	public Patient presMed(@RequestBody DoctorPatientList docpatList) {
		List<Patient> list = patientRepo.findBysapid(docpatList.getSapid());
		provideMedicines promed = new provideMedicines();
		Patient patient = list.get(list.size() - 1);
		patient.setMedicine(docpatList.getMedicine());
		patient.setDiagnosis(docpatList.getDiagnosis());
		promed.setMedicine(patient.getMedicine());
		promed.setDiagnosis(patient.getDiagnosis());
		promed.setDoctorname(patient.getDoctorname());
		promed.setName(patient.getName());
		promed.setSapid(patient.getSapid());
		promedRepo.save(promed);
		patientRepo.save(patient);
		String filepath = ITINARY_DIR + patient.getSapid()+ patient.getId() + ".pdf";
		String email= patient.getSapid()+"@stu.upes.ac.in";
		pdfGenerator.generateItinary(patient, filepath);
		emailUtil.SendItinary(email, filepath);
		DocPatList bysapid = docPat.findBysapid(patient.getSapid());
		docPat.delete(bysapid);
		return patient;
	}

	@GetMapping("/getMedicinePatients")
	public List<provideMedicines> getMedicinePatients() {
		return promedRepo.findAll();
	}

	@PostMapping("/addingStock")
	public Medicine addingStock(@RequestBody Medicine medicine) {
		medicine.setMedname(medicine.getMedname().toUpperCase());
		Medicine bymedname = medicineRepo.findBymedname(medicine.getMedname());
		if (bymedname != null) {
			bymedname.setExpiryDate(medicine.getExpiryDate());
			bymedname.setMed_stock(bymedname.getMed_stock() + medicine.getMed_stock());
			bymedname.setPriceperpiece(medicine.getPriceperpiece());
			return medicineRepo.save(bymedname);
		} else {
			return medicineRepo.save(medicine);
		}
	}

	@GetMapping("/getmedicinesnames")
	public List<String> getmedicinesnames() {
		List<Medicine> list = medicineRepo.findAll();
		List<String> medi = new ArrayList<>();
		for (Medicine m : list) {
			medi.add(m.getMedname());
		}
		return medi;
	}
	
	@PostMapping("/addMedicineStock/{sapid}")
	public void addMedicineStock(@RequestBody DummyMedicines[] medicine, @PathVariable int sapid) {
		
		for(DummyMedicines dm: medicine) {
			Medicine bymedname = medicineRepo.findBymedname(dm.getMedname());
			if((bymedname.getMed_stock()- dm.getMed_stock())<=0) {
				medicineRepo.delete(bymedname);
			}
			else {
				bymedname.setMed_stock(bymedname.getMed_stock() - dm.getMed_stock());
				medicineRepo.save(bymedname);
			}
		}
		
		provideMedicines bysapid = promedRepo.findBysapid(sapid);
		promedRepo.delete(bysapid);
	}
	
	@GetMapping("getMedicineToBeExpired")
	public List<Medicine> getMedicineToBeExpired(){
		List<Medicine> find = medicineRepo.findAll();
	    int i = Calendar.getInstance().get(Calendar.YEAR);
		int j = Calendar.getInstance().get(Calendar.MONTH) + 1;
		String year= Integer.toString(i);
		String month= Integer.toString(j);
		if(month!="11" && month!="12" && month!="10") {
			month= "0"+month;
		}
		if(find.isEmpty()) {
			return null;
		}
		List<Medicine> med= new ArrayList<>();
		for(Medicine f: find) {
			String[] split = f.getExpiryDate().split("-");		
			if(split[0].equals(year) && (split[1].equals(month))) {
				med.add(f);
			}
		}
		if(med.isEmpty()) {
			return null;
		}
		return med;
	}

	@PostMapping("DeleteMedicineByName")
	public void DeleteMedicineByName(@RequestBody Medicine d) {
		Medicine bymedname = medicineRepo.findBymedname(d.getMedname());
		medicineRepo.delete(bymedname);
	}
	
	@GetMapping("/lowStockMedicines")
	public List<Medicine> lowStockMedicines(){
		List<Medicine> allMedicines = medicineRepo.findAll();
		List<Medicine> lowS= new ArrayList<>(); 
		if(allMedicines.isEmpty()) {
			return null;
		}
		for(Medicine m: allMedicines) {
			if(m.getMed_stock()<50) {
				lowS.add(m);
			}
		}
		if(lowS.isEmpty()) {
			return null;
		}
		return lowS;
	}
	
	@PostMapping("/removeStaff")
	public Boolean removeStaff(@RequestBody RemoveStaff remStaff) {
		System.out.println(remStaff.getEmail());
		User username = userRepo.findByUsername(remStaff.getEmail());
		if(username==null) {
			return false;
		}
		if(remStaff.getRole().equals("Doctor")) {
			Doctor bydoctoremail = doctorRepo.findBydoctoremail(remStaff.getEmail());
			doctorRepo.delete(bydoctoremail);
			userRepo.delete(username);
			return true;
		}
		else if(remStaff.getRole().equals("Receptionist")) {
			Receptionist byreceptionistname = receptionistRepo.findByreceptionistname(remStaff.getEmail());
			receptionistRepo.delete(byreceptionistname);
			userRepo.delete(username);
			return true;
		}
		else if(remStaff.getRole().equals("Stock Holder")) {
			StockHolders byusername = stockholderRepo.findByusername(remStaff.getEmail());
			userRepo.delete(username);
			stockholderRepo.delete(byusername);
			return true;
		}
		else {
			return false;
		}
	}
	
	@PostMapping("/changePassword")
	public User changePassword(@RequestBody ChangePassword change) {
		User byUsername = userRepo.findByUsername(change.getUsername());
		String encodedString = encoder.encode(change.getPassword());
		byUsername.setPassword(encodedString);
		return userRepo.save(byUsername);
	}
	
	@PostMapping("/deletePatientForce")
	public void deletePatientForce(@RequestBody provideMedicines med) {
		promedRepo.delete(med);
	}
}



















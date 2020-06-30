package com.demo.Controller;

import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.demo.Entities.AgricultureTable1;
import com.demo.Entities.OtpGen;
import com.demo.Entities.Education.Education_institution_district;
import com.demo.Entities.Education.Education_institution_year;
import com.demo.Entities.Education.Education_polytechnic_admissions_district;
import com.demo.Entities.Education.Education_polytechnic_admissions_year;
import com.demo.Entities.Education.Education_polytechnic_district;
import com.demo.Entities.Education.Education_polytechnic_year;
import com.demo.Entities.Education.Education_pupil_teacher_ratio_district;
import com.demo.Entities.Education.Education_pupil_teacher_ratio_year;
import com.demo.Entities.Education.Education_students_district;
import com.demo.Entities.Education.Education_students_year;
import com.demo.Entities.NSS.Nss;
import com.demo.Entities.Police.pc_police_stations_registered_crimes_year;
import com.demo.Entities.Registration.User;
import com.demo.Entities.Tac.Transport;
import com.demo.Entities.cpi.District_cpi;
import com.demo.FileService.SpringFileService;
import com.demo.FileService.SpringPoliceService;
import com.demo.FileService.SpringTransService;
import com.demo.FileService.SpringcpiService;
import com.demo.FileService.SpringnssService;
import com.demo.Repositories.AgricultureTable1Repo;
import com.demo.Repositories.OtpRepo;
import com.demo.Repositories.UserRepo;
import com.demo.Repositories.Education.Edu_Ins_Dis_Repo;
import com.demo.Repositories.Education.Edu_Ins_Year_Repo;
import com.demo.Repositories.Education.Edu_Poly_Adm_Dis_Repo;
import com.demo.Repositories.Education.Edu_Poly_Adm_Year_Repo;
import com.demo.Repositories.Education.Edu_Poly_Dis_Repo;
import com.demo.Repositories.Education.Edu_Poly_Year_Repo;
import com.demo.Repositories.Education.Edu_Pupil_Teacher_Ratio_Dis_Repo;
import com.demo.Repositories.Education.Edu_Pupil_Teacher_Ratio_Year_Repo;
import com.demo.Repositories.Education.Edu_Students_Dis_Repo;
import com.demo.Repositories.Education.Edu_Students_Year_Repo;
import com.demo.Repositories.NSS.NssRepo;
import com.demo.Repositories.Police.PoliceRepo;
import com.demo.Repositories.Tac.TransportRepo;
import com.demo.Repositories.cpi.CpiRepo;
import com.demo.Utilities.AfterOtpMail;
import com.demo.Utilities.MailItenary;

@Controller
public class HomeController {
	
	@Autowired
	AgricultureTable1Repo agriRepo;
	
	@Value("${com.Ajay.HospitalAutomation.Directory}")
	private String ITINARY_DIR;
	
	@Autowired
	Edu_Ins_Year_Repo eduYearRepo;
	
	@Autowired
	Edu_Ins_Dis_Repo eduDisRepo;
	
	@Autowired
	UserRepo userRepo;
	
	@Autowired
	Edu_Poly_Adm_Dis_Repo edu_dis_adm_poly;
	
	@Autowired
	Edu_Poly_Adm_Year_Repo edu_year_adm_poly;

	@Autowired
	Edu_Poly_Dis_Repo edu_dis_poly;
	
	@Autowired
	Edu_Poly_Year_Repo edu_year_poly;
	
	@Autowired
	Edu_Pupil_Teacher_Ratio_Dis_Repo edu_ptr_dis;
	
	@Autowired
	Edu_Pupil_Teacher_Ratio_Year_Repo edu_ptr_year;
	
	@Autowired
	Edu_Students_Dis_Repo edu_stu_dis;
	
	@Autowired
	Edu_Students_Year_Repo edu_stu_year;
	
	@Autowired
	PoliceRepo dpsRepo;
	
	@Autowired
	MailItenary emailUtil;
	
	@Autowired
	OtpRepo otpRepo;
	
	@Autowired
	AfterOtpMail afterotp;
	
	@Autowired
	SpringFileService fileService;
	
	@Autowired
	SpringPoliceService sprfileservice;
	
	@Autowired
	CpiRepo cpiRepo;
	
	@Autowired
	SpringcpiService cpiSer;
	
	@Autowired
	TransportRepo transRepo;
	
	@Autowired
	SpringTransService transService;
	
	@Autowired
	NssRepo nssR;
	
	@Autowired
	SpringnssService nssService;
	
	
//	BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();

	@RequestMapping("/")
	public String home() {
		return "homePage.jsp";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "admindep.jsp";
	}
	
	@RequestMapping(value= "/agritable1", method = RequestMethod.POST)
	public String agriTable1(AgricultureTable1 agri) {
		agriRepo.save(agri);
		return "postLogin.jsp";
	}
	
	@RequestMapping(value="/institution_year", method = RequestMethod.POST)
	public String institution_year(Education_institution_year edu) {
		edu.setLoc_category(2);
		edu.setLoc_id(2);
		eduYearRepo.save(edu);
		return "education.jsp";
	}
	
	@RequestMapping(value="/institution_district", method = RequestMethod.POST)
	public String institution_year(Education_institution_district edu) {
		
		
		
		Education_institution_district institution_district = eduDisRepo.findByDistrict(edu.getDistrict());
		
		if(institution_district!=null) {
			
		
		institution_district.setApprove(0);
		institution_district.setDeemed_Universities(edu.getDeemed_Universities());
		institution_district.setDegree(edu.getDeemed_Universities());
		institution_district.setIit(edu.getIit());
		institution_district.setJunior_Basic_Schools(edu.getJunior_Basic_Schools());
		institution_district.setSenior_Secondary(edu.getSenior_Secondary());
		institution_district.setUniversities(edu.getUniversities());
		institution_district.setYear(edu.getYear());
		institution_district.setLoc_category(2);
		institution_district.setLoc_id(2);
		eduDisRepo.save(institution_district);

		}
		else {
			eduDisRepo.save(edu);
		}
		return "education.jsp";
	}
	
	@RequestMapping(value="/polytechnic_district", method = RequestMethod.POST)
	public String polytechnic_district(Education_polytechnic_district edu) {
		edu.setLoc_category(2);
		edu.setLoc_id(2);
		edu_dis_poly.save(edu);
		return "education.jsp";
	}
	
	@RequestMapping(value="/polytechnic_year", method = RequestMethod.POST)
	public String polytechnic_year(Education_polytechnic_year edu) {
		edu.setLoc_category(2);
		edu.setLoc_id(2);
		edu_year_poly.save(edu);
		return "education.jsp";
	}
	
	@RequestMapping(value="/polytechniciti_admissions_district", method = RequestMethod.POST)
	public String polytechniciti_admissions_district(Education_polytechnic_admissions_district edu) {
		edu.setLoc_category(2);
		edu.setLoc_id(2);
		edu_dis_adm_poly.save(edu);
		return "education.jsp";
	}
	
	@RequestMapping(value="/polytechniciti_admissions_year", method = RequestMethod.POST)
	public String polytechniciti_admissions_year(Education_polytechnic_admissions_year edu) {
		edu.setLoc_category(2);
		edu.setLoc_id(2);
		edu_year_adm_poly.save(edu);
		return "education.jsp";
	}
	
	@RequestMapping(value="/pupil_teacher_ratio_district", method = RequestMethod.POST)
	public String pupil_teacher_ratio_district(Education_pupil_teacher_ratio_district edu) {
		edu.setLoc_category(2);
		edu.setLoc_id(2);
		edu_ptr_dis.save(edu);
		return "education.jsp";
	}
	
	@RequestMapping(value="/pupil_teacher_ratio_year", method = RequestMethod.POST)
	public String pupil_teacher_ratio_year(Education_pupil_teacher_ratio_year edu) {
		edu.setLoc_category(2);
		edu.setLoc_id(2);
		edu_ptr_year.save(edu);
		return "education.jsp";
	}
	
	@RequestMapping(value="/students_district", method = RequestMethod.POST)
	public String students_district(Education_students_district edu) {
		edu.setLoc_category(2);
		edu.setLoc_id(2);
		edu_stu_dis.save(edu);
		return "education.jsp";
	}
	
	@RequestMapping(value="/students_year", method = RequestMethod.POST)
	public String students_year(Education_students_year edu) {
		edu.setLoc_category(2);
		edu.setLoc_id(2);
		edu_stu_year.save(edu);
		return "education.jsp";
	}
	
	@GetMapping("/displaypoliceGraph1")
	public String barGraph2(Model model)
	{
		Map<String,Double> ruralMap=new LinkedHashMap<>();
		Map<String,Double> urbanMap=new LinkedHashMap<>();
		Map<String,Double> totalMap=new LinkedHashMap<>();		
		List<pc_police_stations_registered_crimes_year> list = dpsRepo.findAll();
		for (pc_police_stations_registered_crimes_year d : list) {
			if(d.getApprove()==0)
				continue;
			ruralMap.put("'"+d.getYear().toUpperCase()+"'", d.getPolicestations_rural());
			urbanMap.put("'"+d.getYear().toUpperCase()+"'", d.getPolicestations_urban());
			totalMap.put("'"+d.getYear().toUpperCase()+"'", d.getPolicestations_total());
		}
		
		model.addAttribute("ruralMap", ruralMap);
		model.addAttribute("urbanMap", urbanMap);
		model.addAttribute("totalMap", totalMap);
		return "policeGraph1.jsp";
	}
	@GetMapping("/displayeducationGraph1")
	public String educationDept(Model model)
	{
		Map<String,Double> data=new LinkedHashMap<>();
		List<Education_institution_district> list = eduDisRepo.findAll();
		for (Education_institution_district d : list) 
		{if(d.getDistrict().equalsIgnoreCase("uttrakhand") || d.getDistrict().equalsIgnoreCase("Garhwal Mandal") || d.getDistrict().equalsIgnoreCase("Kumaun Mandal"))
			continue;
		if(d.getApprove()==1) {
			data.put("'"+d.getDistrict().toUpperCase()+"'", d.getDegree());

		}		
		}
		model.addAttribute("data", data);
		return "educationGraph1.jsp";
	}
	@GetMapping("/displayeducationGraph1.1")
	public String educationDept1_1(Model model)
	{
		Map<String,Double> data=new LinkedHashMap<>();
		List<Education_institution_district> list = eduDisRepo.findAll();
		for (Education_institution_district d : list) 
		{
		if(d.getApprove()==1)
		{
			if( d.getDistrict().equalsIgnoreCase("Garhwal Mandal") || d.getDistrict().equalsIgnoreCase("Kumaun Mandal"))
			{
			data.put("'"+d.getDistrict().toUpperCase()+"'", d.getDegree());
			}		
		}
		}
		model.addAttribute("data", data);
		return "educationGraph1.1.jsp";
	}
	@GetMapping("/displayeducationGraph2")
	public String educationDept2(Model model)
	{
		Map<String,Integer> dataJuniorSchoolMap=new LinkedHashMap<>();
		Map<String,Integer> dataSeniorSchoolMap=new LinkedHashMap<>();
		Map<String,Integer> dataSecondarySchoolMap=new LinkedHashMap<>();
		Map<String,Integer> dataUniversitiesMap=new LinkedHashMap<>();
		
		
		List<Education_students_year> list = edu_stu_year.findAll();
		for (Education_students_year d : list) 
		{
		dataJuniorSchoolMap.put("'"+d.getYear()+"'",d.getJunior_Basic_Schools());
		dataSecondarySchoolMap.put("'"+d.getYear()+"'",d.getSenior_Secondary());
		dataSeniorSchoolMap.put("'"+d.getYear()+"'",d.getSenior_Basic_Schools());
		dataUniversitiesMap.put("'"+d.getYear()+"'",d.getDegree_Universities());
//		System.out.println(d.getJunior_Basic_Schools());
		}
		model.addAttribute("dataJuniorSchool",dataJuniorSchoolMap);
		model.addAttribute("dataSeniorSchool",dataSeniorSchoolMap );
		model.addAttribute("dataSecondarySchool",dataSecondarySchoolMap);
		model.addAttribute("dataUniversities",dataUniversitiesMap );
		
		return "educationGraph2.jsp";
	}
	
	@GetMapping("/displayTransportGraph1")
	public String TransportDept1(Model model)
	{
		Map<String,Double> dataHeavyVehicle=new LinkedHashMap<>();
		Map<String,Double> dataDeliveryVan=new LinkedHashMap<>();
		Map<String,Double> dataBuses=new LinkedHashMap<>();
		Map<String,Double> dataMaxiCab=new LinkedHashMap<>();
		Map<String,Double> dataThreeWheelers=new LinkedHashMap<>();
		Map<String,Double> dataTwoWheelers=new LinkedHashMap<>();
		Map<String,Double> dataFourWheelers=new LinkedHashMap<>();
		Map<String,Double> dataOthers=new LinkedHashMap<>();
		Map<String,Double> dataTotal=new LinkedHashMap<>();
		List<Transport> list = transRepo.findAll();
		for (Transport d : list) 
		{
			if(d.getApprove()==0)
				continue;
		dataHeavyVehicle.put("'"+d.getYear()+"'",d.getHeavy_vehicles());
		dataDeliveryVan.put("'"+d.getYear()+"'",d.getDeliver_recovery_van());
		dataBuses.put("'"+d.getYear()+"'",d.getBuses());
		dataMaxiCab.put("'"+d.getYear()+"'",d.getMaxi_taxi_cab());
		dataThreeWheelers.put("'"+d.getYear()+"'",d.getThree_wheelers());
		dataTwoWheelers.put("'"+d.getYear()+"'",d.getTwo_wheelers());
		dataFourWheelers.put("'"+d.getYear()+"'",d.getFour_wheelers());
		dataOthers.put("'"+d.getYear()+"'",d.getOthers());
		dataTotal.put("'"+d.getYear()+"'",d.getTotal());
		
//		System.out.println(d.getJunior_Basic_Schools());
		}
		model.addAttribute("dataHeavyVehicle",dataHeavyVehicle);
		model.addAttribute("dataDeliveryVan",dataDeliveryVan);
		model.addAttribute("dataBuses",dataBuses);
		model.addAttribute("dataMaxiCab",dataMaxiCab);
		model.addAttribute("dataThreeWheelers",dataThreeWheelers);
		model.addAttribute("dataTwoWheelers",dataTwoWheelers);
		model.addAttribute("dataFourWheelers",dataFourWheelers);
		model.addAttribute("dataOthers",dataOthers);
		model.addAttribute("dataTotal",dataTotal);
		
		return "transportGraph1.jsp";
	}
	@GetMapping("/displaycpiGraph1")
	public String cpiDept1(Model model)
	{	//Date date=new Date();
		Map<String,Double> data=new LinkedHashMap<>();
		List<District_cpi> list = cpiRepo.findAll();
		for (District_cpi d : list) 
		{
		
		if(d.getDistrict().equalsIgnoreCase("uttrakhand") || d.getDistrict().equalsIgnoreCase("Garhwal Mandal") || d.getDistrict().equalsIgnoreCase("Kumaun Mandal"))
		 continue;
//		if(d.getApprove()==1&&d.getYear().substring(0, 4).equals(Integer.toString(1900+date.getYear()))  )
		if(d.getApprove()==1)
		{
			data.put("'"+d.getDistrict().toUpperCase()+"'",  d.getInd());

		}		
		}
		model.addAttribute("data", data);
		
		//System.out.println(1900+date.getYear());
		return "cpiGraph1.jsp";
	}
	@GetMapping("/displayNationalGraph1")
	public String nssDept(Model model)
	{
		Map<String,Double> data=new LinkedHashMap<>();
		List<Nss> list = nssR.findAll();
		for (Nss d : list) 
		{if(d.getApprove()==0||d.getDistrict().equalsIgnoreCase("uttarakhand") || d.getDistrict().equalsIgnoreCase("Garhwal Mandal") || d.getDistrict().equalsIgnoreCase("Kumaun Mandal"))
			continue;
		{
			data.put("'"+d.getDistrict().toUpperCase()+"'", d.getNet_deposit());
				
		}}
		model.addAttribute("data", data);
		return "nssGraph1.jsp";
	}
	
	@RequestMapping("/secondPage")
	public String secondPage() {
		return "secondPage.jsp";
	}
	
	@RequestMapping("/departmentEducation")
	public String departmentEducation() {
		return "departmentEducation.jsp";
	}
	
	@RequestMapping("/departmentPoliceCrime")
	public String departmentPoliceCrime() {
		return "departmentPoliceCrime.jsp";
	}
	@RequestMapping("/departmentTransport")
	public String departmentTransport() {
		return "departmentTransport.jsp";
	}
	@RequestMapping("/departmentConsumer")
	public String departmentcpi() {
		return "departmentcpi.jsp";
	}
	@RequestMapping("/departmentNational")
	public String departmentnational() {
		return "departmentNational.jsp";
	}
	
	@RequestMapping("/openlogin")
	public String openlogin() {
		return "login.jsp";
	}
	
	@RequestMapping("/plregister")
	public String plregister() {
		return "register.jsp";
	}
	
	@RequestMapping("/performregisterationstep1")
	public ModelAndView performregisterationstep1(User user) {
		
		User byEmail = userRepo.findByEmail(user.getEmail());
		ModelAndView m = new ModelAndView("register.jsp");
		
		if(byEmail==null) {
			
		
		ModelAndView model = new ModelAndView("otppage.jsp");
		String[] split = user.getLoc_id().split(",");
		if(user.getLoc_category().equals("Nagar_Nigam")) {
			user.setLoc_id(split[0]);
		}
		else if(user.getLoc_category().equals("Nagar_Palika_Parishad")) {
			user.setLoc_id(split[1]);
		}
		else {
			user.setLoc_id(split[2]);
		}
		user.setLoc_category(user.getLoc_category().toUpperCase());
		user.setLoc_id(user.getLoc_id().toUpperCase());
		System.out.println(user);
		
try {
			
			String numbers= "0123456789";
			String opt="";
			int oa=0;
			
	
//			       opt+=Math.floor(Math.random()*10);
				   oa = (int)((Math.random() * 9000000)+1000000);
			    
			  opt= Integer.toString(oa);
			
			OtpGen otp = new OtpGen();
//			otp.setOtp(registerUser.getOtp());
			otp.setOtp(opt);
		    otp.setEmail(user.getEmail());
		    otp.setLoc_category(user.getLoc_category());
		    otp.setLoc_id(user.getLoc_id());
		    otp.setName(user.getName());
		    otp.setPassword(user.getPassword());
			
			if(userRepo.findByEmail(user.getEmail())==null) {
//				String encodedString = encoder.encode(registerUser.getPassword());
//				registerUser.setPassword(encodedString);
//				registerUser.setName(registerUser.getName().toLowerCase());
				
//				User user= new User();
//				user.setName(registerUser.getName());
//				user.setPassword(registerUser.getPassword());
//				user.setUsername(registerUser.getUsername());

				String filepath = ITINARY_DIR + user.getEmail() + ".pdf";
				String email= user.getEmail();
				emailUtil.SendItinary(email, filepath, opt);
//				userRepo.save(user);
				otpRepo.save(otp);
				model.addObject("otp", otp);
				return model;
			}
			
		} catch (NullPointerException e) {
			System.out.println(e.getMessage());
			return model;
		}
return model;
		}
		else {
			return m;
		}
	}
	
	@RequestMapping("/adminverify")
	public String adminverify(User user) {
		if(user.getEmail().equals("admin@gmail.com") && user.getPassword().equals("upes123")) {
			return "admincover.jsp";
		}
		return "SampleLoginForAdmin.jsp";
	}
	
	@RequestMapping("/adminlogin")
	public String adminlogin(){
		return "SampleLoginForAdmin.jsp";
	}
	
	
	@RequestMapping("/otpverified")
	public String otpverified(OtpGen otpgen) {
		
		if(otpRepo.findByOtp(otpgen.getOtp())!=null) {
			OtpGen otp = otpRepo.findByOtp(otpgen.getOtp());
			User user = new User();
			user.setEmail(otp.getEmail());
			user.setLoc_category(otp.getLoc_category());
			user.setLoc_id(otp.getLoc_id());
			user.setName(otp.getName());
			user.setPassword(otp.getPassword());
			user.setApprove(0);
			
			String filepath = ITINARY_DIR + user.getEmail() + ".pdf";
			String email= user.getEmail();
			afterotp.SendItinary(email, filepath, "Request Sent For Approval", "Thank You for applying. We will notify you once your request will be approved");
			
			user.setRole("USER");
			
			userRepo.save(user);
			otpRepo.delete(otp);
			return "login.jsp";
		}
		return "otppage.jsp";
	}
	
	@RequestMapping("/deleteaftertime")
	public void deleteaftertime(OtpGen otpgen) {
		OtpGen otp = otpRepo.findByOtp(otpgen.getOtp());
		if(otp!=null) {
			otpRepo.delete(otp);
		}
	}
	
	@RequestMapping(value= "/logindone", method = RequestMethod.POST)
	public String logindone(User user) {
		User email = userRepo.findByEmail(user.getEmail());
		if(email!=null && email.getPassword().equals(user.getPassword()) && email.getApprove()==1) {
			return "admindep.jsp";
		}
		return "login.jsp";
	}
	
	@RequestMapping("/admin")
	public String admin() {
		return "admincover.jsp";
	}
	
	@RequestMapping("/userapp")
	public ModelAndView userapp() {
		
		ModelAndView model = new ModelAndView("approveuser.jsp");
		List<User> all = userRepo.findAll();
		List<User> list = new ArrayList<>();
		for(User user : all) {
			if(user.getApprove()==0) {
				list.add(user);
			}
		}
		model.addObject("list", list);
		return model;
	}
	
	@RequestMapping("/app/{id}")
	public String app(@PathVariable("id") Long id, RedirectAttributes red) {
//		System.out.println(id);
		User user = userRepo.findById(id).get();
        user.setApprove(1);
        
        String filepath = ITINARY_DIR + user.getEmail() + ".pdf";
		String email= user.getEmail();
		afterotp.SendItinary(email, filepath,"Login Request Approved", "Your login request has been approved.");
        
        userRepo.save(user);
		return "redirect:/userapp";
	}
	
	@RequestMapping("/dec/{id}")
	public String dec(@PathVariable("id") Long id, RedirectAttributes red) {
		User user = userRepo.findById(id).get();
		if(user!=null) {
			userRepo.delete(user);
			String filepath = ITINARY_DIR + user.getEmail() + ".pdf";
		    String email= user.getEmail();
			afterotp.SendItinary(email, filepath,"Login Request Declined", "Your login request has been declined. Kindly register again");
		}
		return "redirect:/userapp";
	}
	
	@RequestMapping("/entryapp")
	public ModelAndView entryapp()
		{
			ModelAndView model = new ModelAndView("approveEducation1.jsp");
			List<Education_institution_district> allDistricts=eduDisRepo.findAll();
			List<Education_institution_district> listeduDisList = new ArrayList<>();
			for(Education_institution_district eid:allDistricts )
			{
				if(eid.getApprove()==0)
				{
					listeduDisList.add(eid);
				}
			}
			model.addObject("list", listeduDisList);
			return model;
			
		}
	
	@RequestMapping("/edu1Approved")
	public String approval(RedirectAttributes red) {
//		System.out.println(id);
		List<Education_institution_district> findAll = eduDisRepo.findAll();
		for(Education_institution_district eid:findAll )
		{
			if(eid.getApprove()==0)
			{
				eid.setApprove(1);
				eduDisRepo.save(eid);
			}
		}
		
		return "redirect:/entryapp";
	}
	
	@RequestMapping("/pre/{id}")
	public ModelAndView pre(@PathVariable("id") int id, RedirectAttributes red) {
		ModelAndView model = new ModelAndView("/sampleform.jsp");
		Education_institution_district institution_district = eduDisRepo.findById((long) id).get();
		institution_district.setLoc_category(2);
		institution_district.setLoc_id(2);
		model.addObject("value", institution_district);
		return model;
	}
	
	@RequestMapping(value= "/postsampleForm", method = RequestMethod.POST)
    public String postsampleForm(Education_institution_district edudis, RedirectAttributes redirect) {
//		System.out.println(edudis.getId());
		Education_institution_district institution_district = eduDisRepo.findById(edudis.getId()).get();
		System.out.println(edudis.getDistrict());
		institution_district.setIit(edudis.getIit());
		institution_district.setDeemed_Universities(edudis.getDeemed_Universities());
		institution_district.setDegree(edudis.getDegree());
		institution_district.setDistrict(edudis.getDistrict());
		institution_district.setJunior_Basic_Schools(edudis.getJunior_Basic_Schools());
		institution_district.setSenior_Secondary(edudis.getSenior_Secondary());
		institution_district.setUniversities(edudis.getUniversities());
		institution_district.setYear(edudis.getYear());
		if(institution_district!=null) {
			eduDisRepo.save(institution_district);
		}
		
		return "redirect:/entryapp";
	
	}
	
	@RequestMapping("redirect")
	public String redirect() {
		return "secondPage.jsp";
		}
	
	@RequestMapping("red")
	public String red() {
		return "admindep.jsp";
		}
	
	@RequestMapping("/adcover")
	public String adcover() {
		return "admincover.jsp";
	}
	
	@RequestMapping("/fpass")
	public String fpass() {
		return "fpass.jsp";
	}
	
	@RequestMapping("/passreset")
	public String passreset(User user) {
		
		User user2 = userRepo.findByEmail(user.getEmail());
		
		if(user2!=null) {
			
			final String chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

			SecureRandom random = new SecureRandom();
			StringBuilder sb = new StringBuilder();

			// each iteration of loop choose a character randomly from the given ASCII range
			// and append it to StringBuilder instance

			for (int i = 0; i < 10; i++) {
				int randomIndex = random.nextInt(chars.length());
				sb.append(chars.charAt(randomIndex));
			}
			
			String str = sb.toString();
			user2.setPassword(str);
			String filepath = ITINARY_DIR + user.getEmail() + ".pdf";
		    String email= user.getEmail();
		    String text= "Your new password is:"+str;
			afterotp.SendItinary(email, filepath,"Password Reset", text);
			userRepo.save(user2);
			return "login.jsp";
		}
		else {
			String filepath = ITINARY_DIR + user.getEmail() + ".pdf";
		    String email= user.getEmail();
			afterotp.SendItinary(email, filepath,"Password Reset Failed", "You are not registered with us. Kindly Register");
			userRepo.save(user2);
			return "fpass.jsp";
		}
	}
	
	@RequestMapping(value="/uploadFile", method = RequestMethod.POST)
	public String uploadFile(Education_institution_district edu, RedirectAttributes redirect) {

		boolean isFlag= fileService.saveDataFromFile(edu.getFile());
		if(isFlag) {
			redirect.addFlashAttribute("success", "File Uploaded Successfully");
		}
		else {
			redirect.addFlashAttribute("error", "There is some error in file upload. Kindly try again!!!");
		}
		return "education.jsp";
	}
	
	@RequestMapping("/education")
	public String education() {
		return "education.jsp";
	}
	
	@RequestMapping("/police")
	public String police() {
		return "policeCover.jsp";
	}
	
	@RequestMapping(value="/police_year", method = RequestMethod.POST)
	public String police_year(pc_police_stations_registered_crimes_year policeCrimes) {
		
		pc_police_stations_registered_crimes_year byYear = dpsRepo.findByYear(policeCrimes.getYear());
		
		if(byYear!=null) {
			byYear.setApprove(0);
			byYear.setHarrassment_of_sc_st(policeCrimes.getHarrassment_of_sc_st());
			byYear.setKidnapping(policeCrimes.getKidnapping());
			byYear.setMurder(policeCrimes.getMurder());
			byYear.setOther_crimes(policeCrimes.getOther_crimes());
			byYear.setPolicestations_rural(policeCrimes.getPolicestations_rural());
			byYear.setPolicestations_urban(policeCrimes.getPolicestations_urban());
			byYear.setRiots(policeCrimes.getRiots());
			byYear.setRobbery(policeCrimes.getRobbery());
			byYear.setLoc_category(2);
			byYear.setLoc_id(2);
			byYear.setTheft(policeCrimes.getTheft());
			dpsRepo.save(byYear);
		}
		else {
			policeCrimes.setLoc_category(2);
			policeCrimes.setLoc_id(2);
			dpsRepo.save(policeCrimes);
		}
		return "policeCover.jsp";
	}
	
	@RequestMapping(value="/policefile", method= RequestMethod.POST)
	public String policefile(pc_police_stations_registered_crimes_year pc, RedirectAttributes redirect) {
		boolean isFlag= sprfileservice.saveDataFromFile(pc.getFile());
		
			if(isFlag) {
				redirect.addFlashAttribute("success", "File Uploaded Successfully");
			}
			else {
				redirect.addFlashAttribute("error", "There is some error in file upload. Kindly try again!!!");
			}
			return "policeCover.jsp";
		}
	
	@RequestMapping("/initials")
	public String initials() {
		return "initial.jsp";
	}
	
	@RequestMapping(value= "/sendData", method= RequestMethod.POST)
	public String sendData(AgricultureTable1 agri, RedirectAttributes redirect) {
		if(agri.getYear().equals("Education")) {
			return "redirect:/entryapp";
		}
		else if(agri.getYear().equals("Police")) {
			return "redirect:/entryappPolice";
		}
		else if(agri.getYear().equals("Transport")) {
			return "redirect:/transportapp";
		}
		else if(agri.getYear().equals("Consumer")) {
			return "redirect:/consumerapp";
		}
		else if(agri.getYear().equals("nss")) {
			return "redirect:/nssapp";
		}
		return null;
	}
	
	@RequestMapping("/consumerapp")
	public ModelAndView consumerapp() {
		ModelAndView model = new ModelAndView("approveConsumer.jsp");
		List<District_cpi> all = cpiRepo.findAll();
		List<District_cpi> samplelist = new ArrayList<>();
		for(District_cpi cpi: all) {
			if(cpi.getApprove()==0) {
				samplelist.add(cpi);
			}
		}
		model.addObject("list", samplelist);
		return model;
	}
	
	@RequestMapping("/entryappPolice")
	public ModelAndView entryappPolice()
		{
			ModelAndView model = new ModelAndView("approvePolice.jsp");
			List<pc_police_stations_registered_crimes_year> allPoliceDistricts=dpsRepo.findAll();
			List<pc_police_stations_registered_crimes_year> listedPoliceDisList = new ArrayList<>();
			for(pc_police_stations_registered_crimes_year pid:allPoliceDistricts )
			{
				if(pid.getApprove()==0)
				{
					listedPoliceDisList.add(pid);
				}
			}
			model.addObject("list", listedPoliceDisList);
			return model;
		}
	
	
	@RequestMapping("/previewPolice1/{id}")
	public ModelAndView previewPolice1(@PathVariable("id") int id, RedirectAttributes red) {
		ModelAndView model = new ModelAndView("/policeApprovalForm.jsp");
		pc_police_stations_registered_crimes_year police_year = dpsRepo.findById((long) id).get();
		police_year.setLoc_category(2);
		police_year.setLoc_id(2);
		model.addObject("value", police_year);
		return model;
	}
	
	@RequestMapping(value= "/postPoliceForm", method = RequestMethod.POST)
    public String postPoliceForm(pc_police_stations_registered_crimes_year police, RedirectAttributes redirect) {
//		System.out.println(edudis.getId());
		pc_police_stations_registered_crimes_year police_year = dpsRepo.findById(police.getId()).get();
		//System.out.println(edudis.getDistrict());
		if(police_year!=null)
		{
		//police_year.setApprove(1);
		police_year.setLoc_category(2);
		police_year.setLoc_id(2);
		police_year.setHarrassment_of_sc_st(police.getHarrassment_of_sc_st());
		police_year.setKidnapping(police.getKidnapping());
		police_year.setMurder(police.getMurder());
		police_year.setOther_crimes(police.getOther_crimes());
		police_year.setPolicestations_rural(police.getPolicestations_rural());
		police_year.setPolicestations_total(police.getPolicestations_total());
		police_year.setPolicestations_urban(police.getPolicestations_urban());
		police_year.setTheft(police.getTheft());
		police_year.setRobbery(police.getRobbery());
		police_year.setYear(police.getYear());
		
			dpsRepo.save(police_year);
		}
		else
		{
			dpsRepo.save(police);
		}
		
		return "redirect:/entryappPolice";
	
	}
	
	
	@RequestMapping("/policeApproved")
	public String policeapproval(RedirectAttributes red) {
//		System.out.println(id);
		List<pc_police_stations_registered_crimes_year> findAll = dpsRepo.findAll();
		for(pc_police_stations_registered_crimes_year eid:findAll )
		{
			if(eid.getApprove()==0)
			{
				eid.setApprove(1);
				dpsRepo.save(eid);
			}
		}
		
		return "redirect:/entryappPolice";
	}
	
	@RequestMapping("/cpiact")
	public String cpiact() {
		return "Consumer.jsp";
	}
	
	
	@RequestMapping(value= "/cpivalues", method=RequestMethod.POST)
	public String cpivalues(District_cpi cpi) {
		District_cpi byDistrict = cpiRepo.findByDistrict(cpi.getDistrict());
		if(byDistrict!=null) {
			byDistrict.setLoc_category(2);
			byDistrict.setLoc_id(2);
			byDistrict.setYear(cpi.getYear());
			byDistrict.setInd(cpi.getInd());
			byDistrict.setApprove(0);
			cpiRepo.save(byDistrict);
		}
		else {
			System.out.println(cpi);
			cpi.setLoc_category(2);
			cpi.setLoc_id(2);
			cpi.setApprove(0);
			cpiRepo.save(cpi);
		}
		return "Consumer.jsp";
	}
	
	
	@RequestMapping(value= "/uploadcpi", method=RequestMethod.POST)
	public String uploadcpi(District_cpi cpi, RedirectAttributes redirect) {
	
		boolean isFlag= cpiSer.saveDataFromFile(cpi.getFile());
		if(isFlag) {
			redirect.addFlashAttribute("success", "File Uploaded Successfully");
		}
		else {
			redirect.addFlashAttribute("error", "There is some error in file upload. Kindly try again!!!");
		}
		return "Consumer.jsp";
		
	}
	
	@RequestMapping("/tac")
	public String tac() {
		return "TransportComm.jsp";
	}
	
	@RequestMapping(value= "/transvalues", method=RequestMethod.POST)
	public String transvalues(Transport trans) {
		Transport byYear = transRepo.findByYear(trans.getYear());
		if(byYear!=null) {
			byYear.setLoc_category(2);
			byYear.setLoc_id(2);
			byYear.setApprove(0);
			byYear.setBuses(trans.getBuses());
			byYear.setDeliver_recovery_van(trans.getDeliver_recovery_van());
			byYear.setFour_wheelers(trans.getFour_wheelers());
			byYear.setHeavy_vehicles(trans.getHeavy_vehicles());
			byYear.setMaxi_taxi_cab(trans.getMaxi_taxi_cab());
			byYear.setOthers(trans.getOthers());
			byYear.setThree_wheelers(trans.getThree_wheelers());
			double total = trans.getHeavy_vehicles()+trans.getDeliver_recovery_van()+trans.getBuses()+trans.getMaxi_taxi_cab()+trans.getThree_wheelers()+trans.getFour_wheelers()+trans.getTwo_wheelers()+trans.getOthers();
			byYear.setTotal(total);
			byYear.setTwo_wheelers(trans.getTwo_wheelers());
			transRepo.save(byYear);
		}
		else {
			trans.setLoc_category(2);
			trans.setLoc_id(2);
			trans.setApprove(0);
			double total = trans.getHeavy_vehicles()+trans.getDeliver_recovery_van()+trans.getBuses()+trans.getMaxi_taxi_cab()+trans.getThree_wheelers()+trans.getFour_wheelers()+trans.getTwo_wheelers()+trans.getOthers();
			trans.setTotal(total);
			transRepo.save(trans);
		}
		return "TransportComm.jsp";
	}
	
	@RequestMapping(value= "/uploadtrans", method= RequestMethod.POST)
	public String uploadtrans(Transport tran, RedirectAttributes redirect) {
		System.out.println("Hi");
		boolean isFlag= transService.saveDataFromFile(tran.getFile());
		if(isFlag) {
			redirect.addFlashAttribute("success", "File Uploaded Successfully");
		}
		else {
			redirect.addFlashAttribute("error", "There is some error in file upload. Kindly try again!!!");
		}
		return "TransportComm.jsp";
	}
	
	
	@RequestMapping("/transportapp")
	public ModelAndView transportapp()
	{
		ModelAndView model = new ModelAndView("approveTransport.jsp");
		List<Transport> all = transRepo.findAll();
		List<Transport> arrList = new ArrayList<>();
		for(Transport t : all) {
			if(t.getApprove()==0) {
				arrList.add(t);
			}
		}
		model.addObject("list", arrList);
		return model;
	}
	
	
	@RequestMapping("/previewtransport/{id}")
	public ModelAndView previewTransport(@PathVariable("id") int id, RedirectAttributes red) {
		ModelAndView model = new ModelAndView("/sampleTransport.jsp");
		Transport transport = transRepo.findById((long) id).get();
		transport.setLoc_category(2);
		transport.setLoc_id(2);
		model.addObject("value", transport);
		return model;
	}
	
	
	@RequestMapping(value= "/posttransport", method= RequestMethod.POST)
	public String posttransport(Transport trans, RedirectAttributes redirect) {
		
		Transport transport = transRepo.findByYear(trans.getYear());
		
		if(transport!=null) {
			transport.setLoc_category(2);
			transport.setLoc_id(2);
			transport.setApprove(0);
			transport.setBuses(trans.getBuses());
			transport.setDeliver_recovery_van(trans.getDeliver_recovery_van());
			transport.setFour_wheelers(trans.getFour_wheelers());
			transport.setHeavy_vehicles(trans.getHeavy_vehicles());
			transport.setMaxi_taxi_cab(trans.getMaxi_taxi_cab());
			transport.setOthers(trans.getOthers());
			transport.setThree_wheelers(trans.getThree_wheelers());
			transport.setTotal(trans.getBuses()+trans.getDeliver_recovery_van()+trans.getFour_wheelers()+trans.getHeavy_vehicles()+trans.getMaxi_taxi_cab()+trans.getOthers()+trans.getThree_wheelers()+trans.getTwo_wheelers());
			transport.setTwo_wheelers(trans.getTwo_wheelers());
			transport.setYear(trans.getYear());
			transRepo.save(transport);
		}
		else {
			trans.setTotal(trans.getBuses()+trans.getDeliver_recovery_van()+trans.getFour_wheelers()+trans.getHeavy_vehicles()+trans.getMaxi_taxi_cab()+trans.getOthers()+trans.getThree_wheelers()+trans.getTwo_wheelers());
			transRepo.save(trans);
		}
		return "redirect:/transportapp";
	}
	
	@RequestMapping("/transportapproved")
	public String transportapproved(RedirectAttributes red) {
		
		List<Transport> all = transRepo.findAll();
		for(Transport t : all) {
			if(t.getApprove()==0) {
				t.setApprove(1);
				transRepo.save(t);
			}
		}
		return "redirect:/transportapp";
	}
	
	
	@RequestMapping("/previewconsumer/{id}")
	public ModelAndView previewConsumer(@PathVariable("id") int id, RedirectAttributes red) {
		ModelAndView model = new ModelAndView("/sampleConsumerForm.jsp");
		District_cpi cpi = cpiRepo.findById((long) id).get();
		cpi.setLoc_category(2);
		cpi.setLoc_id(2);
		model.addObject("value", cpi);
		return model;
	}
	
	@RequestMapping("/postconsumer")
	public String postconsumer(District_cpi cpi, RedirectAttributes redirect) {
		District_cpi district_cpi = cpiRepo.findById(cpi.getId()).get();
		district_cpi.setDistrict(cpi.getDistrict());
		district_cpi.setInd(cpi.getInd());
		cpiRepo.save(district_cpi);
		return "redirect:/consumerapp";
	}
	
	
	@RequestMapping("/consumerapproved")
	public String consumerapproved(RedirectAttributes red) {
		
		List<District_cpi> all = cpiRepo.findAll();
		for(District_cpi d : all) {
			if(d.getApprove()==0) {
				d.setApprove(1);
				cpiRepo.save(d);
			}
		}
		return "redirect:/consumerapp";
	}
	
	@RequestMapping("/nss")
	public String nss() {
		return "nss.jsp";
	}
	
	@RequestMapping(value = "/nssvalues", method = RequestMethod.POST)
	public String nssvalues(Nss nss) {
		Nss byDistrict = nssR.findByDistrict((nss.getDistrict()));
		if(byDistrict!=null) {
			byDistrict.setLoc_category(2);
			byDistrict.setLoc_id(2);
			byDistrict.setYear(nss.getYear());
			byDistrict.setDistrict(nss.getDistrict());
			byDistrict.setNet_deposit(nss.getNet_deposit());
			byDistrict.setApprove(0);
			nssR.save(byDistrict);
		}
		else {
			nss.setLoc_category(2);
			nss.setLoc_id(2);
			nss.setApprove(0);
			nssR.save(nss);
		}
		return "nss.jsp";
	}
	
	
	@RequestMapping(value= "/uploadnss", method=RequestMethod.POST)
	public String uploadnss(Nss nss, RedirectAttributes redirect) {
	
		boolean isFlag= nssService.saveDataFromFile(nss.getFile());
		if(isFlag) {
			redirect.addFlashAttribute("success", "File Uploaded Successfully");
		}
		else {
			redirect.addFlashAttribute("error", "There is some error in file upload. Kindly try again!!!");
		}
		return "nss.jsp";
	}
	
	@RequestMapping("nssapp")
	public ModelAndView nssapp() {
		ModelAndView model = new ModelAndView("approveNss.jsp");
		List<Nss> all = nssR.findAll();
		List<Nss> sample = new ArrayList<>();
		for(Nss n : all) {
			if(n.getApprove()==0) {
				sample.add(n);
			}
		}
		model.addObject("list", sample);
		return model;
	}
	
	
	@RequestMapping("/previewnss/{id}")
	public ModelAndView previewnss(@PathVariable("id") int id, RedirectAttributes red) {
		ModelAndView model = new ModelAndView("/sampleNssForm.jsp");
		Nss cpi = nssR.findById((long) id).get();
		cpi.setLoc_category(2);
		cpi.setLoc_id(2);
		model.addObject("value", cpi);
		return model;
	}
	
	@RequestMapping("/postnss")
	public String postnss(Nss cpi, RedirectAttributes redirect) {
		Nss district_cpi = nssR.findById(cpi.getId()).get();
		district_cpi.setDistrict(cpi.getDistrict());
		district_cpi.setNet_deposit(cpi.getNet_deposit());
		nssR.save(district_cpi);
		return "redirect:/nssapp";
	}
	
	@RequestMapping("/nssapproved")
	public String nssapproved(RedirectAttributes red) {
		
		List<Nss> all = nssR.findAll();
		for(Nss d : all) {
			if(d.getApprove()==0) {
				d.setApprove(1);
				nssR.save(d);
			}
		}
		return "redirect:/nssapp";
	}
	
	@RequestMapping("/secondPage2")
	public String secondPage2() {
		return "secondPage2.jsp";
	}
	
}

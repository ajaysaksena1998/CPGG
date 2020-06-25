package com.demo.Controller;

import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

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
import com.demo.Entities.Police.pc_police_stations_registered_crimes_year;
import com.demo.Entities.Registration.User;
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
import com.demo.Repositories.Police.PoliceRepo;
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
		Map<String,Integer> ruralMap=new LinkedHashMap<>();
		Map<String,Integer> urbanMap=new LinkedHashMap<>();
		Map<String,Integer> totalMap=new LinkedHashMap<>();		
		List<pc_police_stations_registered_crimes_year> list = dpsRepo.findAll();
		for (pc_police_stations_registered_crimes_year d : list) {
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
		Map<String,Integer> data=new LinkedHashMap<>();
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
	
}

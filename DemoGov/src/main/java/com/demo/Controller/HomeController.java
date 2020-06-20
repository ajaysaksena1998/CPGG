package com.demo.Controller;

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
		edu.setLoc_category(2);
		edu.setLoc_id(2);
		eduDisRepo.save(edu);
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
		{if(d.getDistrict().equalsIgnoreCase("uttrakhand"))
			continue;
		data.put("'"+d.getDistrict().toUpperCase()+"'", d.getDegree());
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
		ModelAndView model = new ModelAndView("otppage.jsp");
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
	
//	@RequestMapping("/logindone", method = RequestMethod.POST)
//	public String logindone() {
//		return null;
//	}
	
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
        userRepo.save(user);
		return "redirect:/userapp";
	}
}

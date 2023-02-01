package kr.human.anihospital.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

	@GetMapping("/")
  public String home() {
     return "index";
  }

	@GetMapping("/signin")
	public String signin() {
		return "signin";
	}
	@GetMapping("/patientAdd")
	public String patientAdd() {
		return "patientAdd";
	}
	@GetMapping("/inner")
	public String inner() {
		return "inner";
	}
	@GetMapping("/patientlist")
	public String patientlist() {
		return "patientlist";
	} 
  
	@GetMapping("/map")
	public String map() {
		return "map";
	}

	@GetMapping("/doctorInfo")
	public String doctorInfo() {
		return "doctorInformation";
	}

	@GetMapping("/doctorInfoEdit")
	public String doctorInfoEdit() {
		return "doctorInfoEdit";
	}
	
	@GetMapping("/medicine")
	public String medicine() {
		return "medicine";
	}
	
	@GetMapping("/medicineEdit")
	public String medicineEdit() {
		return "medicineEdit";
	}
	
	@GetMapping("/medicineList")
	public String medicineList() {
		return "medicineList";
	}
	
	@GetMapping("/animallookupdetail")
	public String animallookupdetail() {
		return "animallookupdetail";
	}
	
	@GetMapping("/patientInfoEdit_doctor")
	public String patientInfoEdit_doctor() {
		return "patientInfoEdit_doctor";
	}
}

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

	@GetMapping("/roleCheck")
	public String roleCheck() {
		return "roleCheck";
	}

	@GetMapping("/editMyPageProtector")
	public String editMyPageProtector() {
		return "editMyPageProtector";
	}

	@GetMapping("/myPageProtector")
	public String myPageProtector() {
		return "myPageProtector";
	}

	@GetMapping("/editPatientProtector")
	public String editPatientProtector() {
		return "editPatientProtector";
	}

	@GetMapping("/serviceIntroduce")
	public String serviceIntroduce() {
		return "serviceIntroduce";
	}

	@GetMapping("/scheduleDoctor")
	public String scheduleDoctor() {
		return "scheduleDoctor";
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
}

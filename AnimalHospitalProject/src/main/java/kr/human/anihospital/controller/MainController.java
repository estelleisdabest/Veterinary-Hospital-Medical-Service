package kr.human.anihospital.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

	@GetMapping("/")
  public String home() {
    return "index";
  }
  
	@GetMapping("inner")
	public String inner() {
		return "inner";
	}
  
	@GetMapping("/signin")
	public String signin() {
		return "signin";
	}

	@GetMapping("/postscriptSave")
	public String postscriptSave() {
		return "postscriptSave";
	}
  
	@GetMapping("/postscriptUpdate")
	public String postscriptUpdate() {
		return "postscriptUpdate";
	}
  
	@GetMapping("/notice")
	public String notice() {
		return "notice";
	}
  
	@GetMapping("/noticeAdd")
	public String noticeAdd() {
		return "noticeAdd";
	}
  
	@GetMapping("/noticeModify")
	public String noticeModify() {
		return "noticeModify";
	}

	@GetMapping("/patientInfoEditDoctor")
	public String patientInfoEditDoctor() {
		return "patientInfoEditDoctor";
	}

	@GetMapping("/animallookup")
	public String animallookup() {
		return "animallookup";
	}
	
	@GetMapping("/animallookupdetail")
	public String animallookupdetail() {
		return "animallookupdetail";
	}
	
	@GetMapping("/diagnosis")
	public String diagnosis() {
		return "diagnosis";
	}
	
	@GetMapping("/roleCheck")
	public String roleCheck() {
		return "roleCheck";
	}

	@GetMapping("/doctorMemberJoin")
	public String doctorMemberJoin() {
		return "doctorMemberJoin";
	}
	
	@GetMapping("/protectorMemberJoin")
	public String protectorMemberJoin() {
		return "protectorMemberJoin";
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
	@GetMapping("/scheduleProtector")
	public String scheduleProtector() {
		return "scheduleProtector";
	}

	@GetMapping("/patientAdd")
	public String patientAdd() {
		return "patientAdd";
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
}

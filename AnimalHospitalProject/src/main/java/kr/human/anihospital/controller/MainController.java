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

	@GetMapping("/patientInfoEdit_doctor")
	public String patientInfoEdit_doctor() {
		return "patientInfoEdit_doctor";
	}

}

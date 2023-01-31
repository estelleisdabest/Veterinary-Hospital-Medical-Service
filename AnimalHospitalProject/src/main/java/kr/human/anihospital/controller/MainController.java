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
}

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

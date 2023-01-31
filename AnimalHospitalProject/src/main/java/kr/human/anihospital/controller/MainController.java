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
	@GetMapping("/postscript_save")
	public String postscript_save() {
		return "postscript_save";
	}
	@GetMapping("/postscript_update")
	public String postscript_update() {
		return "postscript_update";
	}
}

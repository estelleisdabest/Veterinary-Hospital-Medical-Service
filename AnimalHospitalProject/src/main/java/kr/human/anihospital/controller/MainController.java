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
	
	@GetMapping("/doctorJoinMember")
	public String doctorJoinMember() {
		return "doctorJoinMember";
	}
	
	@GetMapping("/protectorMemberJoin")
	public String protectorMemberJoin() {
		return "protectorMemberJoin";
	}
}

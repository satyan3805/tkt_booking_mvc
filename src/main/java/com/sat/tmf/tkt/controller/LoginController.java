package com.sat.tmf.tkt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sat.tmf.tkt.entity.User;
import com.sat.tmf.tkt.service.LoginService;

@Controller
@RequestMapping("/tktbooking")
public class LoginController {
	
	@Autowired
	LoginService loginService;
	

	@GetMapping("/login")
	public String login() {
		
		return "login";
	}
	
	@PostMapping("/auth")
	public String authenticate(@RequestParam("username") String  username, @RequestParam("password") String password) {
		User user = loginService.authenticateUser(username, password);
		if(user != null) {
			return "dashboard";
		}else {
			return "login";
		}
		
	}
}

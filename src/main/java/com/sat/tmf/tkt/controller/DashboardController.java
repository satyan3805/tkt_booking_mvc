package com.sat.tmf.tkt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/tktbooking")
public class DashboardController {

	@GetMapping("/dashboard")
	public String viewDashboard() {
		
		return "dashboard";
	}
}

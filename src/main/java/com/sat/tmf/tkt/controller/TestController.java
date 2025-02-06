package com.sat.tmf.tkt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/test")
public class TestController {

	@GetMapping("/service")
	public String serviceCall() {
		System.out.println("invoiked serviceCall from TestController ");
		return "demo";
	}
	
	@RequestMapping(value="/getinfo", method=RequestMethod.GET)
	public String getinfoCall() {
		System.out.println("getinfo from TestController ");
		return "info";
	}
}

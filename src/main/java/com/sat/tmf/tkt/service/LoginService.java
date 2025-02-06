package com.sat.tmf.tkt.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.sat.tmf.tkt.entity.User;
import com.sat.tmf.tkt.repo.UserRepository;

public class LoginService {

	@Autowired
	UserRepository userRepository;
	
	public User authenticateUser(String username, String password) {
		userRepository.findByPhoneNumber(username);
		return null;
	}
}

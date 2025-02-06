package com.sat.tmf.tkt.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.support.SimpleJpaRepository;
import org.springframework.stereotype.Repository;

import com.sat.tmf.tkt.entity.User;

@Repository
public class UserRepository extends SimpleJpaRepository<User, Integer>{

	public void findByPhoneNumber(String username) {
		
		
	}
	
}

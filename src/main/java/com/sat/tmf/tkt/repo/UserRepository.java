package com.sat.tmf.tkt.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.sat.tmf.tkt.entity.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer>{

	List<User> findByPhoneNumber(String phoneNumber);
}

package com.sat.tmf.tkt.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.sat.tmf.tkt.entity.Movie;

@Repository
public interface MovieRepository extends JpaRepository<Movie, Integer>{
	List<Movie> findAll();
}

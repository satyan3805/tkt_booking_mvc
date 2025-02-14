package com.sat.tmf.tkt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sat.tmf.tkt.entity.Movie;
import com.sat.tmf.tkt.repo.MovieRepository;

@Service
public class MovieService {
	
	@Autowired
	MovieRepository movieRepository;
	
	public List<Movie> getAllMovies(){
		System.out.println(movieRepository.findAll());
		return movieRepository.findAll();
		
	}
}

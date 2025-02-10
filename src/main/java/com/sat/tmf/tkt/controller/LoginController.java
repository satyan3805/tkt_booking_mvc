package com.sat.tmf.tkt.controller;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sat.tmf.tkt.entity.User;
import com.sat.tmf.tkt.entity.Movie;
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
	public String authenticate(@RequestParam("username") String  username, @RequestParam("password") String password, Model model) {
		User loggedInUser = loginService.authenticateUser(username, password);
		if(loggedInUser != null) {
			model.addAttribute("currUser", loggedInUser);
			List<Movie> movieList = getMovieData();
			model.addAttribute("movies", movieList);
			model.addAttribute("upcomingMovies", movieList);
			return "dashboard";
		}else {
			return "login";
		}
//		User currUser = new User();
//		currUser.setFirstName("SATYA");
//		currUser.setLastName("N");
//		List<Movie> movieList = getMovieData();
//		
//		model.addAttribute("movies", movieList);
//		model.addAttribute("upcomingMovies", movieList);
//		model.addAttribute("user", currUser);
		//return "dashboard";
		
	}
	
	public List<Movie> getMovieData() {
		Movie movie1 = new Movie(
	            "Avengers: Endgame", 
	            "The Avengers must assemble again to defeat Thanos and save the universe.",
	            LocalDate.of(2019, 4, 26), 
	            8.4, 
	            "avengers_endgame_poster.jpg", 
	            "Action, Adventure, Sci-Fi", 
	            181
	        );

	        Movie movie2 = new Movie(
	            "The Lion King", 
	            "A young lion prince flees his kingdom only to learn the true meaning of responsibility and bravery.",
	            LocalDate.of(2019, 7, 19), 
	            6.9, 
	            "lion_king_poster.jpg", 
	            "Animation, Adventure, Drama", 
	            118
	        );

	        Movie movie3 = new Movie(
	            "Inception", 
	            "A thief who enters the minds of others through their dreams is given the chance to have his criminal record erased.",
	            LocalDate.of(2010, 7, 16), 
	            8.8, 
	            "inception_poster.jpg", 
	            "Action, Adventure, Sci-Fi", 
	            148
	        );

	        Movie movie4 = new Movie(
	            "The Dark Knight", 
	            "Batman faces off against the Joker, a criminal mastermind who wants to plunge Gotham City into anarchy.",
	            LocalDate.of(2008, 7, 18), 
	            9.0, 
	            "dark_knight_poster.jpg", 
	            "Action, Crime, Drama", 
	            152
	        );

	        Movie movie5 = new Movie(
	            "Frozen II", 
	            "Elsa, Anna, Kristoff, and Olaf set out on a dangerous journey to discover the origin of Elsa's magical powers.",
	            LocalDate.of(2019, 11, 22), 
	            6.9, 
	            "frozen_ii_poster.jpg", 
	            "Animation, Adventure, Comedy", 
	            103
	        );

	        // List of all movies
	        List<Movie> movies = Arrays.asList(movie1, movie2, movie3, movie4, movie5);
	        
	        return movies;
	}
}

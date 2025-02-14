package com.sat.tmf.tkt.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sat.tmf.tkt.entity.Movie;
import com.sat.tmf.tkt.entity.User;
import com.sat.tmf.tkt.service.LoginService;
import com.sat.tmf.tkt.service.MovieService;

@Controller
@RequestMapping("/tktbooking")
public class LoginController {

	@Autowired
	LoginService loginService;
	
	@Autowired
	MovieService movieService;

	@GetMapping("/login")
	public String login() {

		return "login";
	}

	@GetMapping("/signup")
	public String signup() {

		return "register";
	}

	@PostMapping("/auth")
	public String authenticate(@RequestParam("username") String username, @RequestParam("password") String password,
			Model model) {
		User loggedInUser = loginService.authenticateUser(username, password);
		if (loggedInUser != null) {
			model.addAttribute("currUser", loggedInUser);
			List<Movie> movieList = movieService.getAllMovies();//new ArrayList<Movie>();
			model.addAttribute("movies", movieList);
			// model.addAttribute("upcomingMovies", movieList);
			return "movie_list";
		} else {
			return "login";
		}
	}

}

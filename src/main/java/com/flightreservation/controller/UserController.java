package com.flightreservation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.flightreservation.entity.User;
import com.flightreservation.repository.UserRepository;


@Controller
public class UserController {
	
	@Autowired
	private UserRepository userRepo;
	
	
	@RequestMapping(path = "/showLogin")
	public String showLogin() 
	{
		return "login/login";
	}
	
	//localhost:8080/flights/showReg
	@RequestMapping(path = "/showReg")
	public String showRegistrationPage() 
	{
		return "login/showReg";
	}
	
	@RequestMapping(path = "/saveReg")
	public String saveReg(@ModelAttribute("user") User user)
	{
		userRepo.save(user);
		return "login/login";
	}
	
	@RequestMapping(path = "/verifylogin")
	public String verifying(@RequestParam("email") String email, 
			@RequestParam("password") String password, ModelMap model) 
	{
		
		User user = userRepo.getByEmail(email);
		
		if(user != null) 
		{
		if(user.getEmail().equals(email) && user.getPassword().equals(password)) {
			
			return "findFlight";
			
		}else {
			model.addAttribute("error","Invalid email/password");
			return "login/login";
		}
		}else 
		{
			model.addAttribute("error","Invalid email/password");
			return "login/login";
		}
		
	}
}

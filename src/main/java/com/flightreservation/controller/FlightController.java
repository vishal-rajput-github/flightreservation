package com.flightreservation.controller;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.flightreservation.entity.Flight;
import com.flightreservation.repository.FlightRepository;


@Controller
public class FlightController {
	
	@Autowired
	private FlightRepository flightRepo;
	
	@RequestMapping("/findFlights")
	public String findFlights(@RequestParam("from") String from,@RequestParam("to") String to,
			@RequestParam("departuredate") @DateTimeFormat(pattern = "yyyy-mm-dd")
	Date departuredate, ModelMap modelMap)
	{
		List<Flight> findFlights = flightRepo.findFlights(from, to, departuredate);
		modelMap.addAttribute("flights", findFlights);
		return "displayFlights";
	}
	
	@RequestMapping("/CompleteReservation")
	public String CompleteReservation(@RequestParam ("flightId") Long id) 
	{
		Optional<Flight> findById = flightRepo.findById(id);
		Flight flights = findById.get();
		return "CompleteReservation";
	}
}

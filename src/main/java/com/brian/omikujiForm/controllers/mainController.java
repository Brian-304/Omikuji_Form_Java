package com.brian.omikujiForm.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class mainController {

	@RequestMapping
	public String index() {
		return "index.jsp";
	}
	
	@RequestMapping(value="/show", method=RequestMethod.POST)
	public String show(HttpSession s,
		@RequestParam(value="number") Integer number,
		@RequestParam(value="city") String city,
		@RequestParam(value="person") String person,
		@RequestParam(value="hobby") String hobby,
		@RequestParam(value="thing") String thing,
		@RequestParam(value="description") String description) {
		
		System.out.println(number + " : " + city );
		
		s.setAttribute("number", number);
		s.setAttribute("city", city);
		s.setAttribute("person", person);
		s.setAttribute("hobby", hobby);
		s.setAttribute("thing", thing);
		s.setAttribute("description", description);
		
		return "redirect:/show/page";
	}
	
	@RequestMapping("/show/page")
	public String results() {
		return "show.jsp";
	}

}

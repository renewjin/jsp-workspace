package com.kh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.kh.entity.Hamburger;
import com.kh.service.HamburgerService;

@Controller
public class HamburgerController {

	@Autowired
	private HamburgerService hService;
	
	@GetMapping("/api/all")
	public String getAll(Model model) {
		List<Hamburger> h = hService.getAll();
		model.addAttribute("ham", h);
		return "hambugerList"; // src/main/webapp/WEB-INF/jsp/hambugerList.jsp 
	}
	
	@PostMapping("/api/add")
	public String addHamburger(Hamburger h) {
		hService.saveHumburger(h);
		return "redirect:/api/all"; // redirect 다시 불러올 api주소를 작성
	}
}

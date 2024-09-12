package com.kh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PostMapping;

import com.kh.entity.Hamburger;
import com.kh.repository.HamburgerRepository;

@Service
public class HamburgerService {

	@Autowired
	private HamburgerRepository hamburgerRepository;
	
	// 햄버거 db 저장
	public void saveHumburger(Hamburger h) {
		hamburgerRepository.save(h);
	}
	
	// 햄버거 출력
	public List<Hamburger> getAll() {
		return hamburgerRepository.findAll();
	}
}

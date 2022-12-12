package com.cgv.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.cgv.project.dto.Cart;
import com.cgv.project.service.CartService;

@Controller // 해당 클래스를 빈으로 등록
public class CartController {
	@Autowired
	CartService cartServiceImpl;
	
	@PostMapping("/insertCarts.do")
	public String insertCarts(Cart cart) {
		cartServiceImpl.insertCarts(cart); // 카트에 담길 데이터 저장
		//return "redirect:selectCart.do"; // get요청으로 "도메인/selectCart.do" URL 호출
		return "login";
	}
	
	@GetMapping("/selectCart.do") // HTTP메서드 중 get요청으로 "도메인/selectCart.do"를 URL로 접근할 경우 
	public String selectCart(Model model) {
		model.addAttribute("carts", cartServiceImpl.selectCart()); // carts라는 값에 카트에 담겨있는 물건을 데이터베이스에서 가져와 저장
		return "mart"; // mart라는 view name을 리턴 (view resolver를 통해 view object로 변경)
	}
	
//	@GetMapping("/") // 프로젝트 시작 시 mart페이지로 리다이렉트
//	public String init() {
//		return "redirect:selectCart.do";
//	}
	
	@GetMapping("/") // 프로젝트 시작 시 main페이지로 리다이렉트
	public String init() {
		return "main";
	}
	
	@GetMapping("/joinpage")
	public String joinpage() {
		return "join";
	}
	
	@GetMapping("/loginpage")
	public String loginpage() {
		return "login";
	}
	
	@GetMapping("/mainpage")
	public String mainpage() {
		return "main";
	}
}

package com.cgv.project.service;

import java.util.List;

import com.cgv.project.dto.Cart;

public interface CartService {
	
	public int insertCarts(Cart cart); // cart데이터를 저장하는 용도
	
	public List<Cart> selectCart(); // cart데이터 조회 용도
	
	public int testCarts(Cart cart); // 트랜잭션 테스트 용도
}

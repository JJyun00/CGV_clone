package com.cgv.project.repository;

import java.util.List;

import com.cgv.project.dto.Cart;

public interface CartRepository {
	
	public int insertCart(Cart cart); // cart데이터 저장 용도
	
	public List<Cart> selectCart(); // cart데이터 조회 용도
	
	public int updateCart(); // 트랜잭션 테스트 용도
}
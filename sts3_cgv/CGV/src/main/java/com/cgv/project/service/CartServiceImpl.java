package com.cgv.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cgv.project.dto.Cart;
import com.cgv.project.repository.CartRepository;

@Service // 해당 클래스를 빈으로 등록
public class CartServiceImpl implements CartService {
	
	@Autowired
	CartRepository cartRepositoryImpl;
	
	@Override
	@Transactional // 하나의 작업단위로 묶어 트랜잭션 처리를 위한 어노테이션
	public int insertCarts(Cart cart) {
		return cartRepositoryImpl.insertCart(cart);
//		Cart myCart = new Cart(); // 임의로 만든 카트 데이터
//		myCart.setName("쌀");
//		myCart.setPrice(1200);
//		myCart.setCount(6);
//		
//		int res = cartRepositoryImpl.insertCart(cart);
//		res = res + cartRepositoryImpl.insertCart(myCart);
//		
//		return res;
	}
	/* @Transactional이 있을 경우에만 트랜잭션 처리가 되기 때문에 
	 * 다수의 데이터가 삽입되는 insertCarts에는 어노테이션을 추가하고 
	 * 단순 조회를 위한 selectCart에는 어노테이션을 추가하지 않았습니다.
	*/
	
	@Override
	public List<Cart> selectCart() {
		return cartRepositoryImpl.selectCart();
	}
	
	@Override
	@Transactional // 트랜잭션 처리를 위한 어노테이션
	public int testCarts(Cart cart) {
		int res = 0;
		
		res = res + cartRepositoryImpl.insertCart(cart); // 정상 로직
		res = res + cartRepositoryImpl.updateCart(); // 비정상 로직
		
		return res;
	}
}

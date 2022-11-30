package com.cgv.project;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.cgv.project.dto.Cart;
import com.cgv.project.repository.CartRepository;

@RunWith(SpringRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class MVC {
	
	private static Logger logger = LoggerFactory.getLogger(MVC.class);
	
	@Autowired
	CartRepository cartRepositoryImpl;

	@Test
	public void DBTest() {
		Cart cart = new Cart();
		cart.setName("김치");
		cart.setPrice(1500);
		cart.setCount(4);
		
		logger.debug(cartRepositoryImpl.insertCart(cart) + ""); // Cart 데이터 등록
		logger.debug(cartRepositoryImpl.selectCart().toString()); // Cart 데이터 조회
	}

}
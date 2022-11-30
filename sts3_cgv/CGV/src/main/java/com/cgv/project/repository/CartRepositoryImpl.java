package com.cgv.project.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cgv.project.dto.Cart;

@Repository // 해당 클래스를 bean으로 등록
public class CartRepositoryImpl implements CartRepository {
	
	private String namespace = "com.cgv.project.cartmapper."; // mapper파일의 namespace + "."
	
	@Autowired
	SqlSession session;
	
	@Override
	public int insertCart(Cart cart) {
		return session.insert(namespace + "insertCart", cart); // return 형태: session.{id의 태그명}(namespace + {namespace에 속하는 mapper의 id}, {parameterType})
	}
	
	@Override
	public List<Cart> selectCart() {
		return session.selectList(namespace + "selectCart"); // selectList는 조회되는 값을 모두 불러와 List에 저장, selectOne은 조회되는 값 하나만 저장
	}
	
	@Override
	public int updateCart() {
		return session.update(namespace + "updateCart");
	}
}

package com.spring.tour.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.tour.vo.AccomServiceReviewJoinVo;
import com.spring.tour.vo.WishlistVo;


@Repository
public class WishlistDao {
	@Autowired
	private SqlSession sqlsession;
	
	private final String NAMESPACE = "com.spring.tour.mapper.WishlistMapper";
	
	public int wishlist_insert(HashMap<String, Object> wishMap) {
		return sqlsession.insert(NAMESPACE+".insert",wishMap);
	}
	
	public int wishlist_delete(HashMap<String, Object> wishMap) {
		return sqlsession.delete(NAMESPACE+".delete",wishMap);
	}
	
	public List<WishlistVo> wishlist_list(String user_id){
		return sqlsession.selectList(NAMESPACE+".list",user_id);
	}
	public List<AccomServiceReviewJoinVo> accomWishlist(String user_id){
		return sqlsession.selectList(NAMESPACE+".accomWishlist", user_id);
	}
}

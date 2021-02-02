package com.spring.tour.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.tour.vo.WishlistVo;


@Repository
public class WishlistDao {
	@Autowired
	private SqlSession sqlsession;
	
	private final String NAMESPACE = "com.spring.tour.mapper.WishlistMapper";
	
	public int wishlist_insert(WishlistVo vo) {
		return sqlsession.insert(NAMESPACE+".insert",vo);
	}
	
	public int wishlist_delete(WishlistVo vo) {
		return sqlsession.delete(NAMESPACE+".delete",vo);
	}
	
	public List<WishlistVo> wishlist_list(String user_id){
		return sqlsession.selectList(NAMESPACE+".list",user_id);
	}

}

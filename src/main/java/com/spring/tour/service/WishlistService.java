package com.spring.tour.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.tour.dao.WishlistDao;
import com.spring.tour.vo.WishlistVo;


@Service
public class WishlistService {
	@Autowired
	private WishlistDao dao;
	
	public int  wishlist_insert(HashMap<String, Object> wishMap ) {
		return dao.wishlist_insert(wishMap);
	}
	public int wishlist_delete(HashMap<String, Object> wishMap) {
		return dao.wishlist_delete(wishMap);
	}
	public List<WishlistVo> wishlist_list(String user_id){
		return dao.wishlist_list(user_id);
	}
}

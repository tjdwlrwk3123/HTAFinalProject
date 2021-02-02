package com.spring.tour.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.tour.dao.WishlistDao;
import com.spring.tour.vo.WishlistVo;


@Service
public class WishlistService {
	@Autowired
	private WishlistDao dao;
	
	public int  wishlist_insert(WishlistVo vo ) {
		return dao.wishlist_insert(vo);
	}
	public int wishlist_delete(WishlistVo vo ) {
		return dao.wishlist_delete(vo);
	}
	public List<WishlistVo> wishlist_list(String user_id){
		return dao.wishlist_list(user_id);
	}
}

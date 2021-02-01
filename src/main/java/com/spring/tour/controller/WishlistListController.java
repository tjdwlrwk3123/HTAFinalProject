package com.spring.tour.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WishlistListController {
	
	@RequestMapping(value ="/wishlist")
	public String wishlist() {
		return "/wishlist/wishList";
		
	}

}

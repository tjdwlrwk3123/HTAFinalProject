package com.spring.tour.test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.util.HashMap;

import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.spring.tour.service.MemberManagementService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")

public class ControllerTest {
	@Autowired
	private MemberManagementService service;
	
	@Test
	public void deleteCoupon() {
		HashMap<String, Object> map=new HashMap<String, Object>();
		
		String coupName="¸ÚÁøÄíÆù";
		int discount=30;
		String expire="2021-05-12";
		map.put("coupName", coupName);
		map.put("discount", discount);
		map.put("expire", expire);
		int n=service.deleteCoupon(map);
		assertNotNull(n);
	}
}

package com.spring.tour.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.tour.dao.ServiceDao;
@Service
public class ServiceService {
	@Autowired private ServiceDao dao;
	
}

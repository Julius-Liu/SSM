package com.tgb.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tgb.model.Transportation;
import com.tgb.service.TransportationService;
import com.tgb.mapper.TransportationMapper;

@Service
@Transactional
public class TransportationServiceImpl implements TransportationService{
	@Resource
	private TransportationMapper transportationMapper;

	public void save(Transportation transportation) {
		transportationMapper.save(transportation);
	}

	public boolean update(Transportation transportation) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return false;
	}

	public Transportation findById(int id) {
		return null;
	}

	public List<Transportation> findAll() {
		List<Transportation> transportationList = transportationMapper.findAll();
		return transportationList;
	}	
}

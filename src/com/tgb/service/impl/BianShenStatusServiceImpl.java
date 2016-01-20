package com.tgb.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tgb.model.BianShenStatus;
import com.tgb.service.BianShenStatusService;
import com.tgb.mapper.BianShenStatusMapper;

@Service
@Transactional
public class BianShenStatusServiceImpl implements BianShenStatusService{
	@Resource
	private BianShenStatusMapper bianShenStatusMapper;

	public void save(BianShenStatus bianShenStatus) {
		bianShenStatusMapper.save(bianShenStatus);
	}

	public boolean update(BianShenStatus bianShenStatus) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return false;
	}

	public BianShenStatus findById(int id) {
		return null;
	}

	public List<BianShenStatus> findAll() {
		List<BianShenStatus> bianShenStatusList = bianShenStatusMapper.findAll();
		return bianShenStatusList;
	}
}

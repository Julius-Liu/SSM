package com.tgb.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tgb.model.GaoJianSource;
import com.tgb.service.GaoJianSourceService;
import com.tgb.mapper.GaoJianSourceMapper;

@Service
@Transactional
public class GaoJianSourceServiceImpl implements GaoJianSourceService{	
	@Resource
	private GaoJianSourceMapper gaoJianSourceMapper;

	public void save(GaoJianSource gaoJianSource) {
		gaoJianSourceMapper.save(gaoJianSource);
	}

	public boolean update(GaoJianSource gaoJianSource) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return false;
	}

	public GaoJianSource findById(int id) {
		return null;
	}

	public List<GaoJianSource> findAll() {
		List<GaoJianSource> gaoJianSourceList = gaoJianSourceMapper.findAll();
		return gaoJianSourceList;
	}	
}

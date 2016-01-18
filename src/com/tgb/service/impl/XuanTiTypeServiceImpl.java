package com.tgb.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.tgb.mapper.XuanTiTypeMapper;
import com.tgb.model.XuanTiType;
import com.tgb.service.XuanTiTypeService;

@Service
@Transactional
public class XuanTiTypeServiceImpl implements XuanTiTypeService{
	@Resource
	private XuanTiTypeMapper xuanTiTypeMapper;

	public void save(XuanTiType xuanTiType) {
		xuanTiTypeMapper.save(xuanTiType);
	}

	public boolean update(XuanTiType xuanTiType) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return false;
	}

	public XuanTiType findById(int id) {
		return null;
	}

	public List<XuanTiType> findAll() {
		List<XuanTiType> xuanTiTypeList = xuanTiTypeMapper.findAll();
		return xuanTiTypeList;
	}
}

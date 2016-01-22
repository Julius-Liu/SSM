package com.tgb.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tgb.model.YinZhang;
import com.tgb.service.YinZhangService;
import com.tgb.mapper.YinZhangMapper;

@Service
@Transactional
public class YinZhangServiceImpl implements YinZhangService{
	@Resource
	private YinZhangMapper yinZhangMapper;

	public void save(YinZhang yinZhang) {
		yinZhangMapper.save(yinZhang);
	}

	public boolean update(YinZhang yinZhang) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return false;
	}

	public YinZhang findById(int id) {
		return null;
	}

	public List<YinZhang> findAll() {
		List<YinZhang> yinZhangList = yinZhangMapper.findAll();
		return yinZhangList;
	}
}

package com.tgb.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tgb.model.PrintQuality;
import com.tgb.service.PrintQualityService;
import com.tgb.mapper.PrintQualityMapper;

@Service
@Transactional
public class PrintQualityServiceImpl implements PrintQualityService{
	@Resource
	private PrintQualityMapper printQualityMapper;

	public void save(PrintQuality printQuality) {
		printQualityMapper.save(printQuality);
	}

	public boolean update(PrintQuality printQuality) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return false;
	}

	public PrintQuality findById(int id) {
		return null;
	}

	public List<PrintQuality> findAll() {
		List<PrintQuality> printQualityList = printQualityMapper.findAll();
		return printQualityList;
	}
}

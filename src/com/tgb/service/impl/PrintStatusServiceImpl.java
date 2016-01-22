package com.tgb.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tgb.model.PrintStatus;
import com.tgb.service.PrintStatusService;
import com.tgb.mapper.PrintStatusMapper;

@Service
@Transactional
public class PrintStatusServiceImpl implements PrintStatusService{
	@Resource
	private PrintStatusMapper printStatusMapper;

	public void save(PrintStatus printStatus) {
		printStatusMapper.save(printStatus);
	}

	public boolean update(PrintStatus printStatus) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return false;
	}

	public PrintStatus findById(int id) {
		return null;
	}

	public List<PrintStatus> findAll() {
		List<PrintStatus> printStatusList = printStatusMapper.findAll();
		return printStatusList;
	}
}

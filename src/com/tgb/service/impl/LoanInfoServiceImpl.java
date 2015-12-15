package com.tgb.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.tgb.mapper.LoanInfoMapper;
import com.tgb.model.LoanInfo;
import com.tgb.service.LoanInfoService;

@Service
@Transactional  //此处不再进行创建SqlSession和提交事务，都已交由spring去管理了。
public class LoanInfoServiceImpl implements LoanInfoService{
	@Resource
	private LoanInfoMapper loanInfoMapper;

	public void save(LoanInfo loanInfo) {
		loanInfoMapper.save(loanInfo);
	}

	public boolean update(LoanInfo loanInfo) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return false;
	}

	public LoanInfo findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<LoanInfo> findAll() {
		// TODO Auto-generated method stub
		return null;
	}
	
}

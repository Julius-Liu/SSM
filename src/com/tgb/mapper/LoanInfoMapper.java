package com.tgb.mapper;

import java.util.List;
import com.tgb.model.LoanInfo;

public interface LoanInfoMapper {
	void save(LoanInfo loanInfo);
	boolean update(LoanInfo loanInfo);
	boolean delete(int id);
	LoanInfo findById(int id);
	List<LoanInfo> findAll();
}

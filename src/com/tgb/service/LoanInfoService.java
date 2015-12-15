package com.tgb.service;

import java.util.List;
import com.tgb.model.LoanInfo;

public interface LoanInfoService {
	void save(LoanInfo loanInfo);
	boolean update(LoanInfo loanInfo);
	boolean delete(int id);
	LoanInfo findById(int id);
	List<LoanInfo> findAll();
}

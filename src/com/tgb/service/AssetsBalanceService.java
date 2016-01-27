package com.tgb.service;

import java.util.List;
import com.tgb.model.AssetsBalance;

public interface AssetsBalanceService {
	void save(AssetsBalance assetsBalance);
	boolean update(AssetsBalance assetsBalance);			
	boolean delete(String id);
	AssetsBalance findById(String id);
	List<AssetsBalance> findAll();
	
	List<AssetsBalance> queryAssetsBalanceInfo(String assets_balance_id, String customer_name, String bank_name,
			String record_creator, int currentPage);
	
	void calculateTotalPageAndRecordNumber(String assets_balance_id, String customer_name, String bank_name,
			String record_creator);
	
	int getTotalPage();	
	int getRecordNumber();
}

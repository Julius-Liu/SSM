package com.tgb.mapper;

import java.util.List;
import com.tgb.model.AssetsBalance;
import org.apache.ibatis.annotations.Param;

public interface AssetsBalanceMapper {
	void save(AssetsBalance assetsBalance);
	boolean update(AssetsBalance assetsBalance);			
	boolean delete(String id);
	AssetsBalance findById(String id);

	List<AssetsBalance> findAll();
	
	List<AssetsBalance> calculateTotalPageAndRecordNumber(
			@Param("assets_balance_id")String assets_balance_id, 			 
			@Param("customer_name")String customer_name,
			@Param("bank_name")String bank_name,
			@Param("record_creator")String record_creator);
}

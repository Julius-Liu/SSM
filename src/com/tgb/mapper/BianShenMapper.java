package com.tgb.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.tgb.model.BianShen;

public interface BianShenMapper {
	void save(BianShen bianShen);
	boolean update(BianShen bianShen);			// 更新选题信息
	boolean delete(String id);
	BianShen findById(String id);

	List<BianShen> findAll();
	
	List<BianShen> calculateTotalPageAndRecordNumber(
			@Param("bian_shen_id")String bian_shen_id, 
			@Param("book_id")String book_id, 
			@Param("book_name")String book_name, 
			@Param("bian_shen_status")int bian_shen_status);
}

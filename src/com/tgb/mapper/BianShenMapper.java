package com.tgb.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.tgb.model.BianShen;

public interface BianShenMapper {
	void save(BianShen bianShen);
	boolean update(BianShen bianShen);			// 更新选题信息
	boolean delete(int id);
	BianShen findById(int id);

	List<BianShen> findAll();
	
	List<BianShen> calculateTotalPageAndRecordNumber(
			@Param("book_name")String book_name, 
			@Param("original_author")String original_author, 
			@Param("ze_ren_editor")String ze_ren_editor, 			
			@Param("bian_shen_status")int bian_shen_status);
}

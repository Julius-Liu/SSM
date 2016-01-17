package com.tgb.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.tgb.model.XuanTi;

public interface XuanTiMapper {
	void save(XuanTi xuan_ti);
	boolean update(XuanTi xuan_ti);			// 更新选题信息
	boolean delete(String id);
	XuanTi findById(String id);

	List<XuanTi> findAll();
	
	List<XuanTi> calculateTotalPageAndRecordNumber(
			@Param("id")String id, 
			@Param("type")int type, 
			@Param("year")String year, 
			@Param("book_name")String book_name);
}

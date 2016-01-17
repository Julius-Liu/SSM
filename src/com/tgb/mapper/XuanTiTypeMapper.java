package com.tgb.mapper;

import java.util.List;
import com.tgb.model.XuanTiType;

public interface XuanTiTypeMapper {
	void save(XuanTiType xuanTiType);
	boolean update(XuanTiType xuanTiType);
	boolean delete(int id);
	
	XuanTiType findById(int id);
	List<XuanTiType> findAll();
}

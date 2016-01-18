package com.tgb.service;

import java.util.List;
import com.tgb.model.XuanTiType;

public interface XuanTiTypeService {
	void save(XuanTiType xuanTiType);
	boolean update(XuanTiType xuanTiType);
	boolean delete(int id);
	
	XuanTiType findById(int id);
	List<XuanTiType> findAll();
}

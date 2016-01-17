package com.tgb.service;

import java.util.List;
import com.tgb.model.XuanTiType;

public interface XuanTiTypeService {
	void save(XuanTiType XuanTiType);
	boolean update(XuanTiType XuanTiType);
	boolean delete(int id);
	
	XuanTiType findById(int id);
	List<XuanTiType> findAll();
}

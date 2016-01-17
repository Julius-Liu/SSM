package com.tgb.service;

import java.util.List;
import com.tgb.model.XuanTiStatus;

public interface XuanTiStatusService {
	void save(XuanTiStatus xuanTiStatus);
	boolean update(XuanTiStatus xuanTiStatus);
	boolean delete(int id);
	
	XuanTiStatus findById(int id);
	List<XuanTiStatus> findAll();
}

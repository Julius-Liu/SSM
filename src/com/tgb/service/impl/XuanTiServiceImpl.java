package com.tgb.service.impl;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.tgb.mapper.XuanTiMapper;
import com.tgb.model.XuanTi;
import com.tgb.service.XuanTiService;

@Service
@Transactional
public class XuanTiServiceImpl implements XuanTiService{
	@Resource
	private XuanTiMapper xuanTiMapper;

	private int totalPage;
	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	
	private int recordNumber;
	public int getRecordNumber() {
		return recordNumber;
	}

	public void setRecordNumber(int recordNumber) {
		this.recordNumber = recordNumber;
	}
	
	private int PAGE_SIZE = 10;
	
	public void save(XuanTi xuan_ti) {
		xuanTiMapper.save(xuan_ti);		
	}

	public boolean update(XuanTi xuan_ti) {
		return xuanTiMapper.update(xuan_ti);
	}

	public boolean delete(String id) {
		xuanTiMapper.delete(id);
		return false;
	}

	public XuanTi findById(String id) {
		XuanTi xuan_ti = xuanTiMapper.findById(id);
		return xuan_ti;
	}
	
	public List<XuanTi> findAll() {
		// 限制每页显示的个数
		PageHelper.startPage(1, 10);
		List<XuanTi> xuanTiList = xuanTiMapper.findAll();
		return xuanTiList;
	}
	
	/*
	 * 查询 选题 信息
	 * @see com.tgb.service.XuanTiService#queryXuanTiInfo(java.lang.String, int, java.lang.String, java.lang.String, int)
	 */
	public List<XuanTi> queryXuanTiInfo(String id, int type, 
			String year, String book_name, int currentPage) {
		// 限制每页显示的个数
		PageHelper.startPage(currentPage, 10);
		List<XuanTi> xuanTiList = xuanTiMapper.calculateTotalPageAndRecordNumber(id, type, year, book_name);
		
    	return xuanTiList;
	}
	
	/*
	 * 计算总页数和总记录数
	 * @see com.tgb.service.XuanTiService#calculateTotalPageAndRecordNumber(java.lang.String, int, java.lang.String, java.lang.String)
	 */
	public void calculateTotalPageAndRecordNumber(String id, int type, 
			String year, String book_name) {
        List<XuanTi> xuanTiList = xuanTiMapper.calculateTotalPageAndRecordNumber(id, type, year, book_name);
        recordNumber = xuanTiList.size();
        int mod = recordNumber % this.PAGE_SIZE;
        totalPage = recordNumber / this.PAGE_SIZE;
        if(mod != 0) {
        	totalPage++;
        }
	}
}

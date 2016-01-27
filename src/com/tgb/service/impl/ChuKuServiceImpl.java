package com.tgb.service.impl;

import java.util.List;
import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.tgb.mapper.ChuKuMapper;
import com.tgb.model.ChuKu;
import com.tgb.service.ChuKuService;

@Service
@Transactional
public class ChuKuServiceImpl implements ChuKuService{
	@Resource
	private ChuKuMapper chuKuMapper;

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
	
	public void save(ChuKu chuKu) {
		chuKuMapper.save(chuKu);		
	}

	public boolean update(ChuKu chuKu) {
		return chuKuMapper.update(chuKu);
	}

	public boolean delete(String id) {
		return chuKuMapper.delete(id);
	}

	public ChuKu findById(String id) {
		ChuKu chuKu = chuKuMapper.findById(id);
		return chuKu;
	}
	
	public List<ChuKu> findAll() {
		// 限制每页显示的个数
		PageHelper.startPage(1, 10);
		List<ChuKu> chuKuList = chuKuMapper.findAll();
		return chuKuList;
	}
	
	/*
	 * 查询 选题 信息
	 * @see com.tgb.service.XuanTiService#queryXuanTiInfo(java.lang.String, int, java.lang.String, java.lang.String, int)
	 */
	public List<ChuKu> queryChuKuInfo(String customer_name, String deliver_man, 
			String book_name, String contact_person, int currentPage) {
		// 限制每页显示的个数
		PageHelper.startPage(currentPage, 10);
		List<ChuKu> chuKuList = chuKuMapper.calculateTotalPageAndRecordNumber(customer_name, deliver_man, book_name, contact_person);
		
    	return chuKuList;
	}
	
	/*
	 * 计算总页数和总记录数
	 * @see com.tgb.service.XuanTiService#calculateTotalPageAndRecordNumber(java.lang.String, int, java.lang.String, java.lang.String)
	 */
	public void calculateTotalPageAndRecordNumber(String customer_name, String deliver_man, 
			String book_name, String contact_person) {
		List<ChuKu> chuKuList = chuKuMapper.calculateTotalPageAndRecordNumber(customer_name, deliver_man, book_name, contact_person);
        recordNumber = chuKuList.size();
        int mod = recordNumber % this.PAGE_SIZE;
        totalPage = recordNumber / this.PAGE_SIZE;
        if(mod != 0) {
        	totalPage++;
        }
	}
}

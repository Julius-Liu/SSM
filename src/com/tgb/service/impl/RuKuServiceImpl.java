package com.tgb.service.impl;

import java.util.List;
import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.tgb.mapper.RuKuMapper;
import com.tgb.model.RuKu;
import com.tgb.service.RuKuService;

@Service
@Transactional
public class RuKuServiceImpl implements RuKuService{
	@Resource
	private RuKuMapper ruKuMapper;

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
	
	public void save(RuKu ruKu) {
		ruKuMapper.save(ruKu);		
	}

	public boolean update(RuKu ruKu) {
		return ruKuMapper.update(ruKu);
	}

	public boolean delete(int id) {
		return ruKuMapper.delete(id);
	}

	public RuKu findById(int id) {
		RuKu ruKu = ruKuMapper.findById(id);
		return ruKu;
	}
	
	public List<RuKu> findAll() {
		// 限制每页显示的个数
		PageHelper.startPage(1, 10);
		List<RuKu> ruKuList = ruKuMapper.findAll();
		return ruKuList;
	}
	
	/*
	 * 查询 编审 信息
	 */
	public List<RuKu> queryRuKuInfo(String order_id, String deliver_company, 
			String book_name, String receive_man, int currentPage) {
		// 限制每页显示的个数
		PageHelper.startPage(currentPage, 10);
		List<RuKu> ruKuList = ruKuMapper.calculateTotalPageAndRecordNumber(order_id, deliver_company, book_name, receive_man);
		
    	return ruKuList;
	}
	
	/*
	 * 计算总页数和总记录数
	 */
	public void calculateTotalPageAndRecordNumber(String order_id, String deliver_company, 
			String book_name, String receive_man) {
        List<RuKu> ruKuList = ruKuMapper.calculateTotalPageAndRecordNumber(order_id, deliver_company, book_name, receive_man);
        recordNumber = ruKuList.size();
        int mod = recordNumber % this.PAGE_SIZE;
        totalPage = recordNumber / this.PAGE_SIZE;
        if(mod != 0) {
        	totalPage++;
        }
	}
}

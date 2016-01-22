package com.tgb.service.impl;

import java.util.List;
import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.tgb.mapper.YinWuMapper;
import com.tgb.model.YinWu;
import com.tgb.service.YinWuService;

@Service
@Transactional
public class YinWuServiceImpl implements YinWuService{
	@Resource
	private YinWuMapper yinWuMapper;

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
	
	public void save(YinWu yinWu) {
		yinWuMapper.save(yinWu);		
	}

	public boolean update(YinWu yinWu) {
		return yinWuMapper.update(yinWu);
	}

	public boolean delete(String id) {
		return yinWuMapper.delete(id);
	}

	public YinWu findById(String id) {
		YinWu yinWu = yinWuMapper.findById(id);
		return yinWu;
	}
	
	public List<YinWu> findAll() {
		// 限制每页显示的个数
		PageHelper.startPage(1, 10);
		List<YinWu> yinWuList = yinWuMapper.findAll();
		return yinWuList;
	}
	
	/*
	 * 查询 选题 信息
	 */
	public List<YinWu> queryYinWuInfo(String yin_wu_id, String book_name, int yin_zhang, 
			int print_status, int currentPage) {
		// 限制每页显示的个数
		PageHelper.startPage(currentPage, 10);
		List<YinWu> yinWuList = yinWuMapper.calculateTotalPageAndRecordNumber(yin_wu_id, book_name, yin_zhang, print_status);
		
    	return yinWuList;
	}
	
	/*
	 * 计算总页数和总记录数
	 */
	public void calculateTotalPageAndRecordNumber(String yin_wu_id, String book_name, 
			int yin_zhang, int print_status) {
        List<YinWu> yinWuList = yinWuMapper.calculateTotalPageAndRecordNumber(yin_wu_id, book_name, yin_zhang, print_status);
        recordNumber = yinWuList.size();
        int mod = recordNumber % this.PAGE_SIZE;
        totalPage = recordNumber / this.PAGE_SIZE;
        if(mod != 0) {
        	totalPage++;
        }
	}
}

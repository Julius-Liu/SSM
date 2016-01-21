package com.tgb.service.impl;

import java.util.List;
import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.tgb.mapper.BianShenMapper;
import com.tgb.model.BianShen;
import com.tgb.service.BianShenService;

@Service
@Transactional
public class BianShenServiceImpl implements BianShenService{
	@Resource
	private BianShenMapper bianShenMapper;

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
	
	public void save(BianShen bianShen) {
		bianShenMapper.save(bianShen);		
	}

	public boolean update(BianShen bianShen) {
		return bianShenMapper.update(bianShen);
	}

	public boolean delete(String id) {
		return bianShenMapper.delete(id);
	}

	public BianShen findById(String id) {
		BianShen bianShen = bianShenMapper.findById(id);
		return bianShen;
	}
	
	public List<BianShen> findAll() {
		// 限制每页显示的个数
		PageHelper.startPage(1, 10);
		List<BianShen> bianShenList = bianShenMapper.findAll();
		return bianShenList;
	}
	
	/*
	 * 查询 编审 信息
	 */
	public List<BianShen> queryBianShenInfo(String bian_shen_id, String book_id, 
			String book_name, int bian_shen_status, int currentPage) {
		// 限制每页显示的个数
		PageHelper.startPage(currentPage, 10);
		List<BianShen> bianShenList = bianShenMapper.calculateTotalPageAndRecordNumber(bian_shen_id, book_id, book_name, bian_shen_status);
		
    	return bianShenList;
	}
	
	/*
	 * 计算总页数和总记录数
	 */
	public void calculateTotalPageAndRecordNumber(String bian_shen_id, String book_id, 
			String book_name, int bian_shen_status) {
        List<BianShen> bianShenList = bianShenMapper.calculateTotalPageAndRecordNumber(bian_shen_id, book_id, book_name, bian_shen_status);
        recordNumber = bianShenList.size();
        int mod = recordNumber % this.PAGE_SIZE;
        totalPage = recordNumber / this.PAGE_SIZE;
        if(mod != 0) {
        	totalPage++;
        }
	}
}

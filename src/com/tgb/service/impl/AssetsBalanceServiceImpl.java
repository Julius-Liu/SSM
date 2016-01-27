package com.tgb.service.impl;

import java.util.List;
import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.tgb.mapper.AssetsBalanceMapper;
import com.tgb.model.AssetsBalance;
import com.tgb.service.AssetsBalanceService;

@Service
@Transactional
public class AssetsBalanceServiceImpl implements AssetsBalanceService{
	@Resource
	private AssetsBalanceMapper assetsBalanceMapper;

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
	
	public void save(AssetsBalance assetsBalance) {
		assetsBalanceMapper.save(assetsBalance);		
	}

	public boolean update(AssetsBalance assetsBalance) {
		return assetsBalanceMapper.update(assetsBalance);
	}

	public boolean delete(String id) {
		return assetsBalanceMapper.delete(id);
	}

	public AssetsBalance findById(String id) {
		AssetsBalance assetsBalance = assetsBalanceMapper.findById(id);
		return assetsBalance;
	}
	
	public List<AssetsBalance> findAll() {
		// 限制每页显示的个数
		PageHelper.startPage(1, 10);
		List<AssetsBalance> assetsBalanceList = assetsBalanceMapper.findAll();
		return assetsBalanceList;
	}
	
	/*
	 * 查询 选题 信息
	 * @see com.tgb.service.XuanTiService#queryXuanTiInfo(java.lang.String, int, java.lang.String, java.lang.String, int)
	 */
	public List<AssetsBalance> queryAssetsBalanceInfo(String assets_balance_id, String customer_name, 
			String bank_name, String record_creator, int currentPage) {
		// 限制每页显示的个数
		PageHelper.startPage(currentPage, 10);
		List<AssetsBalance> assetsBalanceList = assetsBalanceMapper.calculateTotalPageAndRecordNumber(assets_balance_id, customer_name, 
				bank_name, record_creator);
		
    	return assetsBalanceList;
	}
	
	/*
	 * 计算总页数和总记录数
	 * @see com.tgb.service.XuanTiService#calculateTotalPageAndRecordNumber(java.lang.String, int, java.lang.String, java.lang.String)
	 */
	public void calculateTotalPageAndRecordNumber(String assets_balance_id, String customer_name, 
			String bank_name, String record_creator) {
        List<AssetsBalance> assetsBalanceList = assetsBalanceMapper.calculateTotalPageAndRecordNumber(assets_balance_id, customer_name, 
				bank_name, record_creator);
        recordNumber = assetsBalanceList.size();
        int mod = recordNumber % this.PAGE_SIZE;
        totalPage = recordNumber / this.PAGE_SIZE;
        if(mod != 0) {
        	totalPage++;
        }
	}
}

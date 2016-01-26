package com.tgb.service.impl;

import java.util.List;
import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.tgb.mapper.FaXingMapper;
import com.tgb.model.FaXing;
import com.tgb.service.FaXingService;

@Service
@Transactional
public class FaXingServiceImpl implements FaXingService{
	@Resource
	private FaXingMapper faXingMapper;

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
	
	public void save(FaXing faXing) {
		faXingMapper.save(faXing);		
	}

	public boolean update(FaXing faXing) {
		return faXingMapper.update(faXing);
	}

	public boolean delete(String id) {
		return faXingMapper.delete(id);
	}

	public FaXing findById(String id) {
		FaXing faXing = faXingMapper.findById(id);
		return faXing;
	}
	
	public List<FaXing> findAll() {
		// 限制每页显示的个数
		PageHelper.startPage(1, 10);
		List<FaXing> faXingList = faXingMapper.findAll();
		return faXingList;
	}
	
	/*
	 * 查询 选题 信息
	 * @see com.tgb.service.XuanTiService#queryXuanTiInfo(java.lang.String, int, java.lang.String, java.lang.String, int)
	 */
	public List<FaXing> queryFaXingInfo(String fa_xing_id, String book_name, 
			String order_receipt, String contact_person, int currentPage) {
		// 限制每页显示的个数
		PageHelper.startPage(currentPage, 10);
		List<FaXing> faXingList = faXingMapper.calculateTotalPageAndRecordNumber(fa_xing_id, book_name, order_receipt, contact_person);
		
    	return faXingList;
	}
	
	/*
	 * 计算总页数和总记录数
	 * @see com.tgb.service.XuanTiService#calculateTotalPageAndRecordNumber(java.lang.String, int, java.lang.String, java.lang.String)
	 */
	public void calculateTotalPageAndRecordNumber(String fa_xing_id, String book_name, 
			String order_receipt, String contact_person) {
        List<FaXing> faXingList = faXingMapper.calculateTotalPageAndRecordNumber(fa_xing_id, book_name, order_receipt, contact_person);
        recordNumber = faXingList.size();
        int mod = recordNumber % this.PAGE_SIZE;
        totalPage = recordNumber / this.PAGE_SIZE;
        if(mod != 0) {
        	totalPage++;
        }
	}
}

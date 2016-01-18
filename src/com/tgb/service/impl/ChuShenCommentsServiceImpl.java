package com.tgb.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tgb.model.ChuShenComments;
import com.tgb.service.ChuShenCommentsService;
import com.tgb.mapper.ChuShenCommentsMapper;

@Service
@Transactional
public class ChuShenCommentsServiceImpl implements ChuShenCommentsService{
	@Resource
	private ChuShenCommentsMapper chuShenCommentsMapper;

	public void save(ChuShenComments chuShenComments) {
		chuShenCommentsMapper.save(chuShenComments);
	}

	public boolean update(ChuShenComments chuShenComments) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return false;
	}

	public ChuShenComments findById(int id) {
		return null;
	}

	public List<ChuShenComments> findAll() {
		List<ChuShenComments> chuShenCommentsList = chuShenCommentsMapper.findAll();
		return chuShenCommentsList;
	}
}

package com.tgb.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.tgb.mapper.ReaderTypeMapper;
import com.tgb.model.ReaderType;
import com.tgb.service.ReaderTypeService;

@Service
@Transactional  //此处不再进行创建SqlSession和提交事务，都已交由spring去管理了。
public class ReaderTypeServiceImpl implements ReaderTypeService{
	@Resource
	private ReaderTypeMapper readerTypeMapper;

	public void save(ReaderType readerType) {
		readerTypeMapper.save(readerType);
	}

	public boolean update(ReaderType readerType) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return false;
	}

	public ReaderType findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<ReaderType> findAll() {
		// TODO Auto-generated method stub
		return null;
	}
	
}

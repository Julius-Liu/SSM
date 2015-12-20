package com.tgb.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.tgb.mapper.ReaderMapper;
import com.tgb.model.Reader;
import com.tgb.service.ReaderService;

@Service
@Transactional  //此处不再进行创建SqlSession和提交事务，都已交由spring去管理了。
public class ReaderServiceImpl implements ReaderService{
	@Resource
	private ReaderMapper readerMapper;

	public void save(Reader reader) {
		readerMapper.save(reader);
	}

	public boolean update(Reader reader) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return false;
	}

	public Reader findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Reader> findAll() {
		// TODO Auto-generated method stub
		return null;
	}
	
}

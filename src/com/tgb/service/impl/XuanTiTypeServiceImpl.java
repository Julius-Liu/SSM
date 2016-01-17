package com.tgb.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.tgb.mapper.BookTypeMapper;
import com.tgb.model.BookType;
import com.tgb.service.BookTypeService;

@Service
@Transactional
public class XuanTiTypeServiceImpl implements XuanTiTypeService{
	@Resource
	private BookTypeMapper bookTypeMapper;

	public void save(BookType bookType) {
		bookTypeMapper.save(bookType);
	}

	public boolean update(BookType bookType) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return false;
	}

	public BookType findById(int id) {
		return null;
	}

	public List<BookType> findAll() {
		List<BookType> bookTypeList = bookTypeMapper.findAll();
		return bookTypeList;
	}
}

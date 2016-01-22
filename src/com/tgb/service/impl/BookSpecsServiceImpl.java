package com.tgb.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tgb.model.BookSpecs;
import com.tgb.service.BookSpecsService;
import com.tgb.mapper.BookSpecsMapper;

@Service
@Transactional
public class BookSpecsServiceImpl implements BookSpecsService{
	@Resource
	private BookSpecsMapper bookSpecsMapper;

	public void save(BookSpecs bookSpecs) {
		bookSpecsMapper.save(bookSpecs);
	}

	public boolean update(BookSpecs bookSpecs) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return false;
	}

	public BookSpecs findById(int id) {
		return null;
	}

	public List<BookSpecs> findAll() {
		List<BookSpecs> bookSpecsList = bookSpecsMapper.findAll();
		return bookSpecsList;
	}
}

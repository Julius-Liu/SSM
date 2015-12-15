package com.tgb.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.tgb.mapper.BookMapper;
import com.tgb.model.Book;
import com.tgb.service.BookService;

@Service
@Transactional  //此处不再进行创建SqlSession和提交事务，都已交由spring去管理了。
public class BookServiceImpl implements BookService{
	@Resource
	private BookMapper bookMapper;

	public void save(Book book) {
		bookMapper.save(book);		
	}

	public boolean update(Book user) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return false;
	}

	public Book findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Book> findAll() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}

package com.tgb.service.impl;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;

//import org.hibernate.Query;
//import org.hibernate.Session;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.tgb.mapper.BookMapper;
import com.tgb.model.Book;
import com.tgb.model.BookType;
import com.tgb.service.BookService;

@Service
@Transactional  //此处不再进行创建SqlSession和提交事务，都已交由spring去管理了。
public class BookServiceImpl implements BookService{
	@Resource
	private BookMapper bookMapper;

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
	
	public void save(Book book) {
		bookMapper.save(book);		
	}

	public boolean update(Book book) {
		return bookMapper.update(book);
	}

	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return false;
	}

	public Book findByBarcode(String barcode) {
		Book book = bookMapper.findByBarcode(barcode);
		return book;
	}

	public List<Book> findAll() {
		List<Book> findAllList = bookMapper.findAll();
		return findAllList;
	}
	
	public List<Book> findAllAd() {
		// 限制每页显示的个数
		PageHelper.startPage(1, 10);
		List<Book> bookListAd = bookMapper.findAllAd();
		return bookListAd;
	}
	
	public List<Book> queryBookInfo(String barcode, String bookName, int bookType, 
			String publishDate, int currentPage) {
		
		PageHelper.startPage(currentPage, 10);
		List<Book> bookListAd = bookMapper.calculateTotalPageAndRecordNumber(barcode, bookName, bookType, publishDate);
		
//		Session s = factory.getCurrentSession();
//    	String hql = "From Book book where 1=1";
//    	if(!barcode.equals("")) hql = hql + " and book.barcode like '%" + barcode + "%'";
//    	if(!bookName.equals("")) hql = hql + " and book.bookName like '%" + bookName + "%'";
//    	if(null != bookType && bookType.getBookTypeId()!=0) hql += " and book.bookType.bookTypeId=" + bookType.getBookTypeId();
//    	if(!publishDate.equals("")) hql = hql + " and book.publishDate like '%" + publishDate + "%'";
//    	 Query q = s.createQuery(hql);
//    	/*���㵱ǰ��ʾҳ��Ŀ�ʼ��¼*/
//    	int startIndex = (currentPage-1) * this.PAGE_SIZE;
//    	q.setFirstResult(startIndex);
//    	q.setMaxResults(this.PAGE_SIZE);
//    	List bookList = q.list();
		
    	return bookListAd;
	}
	
	public void calculateTotalPageAndRecordNumber(String barcode, String bookName, 
			int bookType, String publishDate) {
        List<Book> bookList = bookMapper.calculateTotalPageAndRecordNumber(barcode, bookName, bookType, publishDate);
        recordNumber = bookList.size();
        int mod = recordNumber % this.PAGE_SIZE;
        totalPage = recordNumber / this.PAGE_SIZE;
        if(mod != 0) {
        	totalPage++;
        }
        
//        Query q = s.createQuery(hql);
//        List bookList = q.list();
//        recordNumber = bookList.size();
//        int mod = recordNumber % this.PAGE_SIZE;
//        totalPage = recordNumber / this.PAGE_SIZE;
//        if(mod != 0) totalPage++;
	}
}

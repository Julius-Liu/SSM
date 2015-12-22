package com.tgb.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tgb.model.Book;
<<<<<<< HEAD
import com.tgb.model.BookType;
import com.tgb.service.BookService;
import com.tgb.service.BookTypeService;
=======
import com.tgb.service.BookService;
>>>>>>> af17460962b1e93bb1c45c599f87e54ebfe6a2d6

@Controller
@RequestMapping("/book")
public class BookController {
	
	@Autowired
	private BookService bookService;
<<<<<<< HEAD
	@Autowired
	private BookTypeService bookTypeService;
	
	private int currentPage;
    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }
    public int getCurrentPage() {
        return currentPage;
    }
    
    private int totalPage;
    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }
    public int getTotalPage() {
        return totalPage;
    }
    
    private int recordNumber;
    public void setRecordNumber(int recordNumber) {
        this.recordNumber = recordNumber;
    }
    public int getRecordNumber() {
        return recordNumber;
    }
=======
>>>>>>> af17460962b1e93bb1c45c599f87e54ebfe6a2d6
	
	/**
	 * 跳转到添加用户界面
	 * @param request
	 * @return
	 */
	@RequestMapping("/toAddBook")
	public String toAddBook(HttpServletRequest request) {		
		return "/Book/Book_add";
	}
	
	/**
	 * 添加图书并重定向
	 * @param user
	 * @param request
	 * @return
	 */
	@RequestMapping("/addBook")
	public String addBook(Book book, HttpServletRequest request) {
		System.out.println("添加图书");
		bookService.save(book);
		return "redirect:/Book/getAllBook";
	}
	
	/**
	 * 获取所有图书列表
	 * @param request
	 * @return
	 */
	@RequestMapping("/getAllBook")
	public String getAllUser(HttpServletRequest request) {		
<<<<<<< HEAD
		List<Book> bookList = bookService.findAll();	
		List<BookType> bookTypeList = bookTypeService.findAll();

		request.setAttribute("bookList", bookList);
		request.setAttribute("bookTypeList", bookTypeList);
		request.setAttribute("currentPage", currentPage);
=======
		List<Book> findAll = bookService.findAll();		
		request.setAttribute("bookList", findAll);
>>>>>>> af17460962b1e93bb1c45c599f87e54ebfe6a2d6
		return "/Book/Book_all";
	}
	
}

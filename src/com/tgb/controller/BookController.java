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
import com.tgb.service.BookService;

@Controller
@RequestMapping("/book")
public class BookController {
	
	@Autowired
	private BookService bookService;
	
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
		List<Book> findAll = bookService.findAll();		
		request.setAttribute("bookList", findAll);
		return "/Book/Book_all";
	}
	
}

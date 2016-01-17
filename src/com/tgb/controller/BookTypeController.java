package com.tgb.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tgb.model.BookType;
import com.tgb.service.BookTypeService;

@Controller
@RequestMapping("/bookType")
public class BookTypeController {
	@Autowired
	private BookTypeService bookTypeService;	
}

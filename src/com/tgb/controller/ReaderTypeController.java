package com.tgb.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tgb.model.ReaderType;
import com.tgb.service.ReaderTypeService;

@Controller
@RequestMapping("/readerType")
public class ReaderTypeController {
	@Autowired
	private ReaderTypeService readerTypeService;
}

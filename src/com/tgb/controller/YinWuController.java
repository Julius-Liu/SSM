package com.tgb.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tgb.model.YinWu;
import com.tgb.model.BookSpecs;
import com.tgb.model.YinZhang;
import com.tgb.model.PrintStatus;
import com.tgb.model.PrintQuality;

import com.tgb.service.YinWuService;
import com.tgb.service.BookSpecsService;
import com.tgb.service.YinZhangService;
import com.tgb.service.PrintStatusService;
import com.tgb.service.PrintQualityService;

@Controller
@RequestMapping("/yin_wu")
public class YinWuController {
	@Autowired
	private YinWuService yinWuService;
	
	@Autowired
	private BookSpecsService bookSpecsService;
	
	@Autowired
	private YinZhangService yinZhangService;
	
	@Autowired
	private PrintStatusService printStatusService;
	
	@Autowired
	private PrintQualityService printQualityService;
	
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
	
	/**
	 * 跳转到添加 印务 界面
	 * @param request
	 * @return
	 */
	@RequestMapping("/toAddYinWu")
	public String toAddYinWu(HttpServletRequest request) {	
		List<BookSpecs> bookSpecsList = bookSpecsService.findAll();
		List<YinZhang> yinZhangList = yinZhangService.findAll();
		List<PrintStatus> printStatusList = printStatusService.findAll();
		List<PrintQuality> printQualityList = printQualityService.findAll();
		
		request.setAttribute("bookSpecsList", bookSpecsList);
		request.setAttribute("yinZhangList", yinZhangList);
		request.setAttribute("printStatusList", printStatusList);
		request.setAttribute("printQualityList", printQualityList);
		
		return "/yin_wu/yin_wu_add";
	}
	
	/**
	 * 添加 印务 并重定向
	 * @param xuanTi
	 * @param request
	 * @return
	 */
	@RequestMapping("/addYinWu")
	public String addYinWu(YinWu yinWu, HttpServletRequest request) {
		yinWuService.save(yinWu);
		return "redirect:queryYinWu?yin_wu_id=&book_name=&yin_zhang=0&print_status=0&currentPage=1";
	}
	
	/**
	 * 编辑 印务
	 * @param xuanTi
	 * @param request
	 * @return
	 */
	@RequestMapping("/updateYinWu")
	public String updateYinWu(YinWu yinWu, HttpServletRequest request) {	
		if(yinWuService.update(yinWu)) {
			return "redirect:queryYinWu?yin_wu_id=&book_name=&yin_zhang=0&print_status=0&currentPage=1";
		}else {
			return "/error";
		}
	}	
	
	/**
	 * 获取指定 印务 列表
	 * @param request
	 * @return
	 */
	@RequestMapping("/getYinWu")
	public String getYinWu(String id, HttpServletRequest request) {
		YinWu yinWu = yinWuService.findById(id);
		List<BookSpecs> bookSpecsList = bookSpecsService.findAll();
		List<YinZhang> yinZhangList = yinZhangService.findAll();
		List<PrintStatus> printStatusList = printStatusService.findAll();
		List<PrintQuality> printQualityList = printQualityService.findAll();
				
		request.setAttribute("yinWu", yinWu);
		request.setAttribute("bookSpecsList", bookSpecsList);
		request.setAttribute("yinZhangList", yinZhangList);
		request.setAttribute("printStatusList", printStatusList);
		request.setAttribute("printQualityList", printQualityList);

		return "/yin_wu/yin_wu_edit";
	}
	
	/**
	 * 查看指定 印务 详细内容
	 * @param request
	 * @return
	 */
	@RequestMapping("/checkYinWu")
	public String checkYinWu(String id, HttpServletRequest request) {
		YinWu yinWu = yinWuService.findById(id);
		List<BookSpecs> bookSpecsList = bookSpecsService.findAll();
		List<YinZhang> yinZhangList = yinZhangService.findAll();
		List<PrintStatus> printStatusList = printStatusService.findAll();
		List<PrintQuality> printQualityList = printQualityService.findAll();
				
		request.setAttribute("yinWu", yinWu);
		request.setAttribute("bookSpecsList", bookSpecsList);
		request.setAttribute("yinZhangList", yinZhangList);
		request.setAttribute("printStatusList", printStatusList);
		request.setAttribute("printQualityList", printQualityList);

		return "/yin_wu/yin_wu_details";
	}	
	
	/**
	 * 删除 印务
	 * @param id
	 * @param request
	 * @param response
	 */
	@RequestMapping("/delYinWu")
	public void delYinWu(String id, HttpServletRequest request, HttpServletResponse response) {
		String result = "{\"result\":\"error\"}";		
		System.out.println("id = " + id);
		if(yinWuService.delete(id)) {
			result = "{\"result\":\"success\"}";
		}
		
		response.setContentType("application/json");
		
		try {
			PrintWriter out = response.getWriter();
			out.write(result);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}	
	
	/**
	 * 查询 印务 列表
	 * @param request
	 * @return
	 */
	@RequestMapping("/queryYinWu")
	public String queryYinWu(
			@RequestParam(value="yin_wu_id", required=false)String yin_wu_id, 
			@RequestParam(value="book_name", required=false)String book_name, 
			@RequestParam(value="yin_zhang", required=false)int yin_zhang,
			@RequestParam(value="print_status", required=false)int print_status,
			@RequestParam(value="currentPage", required=false)int currentPage, 
			HttpServletRequest request) {
		System.out.println("yin_wu_id: " + yin_wu_id);
		System.out.println("book_name: " + book_name);
		System.out.println("yin_zhang: " + yin_zhang);
		System.out.println("print_status: " + print_status);
		System.out.println("currentPage: " + currentPage);
		
		List<BookSpecs> bookSpecsList = bookSpecsService.findAll();
		List<YinZhang> yinZhangList = yinZhangService.findAll();
		List<PrintStatus> printStatusList = printStatusService.findAll();
		List<PrintQuality> printQualityList = printQualityService.findAll();
		
		List<YinWu> yinWuList = yinWuService.queryYinWuInfo(yin_wu_id, book_name, yin_zhang, print_status, currentPage);
		
        /*计算总的页数和总的记录数*/
		yinWuService.calculateTotalPageAndRecordNumber(yin_wu_id, book_name, yin_zhang, print_status);
		
        /*获取到总的页码数目*/
        totalPage = yinWuService.getTotalPage();
        /*当前查询条件下总记录数*/
        recordNumber = yinWuService.getRecordNumber();
        
        request.setAttribute("yin_wu_id", yin_wu_id);
        request.setAttribute("book_name", book_name);
        request.setAttribute("yin_zhang", yin_zhang);
        request.setAttribute("print_status", print_status);
        
		request.setAttribute("yinWuList", yinWuList);
		
		request.setAttribute("bookSpecsList", bookSpecsList);
		request.setAttribute("yinZhangList", yinZhangList);
		request.setAttribute("printStatusList", printStatusList);
		request.setAttribute("printQualityList", printQualityList);
		
		request.setAttribute("recordNumber", recordNumber);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("totalPage", totalPage);
		return "/yin_wu/yin_wu_all";
	}	
}

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

import com.tgb.model.RuKu;
import com.tgb.service.RuKuService;

@Controller
@RequestMapping("/ru_ku")
public class RuKuController {
	@Autowired
	private RuKuService ruKuService;
	
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
	 * 跳转到添加 入库 界面
	 * @param request
	 * @return
	 */
	@RequestMapping("/toAddRuKu")
	public String toAddRuKu(HttpServletRequest request) {			
		return "/ru_ku/ru_ku_add";
	}
	
	/**
	 * 添加 入库 并重定向
	 * @param bianShen
	 * @param request
	 * @return
	 */
	@RequestMapping("/addRuKu")
	public String addRuKu(RuKu ruKu, HttpServletRequest request) {
		ruKuService.save(ruKu);
		return "redirect:queryRuKu?order_id=&deliver_company=&book_name=&receive_man=&currentPage=1";
	}
	
	/**
	 * 编辑 编审
	 * @param bianShen
	 * @param request
	 * @return
	 */
	@RequestMapping("/updateRuKu")
	public String updateRuKu(RuKu ruKu, HttpServletRequest request) {	
		if(ruKuService.update(ruKu)) {
			return "redirect:queryRuKu?order_id=&deliver_company=&book_name=&receive_man=&currentPage=1";
		}else {
			return "/error";
		}
	}	
	
	/**
	 * 获取指定 入库 列表
	 * @param request
	 * @return
	 */
	@RequestMapping("/getRuKu")
	public String getRuKu(int id, HttpServletRequest request) {
		RuKu ruKu = ruKuService.findById(id);
				
		request.setAttribute("ruKu", ruKu);

		return "/ru_ku/ru_ku_edit";
	}
	
	/**
	 * 查看指定 编审 详细内容
	 * @param request
	 * @return
	 */
	@RequestMapping("/checkRuKu")
	public String checkRuKu(int id, HttpServletRequest request) {
		RuKu ruKu = ruKuService.findById(id);
		
		request.setAttribute("ruKu", ruKu);

		return "/ru_ku/ru_ku_details";
	}	
	
	/**
	 * 删除 编审
	 * @param id
	 * @param request
	 * @param response
	 */
	@RequestMapping("/delRuKu")
	public void delRuKu(int id, HttpServletRequest request, HttpServletResponse response) {
		String result = "{\"result\":\"error\"}";		
		if(ruKuService.delete(id)) {
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
	 * 查询 入库 列表
	 * @param request
	 * @return
	 */
	@RequestMapping("/queryRuKu")
	public String queryRuKu(
			@RequestParam(value="order_id", required=false)String order_id,
			@RequestParam(value="deliver_company", required=false)String deliver_company, 
			@RequestParam(value="book_name", required=false)String book_name,			
			@RequestParam(value="receive_man", required=false)String receive_man, 
			@RequestParam(value="currentPage", required=false)int currentPage, 
			HttpServletRequest request) {
		System.out.println("order_id: " + order_id);
		System.out.println("deliver_company: " + deliver_company);
		System.out.println("book_name: " + book_name);		
		System.out.println("receive_man: " + receive_man);
		System.out.println("currentPage: " + currentPage);
		
		List<RuKu> ruKuList = ruKuService.queryRuKuInfo(order_id, deliver_company, book_name, receive_man, currentPage);
		
        /*计算总的页数和总的记录数*/
		ruKuService.calculateTotalPageAndRecordNumber(order_id, deliver_company, book_name, receive_man);
		
        /*获取到总的页码数目*/
        totalPage = ruKuService.getTotalPage();
        /*当前查询条件下总记录数*/
        recordNumber = ruKuService.getRecordNumber();
        
        request.setAttribute("order_id", order_id);
        request.setAttribute("deliver_company", deliver_company);
        request.setAttribute("book_name", book_name);        
        request.setAttribute("receive_man", receive_man);
        
		request.setAttribute("ruKuList", ruKuList);
		
		request.setAttribute("recordNumber", recordNumber);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("totalPage", totalPage);
		return "/ru_ku/ru_ku_all";
	}
}

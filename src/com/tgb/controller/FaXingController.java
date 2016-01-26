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

import com.tgb.model.FaXing;
import com.tgb.service.FaXingService;

@Controller
@RequestMapping("/fa_xing")
public class FaXingController {
	@Autowired
	private FaXingService faXingService;	
	
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
	 * 跳转到添加 发行 界面
	 * @param request
	 * @return
	 */
	@RequestMapping("/toAddFaXing")
	public String toAddFaXing(HttpServletRequest request) {			
		return "/fa_xing/fa_xing_add";
	}
	
	/**
	 * 添加 发行 并重定向
	 * @param xuanTi
	 * @param request
	 * @return
	 */
	@RequestMapping("/addFaXing")
	public String addFaXing(FaXing faXing, HttpServletRequest request) {
		faXingService.save(faXing);
		return "redirect:queryFaXing?fa_xing_id=&book_name=&order_receipt=&contact_person=&currentPage=1";
	}
	
	/**
	 * 编辑 发行
	 * @param xuanTi
	 * @param request
	 * @return
	 */
	@RequestMapping("/updateFaXing")
	public String updateFaXing(FaXing faXing, HttpServletRequest request) {	
		if(faXingService.update(faXing)) {
			return "redirect:queryFaXing?fa_xing_id=&book_name=&order_receipt=&contact_person=&currentPage=1";
		}else {
			return "/error";
		}
	}	
	
	/**
	 * 获取指定 发行 列表
	 * @param request
	 * @return
	 */
	@RequestMapping("/getFaXing")
	public String getFaXing(String id, HttpServletRequest request) {
		FaXing faXing = faXingService.findById(id);
				
		request.setAttribute("faXing", faXing);

		return "/fa_xing/fa_xing_edit";
	}
	
	/**
	 * 查看指定 发行 详细内容
	 * @param request
	 * @return
	 */
	@RequestMapping("/checkFaXing")
	public String checkFaXing(String id, HttpServletRequest request) {
		FaXing faXing = faXingService.findById(id);
				
		request.setAttribute("faXing", faXing);
		
		return "/fa_xing/fa_xing_details";
	}	
	
	/**
	 * 删除 发行
	 * @param id
	 * @param request
	 * @param response
	 */
	@RequestMapping("/delFaXing")
	public void delFaXing(String id, HttpServletRequest request, HttpServletResponse response) {
		String result = "{\"result\":\"error\"}";		
		System.out.println("id = " + id);
		if(faXingService.delete(id)) {
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
	 * 查询 发行 列表
	 * @param request
	 * @return
	 */
	@RequestMapping("/queryFaXing")
	public String queryFaXing(
			@RequestParam(value="fa_xing_id", required=false)String fa_xing_id, 
			@RequestParam(value="book_name", required=false)String book_name,
			@RequestParam(value="order_receipt", required=false)String order_receipt,
			@RequestParam(value="contact_person", required=false)String contact_person, 
			@RequestParam(value="currentPage", required=false)int currentPage, 
			HttpServletRequest request) {
		System.out.println("fa_xing_id: " + fa_xing_id);		
		System.out.println("book_name: " + book_name);
		System.out.println("order_receipt: " + order_receipt);
		System.out.println("contact_person: " + contact_person);
		System.out.println("currentPage: " + currentPage);
		
		List<FaXing> faXingList = faXingService.queryFaXingInfo(fa_xing_id, book_name, order_receipt, contact_person, currentPage);
		
        /*计算总的页数和总的记录数*/
		faXingService.calculateTotalPageAndRecordNumber(fa_xing_id, book_name, order_receipt, contact_person);
		
        /*获取到总的页码数目*/
        totalPage = faXingService.getTotalPage();
        /*当前查询条件下总记录数*/
        recordNumber = faXingService.getRecordNumber();
        
        request.setAttribute("fa_xing_id", fa_xing_id);        
        request.setAttribute("book_name", book_name);
        request.setAttribute("order_receipt", order_receipt);
        request.setAttribute("contact_person", contact_person);
        
		request.setAttribute("faXingList", faXingList);
		
		request.setAttribute("recordNumber", recordNumber);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("totalPage", totalPage);
		return "/fa_xing/fa_xing_all";
	}	
}

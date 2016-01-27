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

import com.tgb.model.ChuKu;
import com.tgb.model.Transportation;

import com.tgb.service.ChuKuService;
import com.tgb.service.TransportationService;

@Controller
@RequestMapping("/chu_ku")
public class ChuKuController {
	@Autowired
	private ChuKuService chuKuService;
	
	@Autowired
	private TransportationService transportationService;
	
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
	 * 跳转到添加 出库 界面
	 * @param request
	 * @return
	 */
	@RequestMapping("/toAddChuKu")
	public String toAddChuKu(HttpServletRequest request) {	
		List<Transportation> transportationList = transportationService.findAll();
		
		request.setAttribute("transportationList", transportationList);
		
		return "/chu_ku/chu_ku_add";
	}
	
	/**
	 * 添加 出库 并重定向
	 * @param chuKu
	 * @param request
	 * @return
	 */
	@RequestMapping("/addChuKu")
	public String addChuKu(ChuKu chuKu, HttpServletRequest request) {
		chuKuService.save(chuKu);
		return "redirect:queryChuKu?customer_name=&deliver_man=&book_name=&contact_person=&currentPage=1";
	}
	
	/**
	 * 编辑 出库
	 * @param xuanTi
	 * @param request
	 * @return
	 */
	@RequestMapping("/updateChuKu")
	public String updateChuKu(ChuKu chuKu, HttpServletRequest request) {	
		if(chuKuService.update(chuKu)) {
			return "redirect:queryXuanTi?customer_name=&deliver_man=&book_name=&contact_person=&currentPage=1";
		}else {
			return "/error";
		}
	}	
	
	/**
	 * 获取指定 出库 列表
	 * @param request
	 * @return
	 */
	@RequestMapping("/getChuKu")
	public String getChuKu(String id, HttpServletRequest request) {
		ChuKu chuKu = chuKuService.findById(id);
		List<Transportation> transportationList = transportationService.findAll();
				
		request.setAttribute("chuKu", chuKu);
		request.setAttribute("transportationList", transportationList);

		return "/chu_ku/chu_ku_edit";
	}
	
	/**
	 * 查看指定 出库 详细内容
	 * @param request
	 * @return
	 */
	@RequestMapping("/checkChuKu")
	public String checkChuKu(String id, HttpServletRequest request) {
		ChuKu chuKu = chuKuService.findById(id);
		List<Transportation> transportationList = transportationService.findAll();
				
		request.setAttribute("chuKu", chuKu);
		request.setAttribute("transportationList", transportationList);
		
		return "/chu_ku/chu_ku_details";
	}	
	
	/**
	 * 删除 出库
	 * @param id
	 * @param request
	 * @param response
	 */
	@RequestMapping("/delChuKu")
	public void delChuKu(String id, HttpServletRequest request, HttpServletResponse response) {
		String result = "{\"result\":\"error\"}";		
		System.out.println("id = " + id);
		if(chuKuService.delete(id)) {
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
	 * 查询 出库 列表
	 * @param request
	 * @return
	 */
	@RequestMapping("/queryChuKu")
	public String queryChuKu(
			@RequestParam(value="customer_name", required=false)String customer_name, 
			@RequestParam(value="deliver_man", required=false)String deliver_man,
			@RequestParam(value="book_name", required=false)String book_name,
			@RequestParam(value="contact_person", required=false)String contact_person, 
			@RequestParam(value="currentPage", required=false)int currentPage, 
			HttpServletRequest request) {
		System.out.println("customer_name: " + customer_name);		
		System.out.println("deliver_man: " + deliver_man);
		System.out.println("book_name: " + book_name);
		System.out.println("contact_person: " + contact_person);
		System.out.println("currentPage: " + currentPage);
		
		List<Transportation> transportationList = transportationService.findAll();
		
		List<ChuKu> chuKuList = chuKuService.queryChuKuInfo(customer_name, deliver_man, book_name, contact_person, currentPage);
		
        /*计算总的页数和总的记录数*/
		chuKuService.calculateTotalPageAndRecordNumber(customer_name, deliver_man, book_name, contact_person);
		
        /*获取到总的页码数目*/
        totalPage = chuKuService.getTotalPage();
        /*当前查询条件下总记录数*/
        recordNumber = chuKuService.getRecordNumber();
        
        request.setAttribute("customer_name", customer_name);        
        request.setAttribute("deliver_man", deliver_man);
        request.setAttribute("book_name", book_name);
        request.setAttribute("contact_person", contact_person);
        
		request.setAttribute("chuKuList", chuKuList);
		
		request.setAttribute("transportationList", transportationList);
		
		request.setAttribute("recordNumber", recordNumber);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("totalPage", totalPage);
		return "/chu_ku/chu_ku_all";
	}	
}

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

import com.tgb.model.BianShen;
import com.tgb.model.BianShenStatus;

import com.tgb.service.BianShenService;
import com.tgb.service.BianShenStatusService;

@Controller
@RequestMapping("/bian_shen")
public class BianShenController {
	@Autowired
	private BianShenService bianShenService;
	
	@Autowired
	private BianShenStatusService bianShenStatusService;
	
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
	 * 跳转到添加 编审 界面
	 * @param request
	 * @return
	 */
	@RequestMapping("/toAddBianShen")
	public String toAddBianShen(HttpServletRequest request) {	
		List<BianShenStatus> bianShenStatusList = bianShenStatusService.findAll();
		
		request.setAttribute("bianShenStatusList", bianShenStatusList);
		
		return "/bian_shen/bian_shen_add";
	}
	
	/**
	 * 添加 编审 并重定向
	 * @param bianShen
	 * @param request
	 * @return
	 */
	@RequestMapping("/addBianShen")
	public String addBianShen(BianShen bianShen, HttpServletRequest request) {
		bianShenService.save(bianShen);
		return "redirect:queryBianShen?book_name=&original_author=&ze_ren_editor=&bian_shen_status=0&currentPage=1";
	}
	
	/**
	 * 编辑 编审
	 * @param bianShen
	 * @param request
	 * @return
	 */
	@RequestMapping("/updateBianShen")
	public String updateBianShen(BianShen bianShen, HttpServletRequest request) {	
		if(bianShenService.update(bianShen)) {
			return "redirect:queryBianShen?book_name=&original_author=&ze_ren_editor=&bian_shen_status=0&currentPage=1";
		}else {
			return "/error";
		}
	}	
	
	/**
	 * 获取指定 编审 列表
	 * @param request
	 * @return
	 */
	@RequestMapping("/getBianShen")
	public String getBianShen(int id, HttpServletRequest request) {
		BianShen bianShen = bianShenService.findById(id);
		List<BianShenStatus> bianShenStatusList = bianShenStatusService.findAll();
				
		request.setAttribute("bianShen", bianShen);
		request.setAttribute("bianShenStatusList", bianShenStatusList);

		return "/bian_shen/bian_shen_edit";
	}
	
	/**
	 * 查看指定 编审 详细内容
	 * @param request
	 * @return
	 */
	@RequestMapping("/checkBianShen")
	public String checkBianShen(int id, HttpServletRequest request) {
		BianShen bianShen = bianShenService.findById(id);
		List<BianShenStatus> bianShenStatusList = bianShenStatusService.findAll();
				
		request.setAttribute("bianShen", bianShen);
		request.setAttribute("bianShenStatusList", bianShenStatusList);

		return "/bian_shen/bian_shen_details";
	}	
	
	/**
	 * 删除 编审
	 * @param id
	 * @param request
	 * @param response
	 */
	@RequestMapping("/delBianShen")
	public void delBianShen(int id, HttpServletRequest request, HttpServletResponse response) {
		String result = "{\"result\":\"error\"}";		
		if(bianShenService.delete(id)) {
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
	 * 查询 编审 列表
	 * @param request
	 * @return
	 */
	@RequestMapping("/queryBianShen")
	public String queryBianShen(
			@RequestParam(value="book_name", required=false)String book_name,
			@RequestParam(value="original_author", required=false)String original_author, 
			@RequestParam(value="ze_ren_editor", required=false)String ze_ren_editor,			
			@RequestParam(value="bian_shen_status", required=false)int bian_shen_status, 
			@RequestParam(value="currentPage", required=false)int currentPage, 
			HttpServletRequest request) {
		System.out.println("book_name: " + book_name);
		System.out.println("original_author: " + original_author);
		System.out.println("ze_ren_editor: " + ze_ren_editor);		
		System.out.println("bian_shen_status: " + bian_shen_status);
		System.out.println("currentPage: " + currentPage);
		
		List<BianShenStatus> bianShenStatusList = bianShenStatusService.findAll();
		
		List<BianShen> bianShenList = bianShenService.queryBianShenInfo(book_name, original_author, ze_ren_editor, bian_shen_status, currentPage);
		
        /*计算总的页数和总的记录数*/
		bianShenService.calculateTotalPageAndRecordNumber(book_name, original_author, ze_ren_editor, bian_shen_status);
		
        /*获取到总的页码数目*/
        totalPage = bianShenService.getTotalPage();
        /*当前查询条件下总记录数*/
        recordNumber = bianShenService.getRecordNumber();
        
        request.setAttribute("book_name", book_name);
        request.setAttribute("original_author", original_author);
        request.setAttribute("ze_ren_editor", ze_ren_editor);        
        request.setAttribute("bian_shen_status", bian_shen_status);
        
		request.setAttribute("bianShenList", bianShenList);
		
		request.setAttribute("bianShenStatusList", bianShenStatusList);
		
		request.setAttribute("recordNumber", recordNumber);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("totalPage", totalPage);
		return "/bian_shen/bian_shen_all";
	}
}

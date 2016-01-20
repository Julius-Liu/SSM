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

import com.tgb.model.XuanTi;
import com.tgb.model.XuanTiType;
import com.tgb.model.GaoJianSource;
import com.tgb.model.ChuShenComments;
import com.tgb.model.XuanTiStatus;

import com.tgb.service.XuanTiService;
import com.tgb.service.XuanTiTypeService;
import com.tgb.service.GaoJianSourceService;
import com.tgb.service.ChuShenCommentsService;
import com.tgb.service.XuanTiStatusService;

@Controller
@RequestMapping("/xuan_ti")
public class XuanTiController {
	@Autowired
	private XuanTiService xuanTiService;
	
	@Autowired
	private XuanTiTypeService xuanTiTypeService;
	
	@Autowired
	private GaoJianSourceService gaoJianSourceService;
	
	@Autowired
	private ChuShenCommentsService chuShenCommentsService;
	
	@Autowired
	private XuanTiStatusService xuanTiStatusService;
	
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
	 * 跳转到添加 选题 界面
	 * @param request
	 * @return
	 */
	@RequestMapping("/toAddXuanTi")
	public String toAddXuanTi(HttpServletRequest request) {	
		List<XuanTiType> xuanTiTypeList = xuanTiTypeService.findAll();
		List<GaoJianSource> gaoJianSourceList = gaoJianSourceService.findAll();
		List<ChuShenComments> chuShenCommentsList = chuShenCommentsService.findAll();
		List<XuanTiStatus> xuanTiStatusList = xuanTiStatusService.findAll();
		
		request.setAttribute("xuanTiTypeList", xuanTiTypeList);
		request.setAttribute("gaoJianSourceList", gaoJianSourceList);
		request.setAttribute("chuShenCommentsList", chuShenCommentsList);
		request.setAttribute("xuanTiStatusList", xuanTiStatusList);
		
		return "/xuan_ti/xuan_ti_add";
	}
	
	/**
	 * 添加 选题 并重定向
	 * @param xuanTi
	 * @param request
	 * @return
	 */
	@RequestMapping("/addXuanTi")
	public String addXuanTi(XuanTi xuanTi, HttpServletRequest request) {
		xuanTiService.save(xuanTi);
		return "redirect:queryXuanTi?type=0&currentPage=1";
	}
	
	/**
	 * 编辑 选题
	 * @param xuanTi
	 * @param request
	 * @return
	 */
	@RequestMapping("/updateXuanTi")
	public String updateXuanTi(XuanTi xuanTi, HttpServletRequest request) {	
		if(xuanTiService.update(xuanTi)) {
			xuanTi = xuanTiService.findById(xuanTi.getId());
			request.setAttribute("xuanTi", xuanTi);
			return "redirect:queryXuanTi?id=&type=0&year=&book_name=&currentPage=1";
		}else {
			return "/error";
		}
	}	
	
	/**
	 * 获取指定 选题 列表
	 * @param request
	 * @return
	 */
	@RequestMapping("/getXuanTi")
	public String getXuanTi(String id, HttpServletRequest request) {
		XuanTi xuanTi = xuanTiService.findById(id);
		List<XuanTiType> xuanTiTypeList = xuanTiTypeService.findAll();
		List<GaoJianSource> gaoJianSourceList = gaoJianSourceService.findAll();
		List<ChuShenComments> chuShenCommentsList = chuShenCommentsService.findAll();
		List<XuanTiStatus> xuanTiStatusList = xuanTiStatusService.findAll();
				
		request.setAttribute("xuanTi", xuanTi);
		request.setAttribute("xuanTiTypeList", xuanTiTypeList);
		request.setAttribute("gaoJianSourceList", gaoJianSourceList);
		request.setAttribute("chuShenCommentsList", chuShenCommentsList);
		request.setAttribute("xuanTiStatusList", xuanTiStatusList);

		return "/xuan_ti/xuan_ti_edit";
	}
	
	/**
	 * 查看指定 选题 详细内容
	 * @param request
	 * @return
	 */
	@RequestMapping("/checkXuanTi")
	public String checkXuanTi(String id, HttpServletRequest request) {
		XuanTi xuanTi = xuanTiService.findById(id);
		List<XuanTiType> xuanTiTypeList = xuanTiTypeService.findAll();
		List<GaoJianSource> gaoJianSourceList = gaoJianSourceService.findAll();
		List<ChuShenComments> chuShenCommentsList = chuShenCommentsService.findAll();
		List<XuanTiStatus> xuanTiStatusList = xuanTiStatusService.findAll();
				
		request.setAttribute("xuanTi", xuanTi);
		request.setAttribute("xuanTiTypeList", xuanTiTypeList);
		request.setAttribute("gaoJianSourceList", gaoJianSourceList);
		request.setAttribute("chuShenCommentsList", chuShenCommentsList);
		request.setAttribute("xuanTiStatusList", xuanTiStatusList);
		
		request.setAttribute("xuanTi", xuanTiService.findById(id));
		return "/xuan_ti/xuan_ti_details";
	}	
	
	/**
	 * 删除用户
	 * @param id
	 * @param request
	 * @param response
	 */
	@RequestMapping("/delXuanTi")
	public void delXuanTi(String id, HttpServletRequest request, HttpServletResponse response) {
		String result = "{\"result\":\"error\"}";		
		if(xuanTiService.delete(id)) {
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
	 * 查询 选题 列表
	 * @param request
	 * @return
	 */
	@RequestMapping("/queryXuanTi")
	public String queryXuanTi(
			@RequestParam(value="id", required=false)String id, 
			@RequestParam(value="type", required=false)int type,
			@RequestParam(value="year", required=false)String year,
			@RequestParam(value="book_name", required=false)String book_name, 
			@RequestParam(value="currentPage", required=false)int currentPage, 
			HttpServletRequest request) {
		System.out.println("id: " + id);
		System.out.println("type: " + type);
		System.out.println("year: " + year);
		System.out.println("book_name: " + book_name);
		System.out.println("currentPage: " + currentPage);
		
		List<XuanTiType> xuanTiTypeList = xuanTiTypeService.findAll();
		List<GaoJianSource> gaoJianSourceList = gaoJianSourceService.findAll();
		List<ChuShenComments> chuShenCommentsList = chuShenCommentsService.findAll();
		List<XuanTiStatus> xuanTiStatusList = xuanTiStatusService.findAll();
		
		List<XuanTi> xuanTiList = xuanTiService.queryXuanTiInfo(id, type, year, book_name, currentPage);
		
        /*计算总的页数和总的记录数*/
		xuanTiService.calculateTotalPageAndRecordNumber(id, type, year, book_name);
		
        /*获取到总的页码数目*/
        totalPage = xuanTiService.getTotalPage();
        /*当前查询条件下总记录数*/
        recordNumber = xuanTiService.getRecordNumber();
        
        request.setAttribute("id", id);
        request.setAttribute("type", type);
        request.setAttribute("year", year);
        request.setAttribute("book_name", book_name);
        
		request.setAttribute("xuanTiList", xuanTiList);
		
		request.setAttribute("xuanTiTypeList", xuanTiTypeList);
		request.setAttribute("gaoJianSourceList", gaoJianSourceList);
		request.setAttribute("chuShenCommentsList", chuShenCommentsList);
		request.setAttribute("xuanTiStatusList", xuanTiStatusList);
		
		request.setAttribute("recordNumber", recordNumber);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("totalPage", totalPage);
		return "/xuan_ti/xuan_ti_all";
	}	
}

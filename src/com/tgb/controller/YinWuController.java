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
	 * 添加 选题 并重定向
	 * @param xuanTi
	 * @param request
	 * @return
	 */
	@RequestMapping("/addXuanTi")
	public String addXuanTi(XuanTi xuanTi, HttpServletRequest request) {
		xuanTiService.save(xuanTi);
		return "redirect:queryXuanTi?xuan_ti_id=&type=0&year=&book_name=&currentPage=1";
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
			return "redirect:queryXuanTi?xuan_ti_id=&type=0&year=&book_name=&currentPage=1";
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
	 * 删除 选题
	 * @param id
	 * @param request
	 * @param response
	 */
	@RequestMapping("/delXuanTi")
	public void delXuanTi(String id, HttpServletRequest request, HttpServletResponse response) {
		String result = "{\"result\":\"error\"}";		
		System.out.println("id = " + id);
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
			@RequestParam(value="xuan_ti_id", required=false)String xuan_ti_id, 
			@RequestParam(value="type", required=false)int type,
			@RequestParam(value="year", required=false)String year,
			@RequestParam(value="book_name", required=false)String book_name, 
			@RequestParam(value="currentPage", required=false)int currentPage, 
			HttpServletRequest request) {
		System.out.println("xuan_ti_id: " + xuan_ti_id);
		System.out.println("type: " + type);
		System.out.println("year: " + year);
		System.out.println("book_name: " + book_name);
		System.out.println("currentPage: " + currentPage);
		
		List<XuanTiType> xuanTiTypeList = xuanTiTypeService.findAll();
		List<GaoJianSource> gaoJianSourceList = gaoJianSourceService.findAll();
		List<ChuShenComments> chuShenCommentsList = chuShenCommentsService.findAll();
		List<XuanTiStatus> xuanTiStatusList = xuanTiStatusService.findAll();
		
		List<XuanTi> xuanTiList = xuanTiService.queryXuanTiInfo(xuan_ti_id, type, year, book_name, currentPage);
		
        /*计算总的页数和总的记录数*/
		xuanTiService.calculateTotalPageAndRecordNumber(xuan_ti_id, type, year, book_name);
		
        /*获取到总的页码数目*/
        totalPage = xuanTiService.getTotalPage();
        /*当前查询条件下总记录数*/
        recordNumber = xuanTiService.getRecordNumber();
        
        request.setAttribute("xuan_ti_id", xuan_ti_id);
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

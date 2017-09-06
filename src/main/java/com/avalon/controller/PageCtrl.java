package com.avalon.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageCtrl {
	
	/**
	 * 
	 * @方法名: gotoPage
	 * @功能描述:  页面跳转目标路径（WEB-INF下的JSP目录中）
	 * @参数：@param
	 * @返回：@return
	 * @创建人: Mr
	 * @创建时间： 2015-8-19 下午02:04:56
	 */
	@RequestMapping("/jump")
	public String gotoPage(String jsp) throws Exception{
		
		if (jsp == null) {
			throw new Exception("跳转路径为空！");
		}
		return jsp;
	}
	
	/**
	 * 
	 * @方法名: gotoPageAndParam
	 * @功能描述: 页面跳转，增加参数
	 * @参数：@param
	 * @返回：@return
	 * @创建人: Mr
	 * @创建时间： 2015-8-19 下午02:05:12
	 */
	@RequestMapping("/jumps")
	public String gotoPageAndParam(String jsp,String id,HttpServletRequest request) throws Exception{
		
		if (jsp == null) {
			throw new Exception("跳转路径为空！");
		}
		request.setAttribute("id", id);
		return jsp;
	} 

}

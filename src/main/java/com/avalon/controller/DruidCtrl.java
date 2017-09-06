package com.avalon.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
 * @类名: DruidCtrl
 * @功能描述:数据源控制器
 * @类创建人: Mr
 * @类创建时间： 2015-8-19 下午02:04:21
 */
@Controller
@RequestMapping("/druidCtrl")
public class DruidCtrl {

	/**
	 * 
	 * @方法名: druid
	 * @功能描述: 转向到数据源监控页面
	 * @参数：@param
	 * @返回：@return
	 * @创建人: Mr
	 * @创建时间： 2015-8-19 下午02:04:38
	 */
	@RequestMapping("/druid")
	public String druid() {
		return "redirect:/druid/index.html";
	}

}

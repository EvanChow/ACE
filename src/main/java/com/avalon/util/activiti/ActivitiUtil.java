package com.avalon.util.activiti;

import java.io.File;

public class ActivitiUtil {
	
    /**
     * 
     * @方法名: list
     * @功能描述:获取工作流流程文件
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： 2016-7-7 下午03:50:23
     */
	public static String[] list(){
		String basePath=ActivitiUtil.class.getResource("/").getPath();
		basePath=basePath.substring(1,basePath.length());
		return new File(basePath+File.separator+"diagrams").list();
	}
	
	/**
	 * 
	 * @方法名: listRoot
	 * @功能描述: 获取根目录下文件列表
	 * @参数：@param
	 * @返回：@return
	 * @创建人: Evan
	 * @创建时间： 2016-10-28 下午04:20:36
	 */
	public static String[] listRoot(String path){
        String basePath=ActivitiUtil.class.getResource("/").getPath();
        basePath=basePath.substring(1,basePath.length());
        String pathname=basePath+File.separator+path;
        System.out.println("pathname=="+pathname);
        return new File(pathname).list();
    }

}

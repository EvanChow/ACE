package com.avalon.util;


import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

/**
 * 
 * @类名: LoadProperty
 * @功能描述:获取property配置文件信息
 * @类创建人: Evan
 * @类创建时间： 2014-6-18 上午10:08:12
 */
public class ReaderProperty {

	/**
	 * 
	 * @方法名: wsAddress
	 * @功能描述: (这里用一句话描述这个方法的作用)
	 * @参数：@param
	 * @返回：@return
	 * @创建人: Evan
	 * @创建时间： 2014-6-18 上午10:07:58
	 */
	public static String wsAddress(String name,String name1) {
		Properties properties = new Properties();
		//通过类加载的方式读取配置信息
		//InputStream in = LoadProperty.class.getClassLoader().getResourceAsStream("gmmnoc.properties");
		//通过类加载的方式加载配置文件路径信息 在以普通流方式读取 这样可以动态的改变配置文件的内容
		String path=ReaderProperty.class.getClassLoader().getResource(name).getPath();
		try {
			FileInputStream in=new FileInputStream(path);
			properties.load(in);
		} catch (IOException e1) {
			e1.printStackTrace();
		}
		return (String) properties.get(name1);
	}
	
	/**
	 * 
	 * @方法名: getProper
	 * @功能描述: (这里用一句话描述这个方法的作用)
	 * @参数：@param
	 * @返回：@return
	 * @创建人: Evan
	 * @创建时间： 2014-7-15 下午05:17:57
	 */
	public static Properties getProper(String address){ 
		Properties props = new Properties();
		String path=ReaderProperty.class.getClassLoader().getResource(address).getPath();
		FileInputStream in;
		try {
			in = new FileInputStream(path);
			props.load(in);
		} catch (IOException e) {
			props=null;
			e.printStackTrace();
		}
	
		return props;
	}

}

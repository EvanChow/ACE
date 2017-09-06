package com.avalon.util;

import java.io.UnsupportedEncodingException;
import java.util.Map;

import com.alibaba.fastjson.JSON;

public class StringUtil {

    public static String ObjToStr(Object obj){
        return  obj==null?"":obj.toString();
     }
     
      public static int ObjToNum(Object obj){
         return  obj==null?0:Integer.parseInt(obj.toString());
      }
      
      public static String ObjToJSONStr(Object obj){
          return obj==null?"{}":JSON.toJSON(obj).toString();
      }
      
      @SuppressWarnings("unchecked")
    public static Map JSONStrToMap(String json){
          return (Map)JSON.parse(json);
      }
     
	/**
	 * 
	 * @方法名: isBlank
	 * @功能描述: String工具类
	 * @参数：@param
	 * @返回：@return
	 * @创建人: Evan
	 * @创建时间： 2015-8-19 下午02:18:43
	 */
	public static boolean isBlank(String str) {
		if (str != null && !str.trim().equals(""))
			return false;
		else
			return true;
	}

	public static boolean isBlank(Object obj) {
		if (obj != null && !obj.toString().trim().equals(""))
			return false;
		else
			return true;
	}

	public static boolean isNotBlank(String str) {
		return !isBlank(str);
	}

	/** 半角全角开头，或结尾 */
	public static String reg = "^([ ]|[　])+|([ ]|[　])+$";

	/**
	 * 去掉首尾空格,包括大小写
	 * 
	 * @param str
	 * @return
	 */
	public static String trim(String str) {
		if (str == null) {
			return "";
		}
		return str.replaceAll(",", "");
	}

	/**
	 * 去掉首位的，
	 * 
	 * @param str
	 * @return
	 */
	public static String replaceFirstStr(String str) {
		if (str == null) {
			return "";
		}
		return str.replaceFirst(",", "");

	}

	public static boolean isNumeric(String str) {
		for (int i = 0; i < str.length(); i++) {
			if (!Character.isDigit(str.charAt(i))) {
				return false;
			}
		}
		return true;
	}

	// 生成6位随机数
	public static String generate6SerialId() {

		int Value = ((int) (100000 + (999999 - 100000) * Math.random()));

		return "" + Value;

	}
	
	/**
	 * 判断变量是否为空
	 * 
	 * @param s
	 * @return
	 */
	public static boolean isEmpty(String s) {
		if (null == s || "".equals(s) || "".equals(s.trim()) || "null".equalsIgnoreCase(s)) {
			return true;
		} else {
			return false;
		}
	}
	
	
	public static boolean isNotEmpty(String s){
	    if (null == s || "".equals(s) || "".equals(s.trim()) || "null".equalsIgnoreCase(s)) {
            return false;
        } else {
            return true;
        }
	}
	
	public static byte[] stringToByte(String str){
	    return str.getBytes();
	}
	
	public static byte[] stringToByte(String str,String charset){
        try {
            return str.getBytes(charset);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return  null;
    }
	

	public static void main(String[] args) {
		System.out.println(StringUtil.replaceFirstStr(" ,11,2,3,4,5,6 "));
	}
}

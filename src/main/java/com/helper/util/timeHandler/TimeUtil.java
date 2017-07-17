package com.helper.util.timeHandler;

import java.util.Date;

import org.joda.time.DateTime;
/**
 * 
 * @author gkb
 *
 */
public class TimeUtil {
	
	/**
	 * 
	 * @return 获取当前时间
	 */
	public static String getCurrentTime(){
		DateTime date = new DateTime();
		String dataTimeStr = date.toString("yyyy-MM-dd HH:mm:ss");
		return dataTimeStr;
	}
	
	/**
	 * 
	 * @return 获取当前时间的下一天
	 */
	public static String getNextOneDay(){
		return DateTime.now().plusDays(1).toString("yyyy-MM-dd HH:mm:ss");
	}
	
	
	 
	
}

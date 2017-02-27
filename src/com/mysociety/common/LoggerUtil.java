package com.mysociety.common;

import org.apache.log4j.Logger;


public class LoggerUtil {
	
	private static LoggerUtil loggerUtil = new LoggerUtil();
	private Logger logger;
	
	private LoggerUtil(){
		logger = Logger.getLogger("com.mysociety");
	}
	
	public static LoggerUtil getInstance(){
		return loggerUtil;
	}
	
	public Logger getLogger(){
		return logger;
	}
}

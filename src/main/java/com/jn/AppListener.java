package com.jn;

import java.io.IOException;
import java.io.InputStream;
import java.util.Map.Entry;
import java.util.Properties;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class AppListener implements ServletContextListener{

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		System.out.println("资源初始化");
		//全局资源初始化,比如连接池
	    ServletContext ctx = sce.getServletContext();
	    Properties prop = new Properties();
	    InputStream io = AppListener.class.getClassLoader().getResourceAsStream("/config.properties");;
	    try {
			prop.load(io);
		} catch (IOException e) {
			e.printStackTrace();
		}
	    for (Entry<Object, Object> entry: prop.entrySet()) {
	    	System.out.println(entry.getKey() + ":" + entry.getValue());
	    }
		ctx.setAttribute("charset", "utf-8");
	}

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		//资源清理
		System.out.println("资源清理工作");
	}

}

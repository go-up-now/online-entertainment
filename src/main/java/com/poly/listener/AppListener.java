package com.poly.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

@WebListener
public class AppListener implements ServletContextListener, HttpSessionListener{
	
	int onlineVisiter = 0;

	@Override
	public void sessionCreated(HttpSessionEvent se) {
		onlineVisiter ++;
		ServletContext applicationScope = se.getSession().getServletContext();
		applicationScope.setAttribute("visiters", onlineVisiter);
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent se) {
		onlineVisiter --;
		ServletContext applicationScope = se.getSession().getServletContext();
		applicationScope.setAttribute("visiters", onlineVisiter);
		
	}

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		onlineVisiter = 0;
		
	}

}

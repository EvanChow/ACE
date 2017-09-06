package com.avalon.listener;

import javax.servlet.ServletContextEvent;

public class ServletContextListener implements
		javax.servlet.ServletContextListener {
    
    
	SocketService service;
	public void contextDestroyed(ServletContextEvent arg0) {
		service.closeServer();
	}

	public void contextInitialized(ServletContextEvent arg0) {
		service = new SocketService();
		service.initSocketServer();
	}

}

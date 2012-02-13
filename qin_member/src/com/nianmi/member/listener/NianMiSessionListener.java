package com.nianmi.member.listener;

import java.util.HashSet;
import java.util.Set;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class NianMiSessionListener implements HttpSessionListener {

	@Override
	public void sessionCreated(HttpSessionEvent event) {
		System.out.println(event.getSource());
		HttpSessionEvent sessionEvent = (HttpSessionEvent) event.getSource();
		HttpSessionBindingEvent sessionBindingEvent = (HttpSessionBindingEvent) sessionEvent;
		System.out.println("Name: " + sessionBindingEvent.getName() + "Value: "
				+ sessionBindingEvent.getValue());
		System.out.println("sessionCreated SID:" + event.getSession().getId());
		HttpSession session = event.getSession();
		ServletContext application = session.getServletContext();
		//  在application范围由一个HashSet集保存所有的session             
		Set<HttpSession> sessions = (HashSet) application
				.getAttribute("sessions");
		if (sessions == null) {
			sessions = new HashSet<HttpSession>();
			application.setAttribute("sessions", session);
		}
		//  新创建的session均添加到HashSet集中              
		sessions.add(session);
		//  可以在别处从application范围中取出sessions集合
		// 然后使用sessions.size()获取当前活动的session数，即为“在线人数”        
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent event) {
		HttpSession session = event.getSession();
		System.out.println("sessionDestroyed SID:" + session.getId());
		ServletContext application = session.getServletContext();
		Set<HttpSession> sessions = (HashSet<HttpSession>) application
				.getAttribute("sessions");
		//  销毁的session均从HashSet集中移除
		sessions.remove(session);
	}
}
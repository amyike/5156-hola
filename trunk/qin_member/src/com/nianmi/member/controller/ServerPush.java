package com.nianmi.member.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ServerPush {

	protected Log log = LogFactory.getLog(ServerPush.class);

	private static final String preScript = "<script language='javascript' type='text/javascript'>document.write(parent.refreshUUID('";

	private static final String endScript = "'));</script> ";

	@RequestMapping(value = "test/serverPush.htm", method = RequestMethod.GET)
	public void pushUUID(HttpServletRequest request,
			HttpServletResponse response) {
		try {
			int i = 0;
			while (true) {
				// String id = UUID.randomUUID().toString();
				PrintWriter out = response.getWriter();
				String responseStr = preScript + i++ + endScript;
				System.out.println(responseStr);
				out.println(responseStr);
				out.flush();
				if (out.checkError()) {
					System.out.println("断开");
					// 假如客户端封闭www.66083797.comwww.58wl.com，德邦物流上海德邦物流上海到喀什专线那就可以返回并且断开连接了
					out.close();
					return;
				}
				Thread.currentThread().sleep(3000);
			}
		} catch (Exception e) {
			log.error("get PrintWriter error:", e);
		}
	}
}
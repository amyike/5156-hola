package com.nianmi.master.common;

import java.util.Date;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MailSender {
	String auth;

	static String host = "mail.45gongshe.com";

	static String user = "info@45gongshe.com";

	static String password = "info111";

	// static String from = "no-reply@45gongshe.com";
	static String from = "info@45gongshe.com";

	public static void main(String[] args) throws Exception {
		MailSender.sendMailNow("kaliry@126.com",
				"邮箱测试(" + CommonHelper.getCurrentTime() + ")", "测试！！！");
	}

	public static void sendMailNow(String to, String title, String content)
			throws Exception {
		// 初始化发送连接
		Properties props = new Properties();
		Session session;
		Transport transport;
		PopupAuthenticator popAuthenticator = new PopupAuthenticator();
		popAuthenticator.performCheck(user, password);
		session = Session.getInstance(props, popAuthenticator);
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.auth", "true");
		transport = null;
		try {
			transport = session.getTransport("smtp");
		} catch (Exception e) {
			transport = null;
			e.printStackTrace();
		}
		if (transport == null) {
			throw new Exception("发送邮件失败");
		}
		try {
			MimeMessage newMessage = new MimeMessage(session);
			newMessage.setFrom(new InternetAddress(from));
			newMessage.setRecipient(Message.RecipientType.TO,
					new InternetAddress(to));
			newMessage.setSubject(title, "utf-8");
			newMessage.setSentDate(new Date());
			newMessage.setContent(content, "text/html;charset=utf-8");
			Transport.send(newMessage);
		} catch (Exception e) {
			e.printStackTrace();
			// throw new Exception("发送邮件失败：" + e.getMessage());
		} finally {
			try {
				transport.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	public String getAuth() {
		return auth;
	}

	public void setAuth(String auth) {
		this.auth = auth;
	}

}

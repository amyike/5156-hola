package com.hola.servlet;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.springframework.web.util.WebUtils;

/**
 * 验证码
 * 
 * @author yike
 * 
 */
public class VerifyCodeServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	// 验证码图片的宽度。
	private int width = 100;

	// 验证码图片的高度。
	private int height = 30;

	// 验证码字符个数
	private int codeCount = 4;

	private int x = 0;

	// 字体高度
	private int fontHeight;

	private int codeY;

	// char[] codeSequence = { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J',
	// 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W',
	// 'X', 'Y', 'Z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9' };
	private char[] codeSequence = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
			.toCharArray();

	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 从web.xml中获取初始信息
		//

		x = width / (codeCount + 1);
		fontHeight = height - 2;
		codeY = height - 4;

		// 定义图像buffer
		BufferedImage buffImg = new BufferedImage(width, height,
				BufferedImage.TYPE_INT_RGB);
		Graphics2D g = buffImg.createGraphics();

		// 将图像填充为自定义颜色
		g.setColor(Color.WHITE);// 白色new Color(100, 150, 155)
		// 填充整个图片的颜色
		g.fillRect(0, 0, width, height);

		// 创建字体，字体的大小应该根据图片的高度来定。
		// 字体Fixedsys |Arial
		// Font.BOLD 加粗 | Font.PLAIN 普通
		// 设置字体。斜体
		g.setFont(new Font("roman", Font.ITALIC, fontHeight));

		// 画边框。
		g.setColor(Color.gray);
		g.drawRect(0, 0, width - 1, height - 1);
		g.setColor(Color.BLACK);

		// 创建一个随机数生成器类
		Random random = ThreadLocalRandom.current();
		// 随机产生10条干扰线，使图象中的认证码不易被其它程序探测到。
		for (int i = 0; i < 10; i++) {
			int x = random.nextInt(width);
			int y = random.nextInt(height);
			int xl = random.nextInt(12);
			int yl = random.nextInt(12);
			g.drawLine(x, y, x + xl, y + yl);
		}

		// randomCode用于保存随机产生的验证码，以便用户登录后进行验证。
		StringBuffer randomCode = new StringBuffer();
		int red = 0, green = 0, blue = 0;

		// 随机产生codeCount数字的验证码。
		for (int i = 0; i < codeCount; i++) {
			// 得到随机产生的验证码数字。
			String strRand = String.valueOf(codeSequence[random.nextInt(36)]);
			// 产生随机的颜色分量来构造颜色值，这样输出的每位数字的颜色值都将不同。
			red = random.nextInt(255);
			green = random.nextInt(255);
			blue = random.nextInt(255);

			// 用随机产生的颜色将验证码绘制到图像中。
			g.setColor(new Color(red, green, blue));
			g.drawString(strRand, i * (x + 3) + 3, codeY);

			// 将产生的四个随机数组合在一起。
			randomCode.append(strRand);
		}

		// 将四位数字的验证码保存到Session中。
		// HttpSession session = req.getSession();
		// session.setAttribute("validateCode", randomCode.toString());
		// session.setMaxInactiveInterval(60*30); //验证码失效时间30分钟
		WebUtils.setSessionAttribute(request, "validateCode",
				randomCode.toString());

		// 禁止图像缓存。
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);

		response.setContentType("image/jpeg");

		// 将图像输出到Servlet输出流中。
		try {
			ImageIO.write(buffImg, "jpeg", response.getOutputStream());
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		JSONObject json = new JSONObject();

		String code = request.getParameter("code");

		String validateCode = ""
				+ WebUtils.getSessionAttribute(request, "validateCode");
		if (code == null || "".equals(code.trim())) {
			json.put("result", 0);
			json.put("msg", "验证码未填写");
		} else if (validateCode == null || "".equals(validateCode.trim())) {
			json.put("result", 3);
			json.put("msg", "验证码失效");
		} else {
			if (validateCode.equalsIgnoreCase(code)) {
				json.put("result", 1);
				json.put("msg", "验证码正确");
			} else {
				json.put("result", 2);
				json.put("msg", "验证码不正确");
			}
		}
		json.write(response.getWriter());
	}
}
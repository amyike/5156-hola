package com.hola.servlet;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

public class COSUploadServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	// private final SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");

	@SuppressWarnings("unchecked")
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 文件上传后，保存在c:\\upload
		String saveDirectory = "c:\\upload";
		File file = new File(saveDirectory);
		if (!file.exists()) {
			file.mkdirs();
		}
		// 每个文件最大5m,最多3个文件,所以...
		int maxPostSize = 3 * 5 * 1024 * 1024;
		// response的编码为"utf-8",同时采用缺省的文件名冲突解决策略,实现上传
		MultipartRequest multi = new MultipartRequest(request, saveDirectory,
				maxPostSize, "utf-8");

		// 输出反馈信息
		Enumeration<String> files = multi.getFileNames();
		while (files.hasMoreElements()) {
			String name = files.nextElement();
			File f = multi.getFile(name);
			if (f != null) {
				String fileName = multi.getFilesystemName(name);
				String lastFileName = saveDirectory + "\\" + fileName;
				response.getWriter().println("上传的文件:" + lastFileName + "<hr>");
			}
		}
	}
}
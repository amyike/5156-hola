package com.hola.servlet;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class SWFUpload extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String uploadSign = request.getParameter("upload");
		String rootPath = request.getParameter("rootPath");
		String path = request.getParameter("path");
		if (rootPath == null)
			rootPath = "";
		rootPath = rootPath.trim();
		if (rootPath.equals("")) {
			rootPath = request.getRealPath("/swfupload/files");
		}
		if (path == null) {
			path = rootPath;
		} else {
			path = "";// new String(Base64.decodeBase64(path.getBytes()));
		}

		// 上传操作
		if (null != uploadSign && !"".equals(uploadSign)) {
			FileItemFactory factory = new DiskFileItemFactory();
			ServletFileUpload upload = new ServletFileUpload(factory);
			upload.setHeaderEncoding("UTF-8");
			try {
				List<FileItem> items = upload.parseRequest(request);
				if (null != items) {
					Iterator<FileItem> itr = items.iterator();
					while (itr.hasNext()) {
						FileItem item = (FileItem) itr.next();
						if (item.isFormField()) {
							continue;
						} else {
							// 以当前精确到秒的日期为上传的文件的文件名
							SimpleDateFormat sdf = new SimpleDateFormat(
									"yyyyMMddkkmmss");
							String type = item.getName().split("\\.")[1];// 获取文件类型
							File savedFile = new File(path,
									sdf.format(new Date()) + "." + type);
							item.write(savedFile);
						}
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
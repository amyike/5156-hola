package com.hola.servlet;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.lang.StringUtils;
import org.json.JSONException;
import org.json.JSONObject;

import com.hola.common.PathUtil;

public class UploadServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private final SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");

	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		// resp.setContentType("application/json;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setHeader("Charset", "UTF-8");
		response.setHeader("Pragma", "No-cache");
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);

		JSONObject jsonObj = new JSONObject();
		try {
			// 扩展路径
			String extPath = "/data/uploads/tmp/" + sdf.format(new Date())
					+ "/";
			// 保存路径
			String savePath = PathUtil.getWebRoot() + extPath;
			File saveDir = new File(savePath);// 保存路径
			if (!saveDir.exists()) {
				saveDir.mkdirs();
			}
			// 上传
			DiskFileItemFactory fac = new DiskFileItemFactory();
			ServletFileUpload upload = new ServletFileUpload(fac);
			upload.setHeaderEncoding("utf-8");

			List<FileItem> fileList = upload.parseRequest(request);
			Iterator<FileItem> ite = fileList.iterator();
			String name = "";
			String extName = "";

			while (ite.hasNext()) {
				FileItem item = ite.next();
				if (!item.isFormField()) {
					name = item.getName();
					long size = item.getSize();
					String type = item.getContentType();
					if (StringUtils.isBlank(name)) {
						continue;
					}
					// 扩展名格式：
					if (name.lastIndexOf(".") >= 0) {
						extName = name.substring(name.lastIndexOf("."));
					}
					File file = null;
					do {
						// 生成文件名：
						name = UUID.randomUUID().toString();
						file = new File(savePath + name + extName);
					} while (file.exists());
					File saveFile = new File(savePath + name + extName);
					// 写入文件中
					item.write(saveFile);

					jsonObj.put("data", saveFile.getPath());
				}
			}
			jsonObj.put("status", 1);
			jsonObj.put("msg", "success");
			jsonObj.write(response.getWriter());

		} catch (FileUploadException e) {
			e.printStackTrace();
		} catch (JSONException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
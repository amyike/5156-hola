package com.j2ee.high.action;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;

public class Upload extends ActionSupport implements ServletRequestAware,
		ServletResponseAware {

	private static final long serialVersionUID = 1L;
	private HttpServletRequest req;
	private HttpServletResponse resp;

	private File image;
	private String imageContentType;
	private String imageFileName;

	@Override
	public String execute() throws Exception {

		System.out.println("execute()......................................");

		if (false) {
			System.out.println("image:" + image);
			System.out.println("ct:" + imageContentType);
			System.out.println("fn:" + imageFileName);
			String type = imageFileName.substring(imageFileName
					.lastIndexOf("."));
			String uuid = UUID.randomUUID().toString();

			String tempDir = req.getSession().getServletContext()
					.getRealPath("/temp");
			System.out.println("tempDir:" + tempDir);
			File[] files = new File(tempDir).listFiles();
			for (int i = 0; i < files.length; i++) {
				files[i].delete();
			}
			File destFile = new File(tempDir + "/" + uuid + type);
			FileUtils.copyFile(image, destFile);

			req.setAttribute("previewFileName", "temp/" + destFile.getName());
		}
		return SUCCESS;
	}

	public File getImage() {
		return image;
	}

	public void setImage(File image) {
		this.image = image;
	}

	public String getImageContentType() {
		return imageContentType;
	}

	public void setImageContentType(String imageContentType) {
		this.imageContentType = imageContentType;
	}

	public String getImageFileName() {
		return imageFileName;
	}

	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
	}

	public void setServletResponse(HttpServletResponse response) {
		this.resp = response;
	}

	public void setServletRequest(HttpServletRequest request) {
		this.req = request;
	}
}

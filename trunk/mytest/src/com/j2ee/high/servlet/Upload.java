package com.j2ee.high.servlet;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringReader;
import java.util.Hashtable;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 
 * @author Administrator
 */
public class Upload extends HttpServlet {

	/**
	 * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
	 * methods.
	 * 
	 * @param request
	 *            servlet request
	 * @param response
	 *            servlet response
	 * @throws ServletException
	 *             if a servlet-specific error occurs
	 * @throws IOException
	 *             if an I/O error occurs
	 */
	protected void processRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// response.setContentType("text/html;charset=UTF-8");
		// PrintWriter out = response.getWriter();
		// InputStream is = request.getInputStream();
		//
		// File file = new File("f:/a.gif"); //ָ���ļ��洢��·�����ļ���
		// OutputStream os = new FileOutputStream(file);
		// byte[] b = new byte[2048];
		// int len = 0;
		// while ((len = is.read(b)) != -1) {
		// os.write(b, 0, len);
		// }
		// os.close();
		// is.close();

		try {
			/*
			 * TODO output your page here out.println("<html>");
			 * out.println("<head>");
			 * out.println("<title>Servlet NewServlet</title>");
			 * out.println("</head>"); out.println("<body>");
			 * out.println("<h1>Servlet NewServlet at " + request.getContextPath
			 * () + "</h1>"); out.println("</body>"); out.println("</html>");
			 */
		} finally {
			// out.close();
		}
	}

	// <editor-fold defaultstate="collapsed"
	// desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
	/**
	 * Handles the HTTP <code>GET</code> method.
	 * 
	 * @param request
	 *            servlet request
	 * @param response
	 *            servlet response
	 * @throws ServletException
	 *             if a servlet-specific error occurs
	 * @throws IOException
	 *             if an I/O error occurs
	 */
	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	/**
	 * Handles the HTTP <code>POST</code> method.
	 * 
	 * @param request
	 *            servlet request
	 * @param response
	 *            servlet response
	 * @throws ServletException
	 *             if a servlet-specific error occurs
	 * @throws IOException
	 *             if an I/O error occurs
	 */
	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String userPic = "userPic";
		try {
			String fileName = this.upload(request, userPic);
			PrintWriter out = response.getWriter();
			out.write("1");
		} catch (IOException ex) {
			int i = 0;
		}
	}

	private String upload(HttpServletRequest request, String userPic)
			throws IOException {
		final int NONE = 0;
		final int DATAHEADER = 1;
		final int FILEDATA = 2;
		final int FIELDDATA = 3;
		// ��������Ϣ��ʵ���͵�b������
		int TotalBytes = request.getContentLength();
		byte[] b = new byte[TotalBytes];
		String contentType = request.getContentType();// ������Ϣ����
		String fieldname = ""; // ���������
		String fieldvalue = ""; // �����ֵ
		String filename = ""; // �ļ���
		String boundary = ""; // �ֽ��
		String lastboundary = ""; // ������
		int filesize = 0; // �ļ�����
		Hashtable formfields = new Hashtable();
		int pos = contentType.indexOf("boundary=");
		String fileID; // �ϴ����ļ�ID
		if (pos != -1) // ȡ�÷ֽ���ͽ�����
		{
			pos += "boundary=".length();
			boundary = "--" + contentType.substring(pos);
			lastboundary = boundary + "--";
		}
		int state = NONE;
		// �õ�����������reqbuf
		DataInputStream in = new DataInputStream(request.getInputStream());
		in.readFully(b);
		in.close();
		String reqContent = new String(b);
		BufferedReader reqbuf = new BufferedReader(new StringReader(reqContent));
		boolean flag = true;
		int i = 0;
		while (flag == true) {
			String s = reqbuf.readLine();
			if ((s == lastboundary) || (s == null)) {
				break;
			}
			switch (state) {
			case NONE:
				if (s.startsWith(boundary)) {
					state = DATAHEADER;
					i += 1;
				}
				break;
			case DATAHEADER:
				pos = s.indexOf("filename=");
				if (pos == -1) { // ����������ֽ�������
					pos = s.indexOf("name=");
					pos += "name=".length() + 1;
					s = s.substring(pos);
					int l = s.length();
					s = s.substring(0, l - 1);
					fieldname = s;
					state = FIELDDATA;
				} else { // ���ļ�����������
					String temp = s;
					pos = s.indexOf("filename=");
					pos += "filename=".length() + 1;
					s = s.substring(pos);
					int l = s.length();
					s = s.substring(0, l - 1);
					pos = s.lastIndexOf("\\");
					s = s.substring(pos + 1);
					filename = s;
					// ���ֽ�������ȡ���ļ�����
					pos = byteIndexOf(b, temp, 0);
					b = subBytes(b, pos + temp.getBytes().length + 2, b.length);// ȥ��ǰ��Ĳ���
					s = reqbuf.readLine();
					b = subBytes(b, s.getBytes().length + 4, b.length);
					pos = byteIndexOf(b, boundary, 0);
					b = subBytes(b, 0, pos - 1);
					// String path =
					// request.getSession().getServletContext().getRealPath("\\");
					String path = "F:\\";
					int index = userPic.indexOf(".");
					if (index < 0) {
						filename = userPic
								+ filename.substring(filename.indexOf("."));
					} else {
						filename = userPic;
					}
					File f = new File(path + "\\" + filename); // д���ļ�
					DataOutputStream fileout = new DataOutputStream(
							new FileOutputStream(f));
					fileout.write(b, 0, b.length - 1);
					fileout.flush();
					fileout.close();
					filesize = b.length - 1;
					state = FILEDATA;
				}
				break;
			case FIELDDATA:
				s = reqbuf.readLine();
				fieldvalue = s;
				formfields.put(fieldname, fieldvalue);
				state = NONE;
				break;
			case FILEDATA:
				while ((!s.startsWith(boundary))
						&& (!s.startsWith(lastboundary))) {
					s = reqbuf.readLine();
					if (s.startsWith(boundary)) {
						state = DATAHEADER;
						break;
					}
				}
				break;
			}
		}

		return filename;
	}

	private static int byteIndexOf(byte[] b, String s, int start) {
		return byteIndexOf(b, s.getBytes(), start);
	}

	// �ֽ������е�INDEXOF��������STRING���е�INDEXOF����
	private static int byteIndexOf(byte[] b, byte[] s, int start) {
		int i;
		if (s.length == 0) {
			return 0;
		}
		int max = b.length - s.length;
		if (max < 0) {
			return -1;
		}
		if (start > max) {
			return -1;
		}
		if (start < 0) {
			start = 0;
		}
		search: for (i = start; i <= max; i++) {
			if (b[i] == s[0]) {
				int k = 1;
				while (k < s.length) {
					if (b[k + i] != s[k]) {
						continue search;
					}
					k++;
				}
				return i;
			}
		}
		return -1;
	}

	// ���ڴ�һ���ֽ���������ȡһ���ֽ�����
	private static byte[] subBytes(byte[] b, int from, int end) {
		byte[] result = new byte[end - from];
		System.arraycopy(b, from, result, 0, end - from);
		return result;
	}

	// ���ڴ�һ���ֽ���������ȡһ���ַ���
	private static String subBytesString(byte[] b, int from, int end) {
		return new String(subBytes(b, from, end));
	}

	/**
	 * Returns a short description of the servlet.
	 * 
	 * @return a String containing servlet description
	 */
	@Override
	public String getServletInfo() {
		return "Short description";
	}// </editor-fold>
}

package com.hola.common.inc;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.List;
import java.util.Map;

import com.hola.common.Constants;

/**
 * 根据传入的数据生成INC文件
 * 
 * @author l
 * 
 */
public abstract class AbstractInclude implements Runnable {

	private String webrootpath = "";
	private String weburl = Constants.DURL;
	/**
	 * 要解析的数据
	 */
	private Map map;
	private List list;

	public AbstractInclude() {
		// webrootpath = ServletActionContext.getRequest().getSession()
		// .getServletContext().getRealPath("");
	}

	public AbstractInclude(Map map) {
		this();
		this.map = map;
	}

	public AbstractInclude(List list) {
		this();
		this.list = list;
	}

	public AbstractInclude(Map map, List list) {
		this();
		this.map = map;
		this.list = list;
	}

	protected Map getMap() {
		return this.map;
	}

	protected List getList() {
		return this.list;
	}

	/**
	 * 获取要写入的路径
	 * 
	 * @return
	 */
	protected abstract String getPath();

	@Override
	public void run() {
		String html = this.resolve();
		this.write(html);
	}

	/**
	 * 解析数据，得到html
	 */
	protected abstract String resolve();

	/**
	 * 向磁盘写入html内容
	 * 
	 * @param path
	 * @param html
	 */
	private void write(String html) {
		BufferedWriter bw = null;
		try {
			File file = new File(webrootpath + this.getPath());
			File parentFile = file.getParentFile();
			if (!parentFile.exists())
				parentFile.mkdirs();
			if (!file.exists())
				file.createNewFile();

			System.out.println("filepath:" + file.getPath());

			bw = new BufferedWriter(new OutputStreamWriter(
					new FileOutputStream(file), "UTF-8"));

			bw.write(html);
			bw.flush();
			bw.close();
		} catch (IOException ioe) {
			ioe.printStackTrace();
		} finally {
			bw = null;
		}
	}
}

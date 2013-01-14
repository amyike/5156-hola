package com.kaliry.dto;

/**
 * 结果集合
 * 
 * @author yike
 * 
 */
public final class ResponseResult {

	private int status;
	private String msg;
	private Object data;

	/**
	 * AJAX请求的 JSON类型的返回值
	 * 
	 * @param status
	 *            状态码
	 * @param msg
	 *            返回消息
	 * @param data
	 *            返回数据
	 */
	public ResponseResult(int status, String msg, Object data) {
		super();
		this.status = status;
		this.msg = msg;
		this.data = data;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public Object getData() {
		return data;
	}

	public void setData(Object data) {
		this.data = data;
	}
}

package com.zbkj.bean;

public class PortMsg {
	
	
	private String port;
	private String buadRate;
	private String dataBit;
	private String stopBit;
	private boolean judge;
	public String getPort() {
		return port;
	}
	public void setPort(String port) {
		if(!judge)
			this.port = "串口"+port+"已关闭";
		else
			this.port = "串口"+port+"已打开";
	}
	public String getBuadRate() {
		return buadRate;
	}
	public void setBuadRate(String buadRate) {
		this.buadRate = "波特率"+buadRate;
	}
	public String getDataBit() {
		return dataBit;
	}
	public void setDataBit(String dataBit) {
		this.dataBit = "数据位"+dataBit;
	}
	public String getStopBit() {
		return stopBit;
	}
	public void setStopBit(String stopBit) {
		this.stopBit = "停止位"+stopBit;
	}
	public boolean isJudge() {
		return judge;
	}
	public void setJudge(boolean judge) {
		this.judge = judge;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((buadRate == null) ? 0 : buadRate.hashCode());
		result = prime * result + ((dataBit == null) ? 0 : dataBit.hashCode());
		result = prime * result + (judge ? 1231 : 1237);
		result = prime * result + ((port == null) ? 0 : port.hashCode());
		result = prime * result + ((stopBit == null) ? 0 : stopBit.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		PortMsg other = (PortMsg) obj;
		if (buadRate == null) {
			if (other.buadRate != null)
				return false;
		} else if (!buadRate.equals(other.buadRate))
			return false;
		if (dataBit == null) {
			if (other.dataBit != null)
				return false;
		} else if (!dataBit.equals(other.dataBit))
			return false;
		if (judge != other.judge)
			return false;
		if (port == null) {
			if (other.port != null)
				return false;
		} else if (!port.equals(other.port))
			return false;
		if (stopBit == null) {
			if (other.stopBit != null)
				return false;
		} else if (!stopBit.equals(other.stopBit))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return port+","+buadRate+","+dataBit+","+stopBit;
	}
}

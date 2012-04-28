package com.zbkj.bean;

public class Port {
	private static Port POST_CONFIG;
	private String buadRate;
	private String dataBit;
	private String stopBit;
	private String checkBit;
	private String stream;
	private String sendInterval;
	private boolean DTR;
	private boolean RTS;
	private Port() {
		super();
	}
	public  static synchronized Port getBean(){
		if(null==POST_CONFIG){
			POST_CONFIG=new Port();
		}
		return POST_CONFIG;
	}
	@Override
	protected Object clone() throws CloneNotSupportedException {
		// TODO Auto-generated method stub
		return POST_CONFIG;
	}
	public String getBuadRate() {
		return buadRate;
	}
	public void setBuadRate(String buadRate) {
		this.buadRate = buadRate;
	}
	public String getDataBit() {
		return dataBit;
	}
	public void setDataBit(String dataBit) {
		this.dataBit = dataBit;
	}
	public String getStopBit() {
		return stopBit;
	}
	public void setStopBit(String stopBit) {
		this.stopBit = stopBit;
	}
	public String getCheckBit() {
		return checkBit;
	}
	public void setCheckBit(String checkBit) {
		this.checkBit = checkBit;
	}
	public String getStream() {
		return stream;
	}
	public void setStream(String stream) {
		this.stream = stream;
	}
	public String getSendInterval() {
		return sendInterval;
	}
	public void setSendInterval(String sendInterval) {
		this.sendInterval = sendInterval;
	}
	public boolean isDTR() {
		return DTR;
	}
	public void setDTR(boolean dTR) {
		DTR = dTR;
	}
	public boolean isRTS() {
		return RTS;
	}
	public void setRTS(boolean rTS) {
		RTS = rTS;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (DTR ? 1231 : 1237);
		result = prime * result + (RTS ? 1231 : 1237);
		result = prime * result
				+ ((buadRate == null) ? 0 : buadRate.hashCode());
		result = prime * result
				+ ((checkBit == null) ? 0 : checkBit.hashCode());
		result = prime * result + ((dataBit == null) ? 0 : dataBit.hashCode());
		result = prime * result
				+ ((sendInterval == null) ? 0 : sendInterval.hashCode());
		result = prime * result + ((stopBit == null) ? 0 : stopBit.hashCode());
		result = prime * result + ((stream == null) ? 0 : stream.hashCode());
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
		Port other = (Port) obj;
		if (DTR != other.DTR)
			return false;
		if (RTS != other.RTS)
			return false;
		if (buadRate == null) {
			if (other.buadRate != null)
				return false;
		} else if (!buadRate.equals(other.buadRate))
			return false;
		if (checkBit == null) {
			if (other.checkBit != null)
				return false;
		} else if (!checkBit.equals(other.checkBit))
			return false;
		if (dataBit == null) {
			if (other.dataBit != null)
				return false;
		} else if (!dataBit.equals(other.dataBit))
			return false;
		if (sendInterval == null) {
			if (other.sendInterval != null)
				return false;
		} else if (!sendInterval.equals(other.sendInterval))
			return false;
		if (stopBit == null) {
			if (other.stopBit != null)
				return false;
		} else if (!stopBit.equals(other.stopBit))
			return false;
		if (stream == null) {
			if (other.stream != null)
				return false;
		} else if (!stream.equals(other.stream))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Port [buadRate=" + buadRate + ", dataBit=" + dataBit
				+ ", stopBit=" + stopBit + ", checkBit=" + checkBit
				+ ", stream=" + stream + ", sendInterval=" + sendInterval
				+ ", DTR=" + DTR + ", RTS=" + RTS + "]";
	}
}

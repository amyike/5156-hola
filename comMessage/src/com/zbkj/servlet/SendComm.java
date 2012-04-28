package com.zbkj.servlet;

/******************************************
 *�������ļ����ƣ�SendComm.java
 * ���ܣ��Ӵ��п�COM1�з�������
 ******************************************/
import java.awt.AWTEvent;
import java.awt.Dimension;
import java.awt.Panel;
import java.awt.event.AWTEventListener;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.ComponentEvent;
import java.awt.event.ComponentListener;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;
import java.awt.event.KeyEvent;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.awt.event.WindowListener;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TooManyListenersException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.comm.CommPortIdentifier;
import javax.comm.PortInUseException;
import javax.comm.SerialPort;
import javax.comm.SerialPortEvent;
import javax.comm.SerialPortEventListener;
import javax.comm.UnsupportedCommOperationException;
import javax.swing.Icon;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JComboBox;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.border.TitledBorder;

import org.dom4j.Element;

import com.zbkj.bean.Port;
import com.zbkj.bean.PortMsg;
import com.zbkj.tool.MJTextField;
import com.zbkj.tool.ParseXml;

public class SendComm {
	public static void main(String[] args) {
		S_Frame S_win = new S_Frame();
		S_win.addWindowListener(new WindowAdapter() {
			public void windowClosing(WindowEvent e) {
				System.exit(0);
			}
		});
		S_win.pack();
	}
}

class S_Frame extends JFrame implements Runnable, ActionListener, ItemListener,
		SerialPortEventListener, WindowListener, ComponentListener,
		AWTEventListener {
	private List<Element> list;
	private JComboBox portComboBox;
	private JCheckBox timingCheckBox;
	private JTextField rateTextField;
	private JTextField gapSendMs;
	private JButton portSwitchBut;
	private String tab;
	private JLabel imageLabel;
	private Icon icon;
	private JTextField sendText;
	private JButton submit;
	private JComboBox baudRate;
	private JComboBox dataBit;
	private JComboBox stopBit;
	private JComboBox checkBit;
	private JComboBox stream;
	private JCheckBox isLine;
	private JCheckBox isHexSend;
	private JCheckBox isHexShow;
	private JCheckBox isDTR;
	private JCheckBox isRTS;
	private JButton empty;
	private JButton saveHandle;
	private JButton comConfig;
	private JButton openFile;
	private JTextField filePath;
	private JButton sendFile;
	private JButton help;
	private JButton cancel;
	private JButton change;
	private Map<String, Integer> map;
	private Map<String, List<String>> msgMap;
	private Map<String, Integer> flowMap;
	private BufferedInputStream inputStream;
	private String str = "";
	private PortMsg msg;
	private boolean isSwitch;
	private JComboBox branch;
	private JLabel jLabel;
	private JFrame o;
	private ComConfig comFrame;
	/* ���ϵͳ�п��õ�ͨѶ�˿��� */
	private static CommPortIdentifier portId;
	/* Enumeration Ϊö������,��util�� */
	private static Enumeration portList;
	private BufferedOutputStream outputStream;
	/* RS-232�Ĵ��п� */
	private SerialPort serialPort;
	private Thread readThread;
	private Panel p = new Panel();
	private JPanel configPanel = new JPanel();
	private JLabel in_message = new JLabel("���ݳ�ʼ��");
	private JLabel countSendLabel;
	private JLabel countReadLabel;
	private JTextArea out_message = new JTextArea(
			"begin:703-lighting-2way-off end", 15, 59);
	private javax.swing.JScrollPane scrollPane = new javax.swing.JScrollPane(
			out_message);
	byte data[] = new byte[10240];
	/* �����ж�Ҫ�Ƿ�رմ��ڵı�־ */
	private boolean mark;
	private boolean m;
	private int i;
	private int j;

	/* ���Ŵ��� */
	S_Frame() {
		super("���ڷ�������");
		setSize(660, 507);
		add(scrollPane, "Center");
		comFrame = new ComConfig();
		configPanel.setLayout(null);
		openFile = new JButton("���ļ�");
		openFile.setBounds(8, 20, 90, 20);
		openFile.addActionListener(this);
		configPanel.add(openFile);
		filePath = new JTextField(20);
		filePath.setBounds(107, 20, 180, 20);
		configPanel.add(filePath);

		sendFile = new JButton("�����ļ�");
		sendFile.setBounds(293, 20, 90, 20);
		sendFile.addActionListener(this);
		configPanel.add(sendFile);

		saveHandle = new JButton("���洰��");
		saveHandle.setBounds(387, 20, 90, 20);
		saveHandle.addActionListener(this);
		configPanel.add(saveHandle);

		empty = new JButton("�������");
		empty.setBounds(481, 20, 90, 20);
		configPanel.add(empty);
		empty.addActionListener(this);

		isHexShow = new JCheckBox("HEX��ʾ");
		isHexShow.setBounds(575, 20, 74, 20);
		isHexShow.addActionListener(this);
		configPanel.add(isHexShow);

		jLabel = new JLabel("���ں�");
		jLabel.setBounds(28, 55, 70, 20);
		configPanel.add(jLabel);

		portComboBox = new JComboBox();
		portComboBox.setBounds(73, 55, 60, 20);
		list = ParseXml.getHotelData("PortBit");
		for (Element element : list) {
			portComboBox.addItem(element.getText());
		}
		portList = CommPortIdentifier.getPortIdentifiers();
		while (portList.hasMoreElements()) {
			portId = (CommPortIdentifier) portList.nextElement();
			if (portId.getPortType() == CommPortIdentifier.PORT_SERIAL) {
				boolean judge = false;
				for (int i = 0; i < portComboBox.getModel().getSize(); i++) {
					Object obj = portComboBox.getItemAt(i);
					if (obj.toString().equals(portId.getName())) {
						judge = true;
					}
				}
				if (!judge) {
					portComboBox.addItem(portId.getName());
				}

			}
		}
		configPanel.add(portComboBox);
		portComboBox.addItemListener(this);
		Icon icon = new ImageIcon(getClass().getResource("portClose.jpg"));
		imageLabel = new JLabel(icon, JLabel.CENTER);
		imageLabel.setBounds(138, 55, 17, 20);
		configPanel.add(imageLabel);

		portSwitchBut = new JButton("�򿪴���");
		portSwitchBut.addActionListener(this);
		portSwitchBut.setBounds(160, 55, 87, 20);
		configPanel.add(portSwitchBut);
		help = new JButton("ָ��");
		help.setBounds(330, 55, 72, 20);
		help.addActionListener(this);
		configPanel.add(help);

		comConfig = new JButton("����");
		comConfig.setBounds(256, 55, 60, 20);

		configPanel.add(comConfig);
		comConfig.addActionListener(this);

		timingCheckBox = new JCheckBox("��ʱ����");
		timingCheckBox.setBounds(25, 76, 88, 20);
		configPanel.add(timingCheckBox);

		rateTextField = new JTextField("100", 2);
		rateTextField.setBounds(113, 76, 35, 18);
		configPanel.add(rateTextField);
		jLabel = new JLabel("ms/��");
		jLabel.setBounds(151, 73, 35, 20);
		configPanel.add(jLabel);

		isHexSend = new JCheckBox("HEX����");
		isHexSend.setBounds(25, 96, 88, 20);
		isHexSend.addActionListener(this);
		configPanel.add(isHexSend);

		isLine = new JCheckBox("��������");
		isLine.setBounds(109, 96, 90, 20);
		configPanel.add(isLine);

		jLabel = new JLabel("�ַ��������");
		jLabel.setBounds(30, 116, 120, 20);
		configPanel.add(jLabel);
		submit = new JButton("����");
		submit.setBounds(119, 116, 60, 18);
		submit.addActionListener(this);
		configPanel.add(submit);

		sendText = new MJTextField();
		sendText.setText(ParseXml.getStr("msg"));
		sendText.setBounds(25, 137, 605, 20);
		configPanel.add(sendText);

		countSendLabel = new JLabel("S:" + i);
		countSendLabel.setBounds(30, 169, 80, 15);
		configPanel.add(countSendLabel, "South");

		countReadLabel = new JLabel("R:" + i);
		countReadLabel.setBounds(100, 169, 80, 15);
		configPanel.add(countReadLabel, "South");

		in_message.setBounds(190, 169, 300, 15);
		configPanel.add(in_message, "South");
		in_message.setText(message(isSwitch));
		add(p, "North");
		configPanel.setPreferredSize(new Dimension(559, 190));
		configPanel.setBorder(new TitledBorder("������"));
		JPanel brch = new JPanel();
		brch.setLayout(null);
		brch.setBounds(18, 40, 618, 125);
		TitledBorder titledBorder = new TitledBorder("������");
		titledBorder.setTitleJustification(titledBorder.CENTER);
		brch.setBorder(titledBorder);
		configPanel.add(brch);
		add(configPanel, "South");
		Port port = Port.getBean();
		port.setBuadRate(baudRate.getSelectedItem().toString());
		port.setDataBit(dataBit.getSelectedItem().toString());
		port.setStopBit(stopBit.getSelectedItem().toString());
		port.setCheckBit(checkBit.getSelectedItem().toString());
		port.setStream(stream.getSelectedItem().toString());
		port.setSendInterval(gapSendMs.getText());
		port.setDTR(isDTR.isSelected());
		port.setRTS(isRTS.isSelected());
		this.addComponentListener(this);
		addWindowListener(this);
		this.getToolkit().addAWTEventListener(this, AWTEvent.KEY_EVENT_MASK);
		out_message.setLineWrap(true);
		timingCheckBox.addActionListener(this);
		setVisible(true);
	} // R_Frame() end

	private class ComConfig extends JFrame implements ActionListener,
			AWTEventListener {
		public ComConfig() {
			super("��������");
			this.setBounds(0, 0, 200, 400);
			JPanel p = new JPanel();
			p.setBounds(0, 0, 200, 400);
			p.setLayout(null);

			jLabel = new JLabel("������");
			jLabel.setBounds(20, 35, 72, 20);
			p.add(jLabel);

			baudRate = new JComboBox();
			baudRate.setBounds(66, 35, 60, 20);
			;
			list = ParseXml.getHotelData("BaudRate");

			for (Element element1 : list) {
				baudRate.addItem(element1.getText());
			}
			p.add(baudRate);

			jLabel = new JLabel("����λ");
			jLabel.setBounds(20, 60, 72, 20);
			p.add(jLabel);

			dataBit = new JComboBox();
			dataBit.setBounds(66, 60, 60, 20);
			;
			list = ParseXml.getHotelData("DataBit");
			for (Element element2 : list) {
				dataBit.addItem(element2.getText());
			}
			p.add(dataBit);

			jLabel = new JLabel("ֹͣλ");
			jLabel.setBounds(20, 85, 72, 20);
			p.add(jLabel);

			stopBit = new JComboBox();
			stopBit.setBounds(66, 85, 60, 20);
			;
			list = ParseXml.getHotelData("StopBit");
			for (Element element3 : list) {
				stopBit.addItem(element3.getText());
			}
			p.add(stopBit);

			jLabel = new JLabel("У��λ");
			jLabel.setBounds(20, 110, 72, 20);
			p.add(jLabel);

			checkBit = new JComboBox();
			checkBit.setBounds(66, 110, 60, 20);

			list = ParseXml.getHotelData("CheckBit");
			map = new HashMap<String, Integer>();
			map.put("None", SerialPort.PARITY_NONE);
			map.put("Odd", SerialPort.PARITY_ODD);
			map.put("Even", SerialPort.PARITY_EVEN);
			map.put("Mark", SerialPort.PARITY_MARK);
			map.put("Space", SerialPort.PARITY_SPACE);
			flowMap = new HashMap<String, Integer>();
			flowMap.put("None", SerialPort.FLOWCONTROL_NONE);
			flowMap.put("Hard_IN", SerialPort.FLOWCONTROL_RTSCTS_IN);
			flowMap.put("Hard_OUT", SerialPort.FLOWCONTROL_RTSCTS_OUT);
			flowMap.put("Soft_IN", SerialPort.FLOWCONTROL_XONXOFF_IN);
			flowMap.put("Soft_OUT", SerialPort.FLOWCONTROL_XONXOFF_OUT);
			for (Element element4 : list) {
				checkBit.addItem(element4.getText());
			}
			p.add(checkBit);

			jLabel = new JLabel("������");
			jLabel.setBounds(20, 135, 72, 20);
			p.add(jLabel);

			stream = new JComboBox();
			stream.setBounds(66, 135, 60, 20);
			list = ParseXml.getHotelData("Stream");
			for (Element element5 : list) {
				stream.addItem(element5.getText());
			}
			p.add(stream);

			JLabel explain = new JLabel("����byte���ͼ������:");
			explain.setBounds(20, 200, 200, 20);
			p.add(explain);

			gapSendMs = new JTextField("0", 2);
			gapSendMs.setBounds(20, 225, 35, 18);
			p.add(gapSendMs);
			jLabel = new JLabel("ms/byte");
			jLabel.setBounds(66, 225, 70, 20);
			p.add(jLabel);

			isDTR = new JCheckBox("DTR");
			isDTR.setBounds(10, 165, 70, 20);
			p.add(isDTR);

			isRTS = new JCheckBox("RTS");
			isRTS.setBounds(100, 165, 48, 20);
			p.add(isRTS);

			cancel = new JButton("ȡ��");
			cancel.setBounds(10, 270, 70, 20);
			cancel.addActionListener(this);
			p.add(cancel);
			change = new JButton("ȷ��");
			change.setBounds(100, 270, 70, 20);
			change.addActionListener(this);
			this.getToolkit()
					.addAWTEventListener(this, AWTEvent.KEY_EVENT_MASK);
			p.add(change);
			this.add(p);
		}

		@Override
		public void actionPerformed(ActionEvent event) {
			if (event.getSource() == cancel) {
				comFrame.setVisible(false);
				return;
			}
			if (event.getSource() == change) {
				savePortConfig();
				return;
			}
		}

		private void savePortConfig() {
			Port port = Port.getBean();
			port.setBuadRate(baudRate.getSelectedItem().toString());
			port.setDataBit(dataBit.getSelectedItem().toString());
			port.setStopBit(stopBit.getSelectedItem().toString());
			port.setCheckBit(checkBit.getSelectedItem().toString());
			port.setStream(stream.getSelectedItem().toString());
			port.setSendInterval(gapSendMs.getText());
			port.setDTR(isDTR.isSelected());
			port.setRTS(isRTS.isSelected());
			in_message.setText(message(isSwitch));
			comFrame.setVisible(false);
		}

		@Override
		public void eventDispatched(AWTEvent event) {
			if (((KeyEvent) event).getID() == KeyEvent.KEY_PRESSED) {
				if (((KeyEvent) event).getKeyCode() == 10) {
					if (!comFrame.isVisible()) {
						m = true;
					} else {
						savePortConfig();
					}
				}
			}
		};
	}

	/* �����Ť�򿪴���. */
	public void actionPerformed(ActionEvent event) {
		if (event.getSource() == comConfig) {
			baudRate.setSelectedItem(Port.getBean().getBuadRate());
			dataBit.setSelectedItem(Port.getBean().getDataBit());
			stopBit.setSelectedItem(Port.getBean().getStopBit());
			checkBit.setSelectedItem(Port.getBean().getCheckBit());
			stream.setSelectedItem(Port.getBean().getStream());
			gapSendMs.setText(Port.getBean().getSendInterval());
			isDTR.setSelected(Port.getBean().isDTR());
			isRTS.setSelected(Port.getBean().isRTS());
			comFrame.setVisible(true);
			return;
		}

		if (event.getSource() == help) {
			msgMap = new HashMap<String, List<String>>();
			List<String> lightingList = new ArrayList<String>();
			List<String> airList = new ArrayList<String>();
			List<String> lockList = new ArrayList<String>();
			List<String> serveList = new ArrayList<String>();
			String showValue = out_message.getText();
			showValue = showValue.replaceAll("begin:", "").trim();
			String arr[] = showValue.split("end");
			for (int i = 0; i < arr.length; i++) {
				if (arr[i].trim().contains(".txt�ļ�·������������Ϣ��")) {
					arr[i] = arr[i].substring(arr[i].indexOf("��") + 1,
							arr[i].length() - 1);
				}
				if (arr[i].trim().contains("lighting")) {
					lightingList.add(arr[i].trim());
				} else if (arr[i].trim().contains("air")) {
					airList.add(arr[i].trim());
				} else if (arr[i].trim().contains("lock")) {
					lockList.add(arr[i].trim());
				} else if (arr[i].trim().contains("serve")) {
					serveList.add(arr[i].trim());
				}
			}
			if (lightingList.size() > 0)
				msgMap.put("lighting", lightingList);
			if (airList.size() > 0)
				msgMap.put("air", airList);
			if (lockList.size() > 0)
				msgMap.put("lock", lockList);
			if (serveList.size() > 0)
				msgMap.put("serve", serveList);
			myFrame o = new myFrame("������Ϣ��");
			o.addWindowListener(o);
			o.setBounds(200, 200, 500, 500);

			JTextArea area;
			JLabel label = new JLabel();

			int[] number = new int[] { lightingList.size(), airList.size(),
					lockList.size(), serveList.size() };
			for (int i = 0; i < number.length; i++) {
				for (int l = 0; l < number.length - 1; l++) {
					int mark = -1;
					if (number[l] < number[l + 1]) {
						mark = number[l + 1];
						number[l + 1] = number[l];
						number[l] = mark;
					}
				}
			}
			int count = 0;
			for (int i = 0; i < number.length; i++) {
				if (number[i] > 0)
					count++;
			}
			area = new JTextArea("Ϊ����ʾ���з������Ϣ�� ", number[0], count * 13);
			branch = new JComboBox();
			branch.addItem("��������");
			for (Iterator<?> it = msgMap.entrySet().iterator(); it.hasNext();) {
				Map.Entry e = (Map.Entry) it.next();
				branch.addItem(e.getKey());
			}
			branch.setBounds(150, 0, 100, 20);
			branch.addItemListener(this);
			area.add(branch);
			int index = 0;
			int coord = 0;
			boolean mark = false;
			for (int i = 0; i < lightingList.size(); i++) {
				label = new JLabel(lightingList.get(i));
				label.setBounds(coord, index += 17, 200, 20);
				area.add(label);
				mark = true;
			}
			index = 0;
			boolean mark1 = false;
			int coord2 = 0;
			for (int i = 0; i < airList.size(); i++) {
				if (mark)
					coord = 150;
				label = new JLabel(airList.get(i));
				label.setBounds(coord, index += 17, 200, 20);
				area.add(label);
				mark1 = true;
			}
			coord2 = coord;
			index = 0;
			boolean mark2 = false;
			for (int i = 0; i < lockList.size(); i++) {
				if (mark1 || mark)
					coord = coord2 + 150;
				label = new JLabel(lockList.get(i));
				label.setBounds(coord, index += 17, 200, 20);
				area.add(label);
				mark2 = true;
			}
			coord2 = coord;
			index = 0;
			for (int i = 0; i < serveList.size(); i++) {
				if (mark2 || mark1 || mark) {
					coord = coord2 + 150;
				}
				label = new JLabel(serveList.get(i));
				label.setBounds(coord, index += 17, 200, 20);
				area.add(label);
			}
			area.setBounds(0, 0, 500, 500);
			area.setTabSize(10);
			area.setLayout(null);
			javax.swing.JScrollPane scrollPane = new javax.swing.JScrollPane(
					area);
			o.add(scrollPane);
			o.setVisible(true);

			return;
		}
		if (event.getSource() == sendFile) {
			if (null == serialPort) {
				JOptionPane.showMessageDialog(this, "����δ��!");
				return;
			}
			File file = new File(filePath.getText());
			if (!file.exists()) {
				JOptionPane.showMessageDialog(this, "�ļ�·��������!");
			} else {
				try {
					Long aa = System.currentTimeMillis();
					char arrs[] = new char[1024];
					StringBuffer sb = new StringBuffer();
					String s;
					BufferedReader reader = new BufferedReader(new FileReader(
							file));
					while (reader.read(arrs) != -1) {
						s = new String(arrs);
						sb.append(s);
					}
					outputStream.write(sb.toString().trim().getBytes());
					reader.close();
					outputStream.close();
					Long bb = System.currentTimeMillis();
					JOptionPane.showMessageDialog(this, "���ͳɹ���Լ��ʱ" + (bb - aa)
							+ "����");
				} catch (IOException e) {
					JOptionPane.showMessageDialog(this, e.getMessage()
							+ "����˿��Ƿ�򿪻�����������");
					e.printStackTrace();
				}
			}
			return;
		}
		if (event.getSource() == openFile) {
			JFileChooser fc = new JFileChooser(System.getProperty("user.dir")
					+ File.separator + "files");
			char ch[] = new char[1024];
			String s = "";
			StringBuffer sb = new StringBuffer();
			fc.showOpenDialog(this);
			if (fc.getSelectedFile() == null) {
				return;
			}
			try {
				FileReader fr = new FileReader(fc.getSelectedFile());
				while (fr.read(ch) != -1) {
					s = new String(ch);
					sb.append(s);
				}
				out_message.setText(fc.getSelectedFile() + "�ļ�·������������Ϣ��\r\n\n"
						+ sb.toString().trim());
				filePath.setText(fc.getSelectedFile().toString());
				fr.close();
			} catch (IOException ie) {
				JOptionPane.showMessageDialog(this, "I/O Error", "error",
						JOptionPane.ERROR_MESSAGE);
			}
			return;
		}

		if (event.getSource() == saveHandle) {
			BufferedWriter writer = null;
			try {
				if ("".equals(out_message.getText().trim())) {
					JOptionPane.showMessageDialog(this, "�����ı���Ϣ");
					return;
				}
				File file = new File(System.getProperty("user.dir")
						+ File.separator + "files");
				if (!file.exists()) {
					file.mkdir();
				}
				SimpleDateFormat format = new SimpleDateFormat(
						"yy-MM-dd-HHmmss");
				String date = format.format(new Date());
				writer = new BufferedWriter(
						new FileWriter(System.getProperty("user.dir")
								+ File.separator + "files" + File.separator
								+ "" + date + ".txt"));
				String text = out_message.getText();
				for (int i = 0; i < text.length(); i++) {
					writer.write(String.valueOf(text.charAt(i)));
				}
				JOptionPane.showMessageDialog(this, "����ɹ�!\r\n" + "files"
						+ File.separator + "" + date + ".txt");
			} catch (IOException e) {
				e.printStackTrace();
			} finally {
				try {
					if (null != writer)
						writer.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			return;
		}
		if (event.getSource() == isHexShow) {
			if (isHexShow.isSelected()) {
				if (null != out_message && !"".equals(out_message.getText())) {
					StringBuffer sb = new StringBuffer();
					String str = Base16.str2Hex(out_message.getText());
					for (int i = 0; i < str.length(); i++) {
						sb.append(str.charAt(i));
						if ((i + 1) % 2 == 0)
							sb.append(" ");
					}
					out_message.setText(sb.toString());
				}
			} else {
				if (null != out_message && !"".equals(out_message.getText())) {
					String text = out_message.getText().replaceAll(" ", "");
					out_message.setText(Base16.hex2Str(text));
				}
			}
			return;
		}
		if (event.getSource() == empty) {
			out_message.setText("");
			i = 0;
			countReadLabel.setText("R:" + i);
			j = 0;
			countSendLabel.setText("S:" + j);
			return;
		}
		if (event.getSource() == isHexSend) {
			JCheckBox HexSedn = (JCheckBox) event.getSource();
			if (HexSedn.isSelected()) {
				String text = Hex.encodeHexStr(sendText.getText().getBytes());
				StringBuffer sb = new StringBuffer();
				for (int i = 0; i < text.length(); i++) {
					sb.append(text.charAt(i));
					if ((i + 1) % 2 == 0) {
						sb.append(" ");
					}
				}
				sendText.setText(sb.toString());
			} else {
				try {
					char charArr[] = sendText.getText().replaceAll(" ", "")
							.toCharArray();
					String decodeStr = new String(Hex.decodeHex(charArr));
					sendText.setText(decodeStr);
				} catch (Exception e) {
				}

			}
			return;
		}

		/* �û�������Ͱ�ťʱ */
		if (event.getSource() == submit) {
			sendAction();
			return;
		}
		if (event.getSource() == portSwitchBut) {
			portSwitchBut = (JButton) event.getSource();
			System.out.println("pre:" + portSwitchBut.getText());
			if (portSwitchBut.getText().equals("�򿪴���")) {
				/* ��ȡϵͳ�����е�ͨѶ�˿� */
				boolean judge = openPort();
				if (!judge) {
					JOptionPane.showMessageDialog(this,
							"�˿�" + portComboBox.getSelectedItem()
									+ "��ռ��,����˿������Ƿ���ȷ");
					return;
				}
				in_message.setText(message(isSwitch));
				portSwitchBut.setText("�رմ���");
				icon = new ImageIcon(getClass().getResource("port.jpg"));
				imageLabel.setIcon(icon);

				tab = rateTextField.getText();
				Pattern pattern = Pattern.compile("\\d*");
				Matcher matcher = pattern.matcher(tab);
				if (null == tab || tab.equals("")) {
					JOptionPane.showMessageDialog(this, "����Ϊ��");
					return;
				} else if (!matcher.matches()) {
					JOptionPane.showMessageDialog(this, "����������[0-9]");
					return;
				}
				System.out.println("after" + portSwitchBut.getText());

				rateTextField.setEnabled(false);
				if (portSwitchBut.getText().equals("�򿪴���")) {
					portSwitchBut.setText("�رմ���");
					Icon icon = new ImageIcon(getClass()
							.getResource("port.jpg"));
					imageLabel.setIcon(icon);
				}

				mark = false;
				startOrStop(mark);
			} else {
				mark = true;
				startOrStop(mark);
				if (null != serialPort)
					serialPort.close();
				isSwitch = false;
				// message(isSwitch);
				// in_message.setText(msg.toString());
				in_message.setText(message(isSwitch));
				portSwitchBut.setText("�򿪴���");
				icon = new ImageIcon(getClass().getResource("portClose.jpg"));
				imageLabel.setIcon(icon);

				rateTextField.setEnabled(true);
			}
			return;

		}
		if (timingCheckBox.isSelected() == false) {
			mark = true;
			startOrStop(true);
			rateTextField.setEnabled(true);
			serialPort.close(); // �رմ���
			mark = true; // ������ֹ�̵߳�run()����
			isSwitch = false;
			in_message.setText(message(isSwitch));
			if (portSwitchBut.getText().equals("�رմ���")) {
				portSwitchBut.setText("�򿪴���");
				icon = new ImageIcon(getClass().getResource("portClose.jpg"));
				imageLabel.setIcon(icon);
			}

		} else {
			mark = false;

			/* ��ȡϵͳ�����е�ͨѶ�˿� */
			// if (null != serialPort)
			// serialPort.close();
			boolean judge = openPort();
			if (!judge) {
				JOptionPane.showMessageDialog(this,
						"�˿�" + portComboBox.getSelectedItem()
								+ "��ռ��,������˿������Ƿ���ȷ");
				return;
			}
			startOrStop(false);
			String text = sendText.getText();
			if (isLine.isSelected())
				text = text + "\n";
			tab = rateTextField.getText();
			Pattern pattern = Pattern.compile("\\d*");
			Matcher matcher = pattern.matcher(tab);
			if (null == tab || tab.equals("")) {
				JOptionPane.showMessageDialog(this, "����Ϊ��");
				return;
			} else if (!matcher.matches()) {
				JOptionPane.showMessageDialog(this, "����������[0-9]");
				return;
			}
			rateTextField.setEnabled(false);
			if (portSwitchBut.getText().equals("�򿪴���")) {
				portSwitchBut.setText("�رմ���");
				Icon icon = new ImageIcon(getClass().getResource("port.jpg"));
				imageLabel.setIcon(icon);
			}
			data = text.getBytes();

			in_message.setText(message(isSwitch));

		}
		/* �򿪴��� */

	} // actionPerformed() end

	private void sendAction() {
		try {
			if (null == serialPort) {
				JOptionPane.showMessageDialog(this, "����δ��!");
				return;
			}
			if (Port.getBean().isDTR()) {
				serialPort.setDTR(true);
			}
			if (Port.getBean().isRTS()) {
				serialPort.setRTS(true);
			}
			String label = sendText.getText();
			if (isLine.isSelected())
				label = label + "\n";
			data = label.getBytes();
			serialPort.setSerialPortParams(Integer.parseInt(Port.getBean()
					.getBuadRate()), Integer.parseInt(Port.getBean()
					.getDataBit()), Integer.parseInt(Port.getBean()
					.getStopBit()), Integer.parseInt(map.get(
					Port.getBean().getCheckBit()).toString()));
			serialPort.setFlowControlMode(flowMap.get(Port.getBean()
					.getStream()));

			tab = Port.getBean().getSendInterval();
			Pattern pattern = Pattern.compile("\\d*");
			Matcher matcher = pattern.matcher(tab);
			if (null == tab || tab.equals("")) {
				JOptionPane.showMessageDialog(this, "����Ϊ��");
				return;
			} else if (!matcher.matches()) {
				JOptionPane.showMessageDialog(this, "����������[0-9]");
				return;
			}

			for (int i = 0; i < data.length; i++) {
				try {
					outputStream.write(data, i, 1);
					Thread.sleep(Integer.parseInt(tab));
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
			}
			i = i + data.length;
			countSendLabel.setText("S:" + i);
			outputStream.flush();
			in_message.setText(message(isSwitch));
		} catch (IOException e) {
			JOptionPane.showMessageDialog(this, "���ַǷ�����!" + e.getMessage());
		} catch (UnsupportedCommOperationException e) {
			JOptionPane.showMessageDialog(this, "���ַǷ�����!" + e.getMessage());
		} finally {
			try {
				if (null != outputStream)
					outputStream.close();
			} catch (IOException e) {
				JOptionPane.showMessageDialog(this, "���ַǷ�����!" + e.getMessage());
			}
		}
	}

	private String message(boolean b) {
		msg = new PortMsg();
		msg.setJudge(b);
		msg.setPort(portComboBox.getSelectedItem().toString());
		msg.setBuadRate(baudRate.getSelectedItem().toString());
		msg.setDataBit(dataBit.getSelectedItem().toString());
		msg.setStopBit(stopBit.getSelectedItem().toString());
		return msg.toString();

	}

	/* �򿪴���,�������̷߳������� */
	public void startOrStop(boolean mark) {
		/* �����̷߳������� */
		try {
			if (!mark) {
				readThread = new Thread(this);
				readThread.start();
				System.out.println("start");
			} else {
				System.out.println("stop");
				readThread.stop();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void run() {
		System.out.println("main run; mark:" + mark);
		while (!mark) {
			/* ����������(������data[]�е����ݷ��ͳ�ȥ) */
			try {
				for (int i = 0; i < data.length; i++) {
					outputStream.write(data, i, 1);
				}
				outputStream.flush();
				i = i + data.length;
				countSendLabel.setText("S:" + i);
				// readThread.sleep(Integer.parseInt(tab));
				Thread.sleep(Integer.parseInt(tab == null ? "10" : tab));
			} catch (IOException e) {
				e.printStackTrace();
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
		try {
			if (outputStream != null) {
				outputStream.flush();
				outputStream.close();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private boolean openPort() {
		boolean judge = false;
		portList = CommPortIdentifier.getPortIdentifiers();
		/* ��ѭ���ṹ�ҳ����� */
		while (portList.hasMoreElements()) {
			/* ǿ��ת��ΪͨѶ�˿����� */
			portId = (CommPortIdentifier) portList.nextElement();
			if (portId.getPortType() == CommPortIdentifier.PORT_SERIAL) {
				if (portId.getName().equals(portComboBox.getSelectedItem())) {
					/* �򿪴��� */
					try {
						serialPort = (SerialPort) portId.open("SendComm", 100);
						serialPort.setSerialPortParams(Integer.parseInt(Port
								.getBean().getBuadRate()), Integer
								.parseInt(Port.getBean().getDataBit()), Integer
								.parseInt(Port.getBean().getStopBit()), Integer
								.parseInt(map.get(Port.getBean().getCheckBit())
										.toString()));
						serialPort.setFlowControlMode(flowMap.get(Port
								.getBean().getStream()));
						serialPort.addEventListener(this);
						serialPort.notifyOnDataAvailable(true);
						isSwitch = true;
						if (Port.getBean().isDTR()) {
							serialPort.setDTR(true);
						}
						if (Port.getBean().isRTS()) {
							serialPort.setRTS(true);
						}
						outputStream = new BufferedOutputStream(
								serialPort.getOutputStream());
						judge = true;
						break;
					} catch (PortInUseException e) {
						e.printStackTrace();
						return false;
					} catch (UnsupportedCommOperationException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (TooManyListenersException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (IOException e) {
						e.printStackTrace();
					}
				} // if end
			} // if end
		} // while end
		return judge;
	}

	@Override
	public void itemStateChanged(ItemEvent e) {
		if (e.getSource() == branch) {
			if (e.getStateChange() == ItemEvent.SELECTED
					&& !branch.getSelectedItem().equals("��������")) {
				List<String> list = (List<String>) msgMap.get(branch
						.getSelectedItem());
				o = new JFrame(branch.getSelectedItem().toString() + "ר��");
				o.setBounds(490, 200, 180, 500);
				JPanel p = new JPanel();
				p.setLayout(null);
				JTextArea area = new JTextArea("MODEL��"
						+ branch.getSelectedItem() + " ����", list.size(), 10);
				area.setBounds(0, 0, 180, 500);
				int i = 0;
				JLabel label = null;
				for (String string : list) {
					label = new JLabel(string);
					label.setBounds(0, i += 17, 180, 20);
					area.add(label);
				}
				JScrollPane scrollPane = new JScrollPane(area);
				scrollPane.setBounds(0, 0, 180, 500);
				p.add(scrollPane);
				o.add(scrollPane);
				o.setVisible(true);
			}
			return;
		}
		in_message.setText(message(isSwitch));
		if (e.getSource() == portComboBox) {
			in_message.setText(message(false));
			if (null != serialPort) {
				if (portComboBox.getSelectedItem().equals(serialPort.getName())
						&& isSwitch) {
					in_message.setText(message(true));
					portSwitchBut.setText("�رմ���");
					icon = new ImageIcon(getClass().getResource("port.jpg"));
					imageLabel.setIcon(icon);
					return;
				}
			}
			if (portSwitchBut.getText().equals("�رմ���")) {
				portSwitchBut.setText("�򿪴���");
				icon = new ImageIcon(getClass().getResource("portClose.jpg"));
				imageLabel.setIcon(icon);
			}
			return;
		}

	}

	/* ���ڼ������������¼������ô���ͨѶ��������ȡ���ݲ�д���ı����� */
	@Override
	public void serialEvent(SerialPortEvent event) {
		byte[] readBuffer = new byte[1024];
		try {
			inputStream = new BufferedInputStream(serialPort.getInputStream());
		} catch (IOException e) {
			e.printStackTrace();
		}
		try {
			/* ����·�϶�ȡ������ */
			boolean judge = false;
			int mark = -1;
			while (inputStream.available() > 0) {
				mark = inputStream.available();
				int numBytes = inputStream.read(readBuffer);
				if (readBuffer[mark - 1] == "\n".getBytes()[0]) {
					judge = true;
				}
			}
			j = j + mark;
			countReadLabel.setText("R:" + j);
			str = new String(readBuffer).trim();
			if (judge) {
				str = str + "\n";
			}
			/* ���յ������ݴ�ŵ��ı����� */
			out_message.append(str);
		} catch (IOException e) {
			e.printStackTrace();
		}
	} // serialEvent() end

	private class myFrame extends JFrame implements WindowListener {
		public myFrame(String str) {
			super(str);
		}

		@Override
		public void windowOpened(WindowEvent e) {
		}

		@Override
		public void windowClosing(WindowEvent e) {
			// TODO Auto-generated method stub
			if (null != o)
				o.setVisible(false);
		}

		@Override
		public void windowClosed(WindowEvent e) {
		}

		@Override
		public void windowIconified(WindowEvent e) {
		}

		@Override
		public void windowDeiconified(WindowEvent e) {
		}

		@Override
		public void windowActivated(WindowEvent e) {
		}

		@Override
		public void windowDeactivated(WindowEvent e) {
		}
	}

	@Override
	public void windowOpened(WindowEvent e) {
	}

	@Override
	public void windowClosing(WindowEvent e) {
		ParseXml.setStr("msg", sendText.getText());
	}

	@Override
	public void windowClosed(WindowEvent e) {
	}

	@Override
	public void windowIconified(WindowEvent e) {
	}

	@Override
	public void windowDeiconified(WindowEvent e) {
	}

	@Override
	public void windowActivated(WindowEvent e) {
	}

	@Override
	public void windowDeactivated(WindowEvent e) {
	}

	@Override
	public void componentResized(ComponentEvent e) {
		// TODO Auto-generated method stub
	}

	@Override
	public void componentMoved(ComponentEvent e) {
		// TODO Auto-generated method stub
		JFrame x = (JFrame) e.getSource();
		comFrame.setBounds(x.getX() + 8, x.getY() + 35, 200, 400);
		if (comFrame.isVisible()) {
			comFrame.setVisible(true);
		} else {
			comFrame.setVisible(false);
		}
	}

	@Override
	public void componentShown(ComponentEvent e) {
		// TODO Auto-generated method stub

	}

	@Override
	public void componentHidden(ComponentEvent e) {
		// TODO Auto-generated method stub

	}

	@Override
	public void eventDispatched(AWTEvent event) {
		if (((KeyEvent) event).getID() == KeyEvent.KEY_PRESSED) {
			if (((KeyEvent) event).getKeyCode() == 10) {
				if (m) {
					sendAction();
					m = false;
				}
			}
		}
	}
}
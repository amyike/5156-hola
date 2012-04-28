package com.zbkj.servlet;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.Icon;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JLabel;

public class MyButton implements ActionListener{
	private JLabel jLabel;
	public MyButton(JLabel jLabel){
		this.jLabel=jLabel;
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		JButton j=(JButton)e.getSource();
//		j.setText("打开串口");
		if(j.getText().equals("打开串口")){
			j.setText("关闭串口");
			Icon   icon=   new   ImageIcon(getClass().getResource( "port.jpg")); 
			jLabel.setIcon(icon);
		}
		else{
			j.setText("打开串口");
			Icon   icon=   new   ImageIcon(getClass().getResource( "portClose.jpg"));
			jLabel.setIcon(icon);
		}
	}

}

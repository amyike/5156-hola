package com.zbkj.tool;

import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;


public class ParseXml {
	public static String getAbsolutePath(String resource) {
		return System.getProperty("user.dir");
	}
	public static List<Element> getHotelData(String typeName){
			List<Element> returnList=null;
		try{
			SAXReader reader=new SAXReader();
			Document doc=reader.read(new File(getAbsolutePath("")+File.separator+"comConfig.xml"));
			Element root=doc.getRootElement();
			List<?> list=root.elements();
			for (int i = 0; i < list.size(); i++) {
				Element element=(Element)list.get(i);
				if(element.element("type").getText().endsWith(typeName)){
					returnList=element.elements("bit");
				}
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return returnList;
	}
	public static String getStr(String msg){
		String str=null;
		try{
			SAXReader reader=new SAXReader();
			Document doc=reader.read(new File(getAbsolutePath("")+File.separator+"comConfig.xml"));
			Element root=doc.getRootElement();
			List<?> list=root.elements();
			for (int i = 0; i < list.size(); i++) {
				Element element=(Element)list.get(i);
				if(element.element("type").getText().endsWith(msg)){
					Element e=element.element("message");
					str=e.getText();
				}
			}
		}catch (Exception e) {
			e.printStackTrace();
		}		
		return str;
		
	}
	public static void setStr(String type,String msg){
		try{
			SAXReader reader=new SAXReader();
			Document doc=reader.read(new File(getAbsolutePath("")+File.separator+"comConfig.xml"));
			Element root=doc.getRootElement();
			List<?> list=root.elements();
			for (int i = 0; i < list.size(); i++) {
				Element element=(Element)list.get(i);
				if(element.element("type").getText().endsWith(type)){
					Element e=element.element("message");
					e.setText(msg);
				}
			}
			OutputFormat xmlFormat = OutputFormat.createPrettyPrint();
			xmlFormat.setEncoding("utf-8");
			XMLWriter writer = new XMLWriter(new FileOutputStream(new File(getAbsolutePath("")+File.separator+"comConfig.xml")),xmlFormat);
            writer.write(doc);
            writer.close();
		}catch (Exception e) {
			e.printStackTrace();
		}		
	}
}

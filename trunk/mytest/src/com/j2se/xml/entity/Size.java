package com.j2se.xml.entity;

import java.awt.Dimension;
import java.util.List;

import org.jdom.Document;
import org.jdom.Element;
import org.jdom.input.SAXBuilder;

public class Size {

	private Element rootElement;
	private Element currentElement;

	private int width;
	private int height;

	public Size(String moduleName) {
		try {
			SAXBuilder saxBuilder = new SAXBuilder();
			Document document = saxBuilder.build(this.getClass()
					.getResourceAsStream("/test.xml"));
			this.rootElement = document.getRootElement();
			List<Element> list = rootElement.getChildren();
			for (int i = 0; i < list.size(); i++) {
				Element ele = list.get(i);
				if (moduleName.equals(ele.getAttributeValue("name"))) {
					this.currentElement = ele;
					break;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void main(String[] args) {
		Size size = new Size("a");
		System.out.println(size.getDimension("100/200"));
	}

	public Dimension getDimension(String sizeName) {
		List<Element> list = this.currentElement.getChildren();
		for (int i = 0; i < list.size(); i++) {
			Element ele = list.get(i);
			if (sizeName.equals(ele.getAttributeValue("name"))) {
				List<Element> l = ele.getChildren();
				this.width = Integer.parseInt(l.get(0).getText());
				this.height = Integer.parseInt(l.get(1).getText());
			}
		}
		return new Dimension(this.width, this.height);
	}

	public Dimension getDimension() {
		return new Dimension(width, height);
	}

	public Size getSize() {

		return this;

	}

	public int getWidth() {
		return width;
	}

	public void setWidth(int width) {
		this.width = width;
	}

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}
}

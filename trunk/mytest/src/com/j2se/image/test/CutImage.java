package com.j2se.image.test;

import java.awt.Rectangle;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Iterator;

import javax.imageio.ImageIO;
import javax.imageio.ImageReadParam;
import javax.imageio.ImageReader;
import javax.imageio.stream.ImageInputStream;

public class CutImage {
	// 图片源
	private static final String SRC_FILE = "F://temp/1.jpg";

	// 目标图片
	private static final String DEST_FILE = "F://temp/test.jpg";

	public void readUsingImageReader() throws Exception {

		// 取得图片读入器

		Iterator readers = ImageIO.getImageReadersByFormatName("jpg");

		System.out.println(readers);

		ImageReader reader = (ImageReader) readers.next();

		System.out.println(reader);

		// 取得图片读入流

		InputStream source = new FileInputStream(SRC_FILE);

		ImageInputStream iis = ImageIO.createImageInputStream(source);

		reader.setInput(iis, true);

		// 图片参数

		ImageReadParam param = reader.getDefaultReadParam();

		Rectangle rect = new Rectangle(50, 50, 100, 100);// 100，200是左上起始位置，300就是取宽度为300的，就是从100开始取300宽，就是横向100~400，同理纵向200~350的区域就取高度150

		param.setSourceRegion(rect);

		BufferedImage bi = reader.read(0, param);

		ImageIO.write(bi, "jpg", new File(DEST_FILE));

	}

	public static void main(String[] args) throws Exception { // main方法测试用
		CutImage c = new CutImage();
		c.readUsingImageReader();
	}
}
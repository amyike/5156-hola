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
	// ͼƬԴ
	private static final String SRC_FILE = "F://temp/1.jpg";

	// Ŀ��ͼƬ
	private static final String DEST_FILE = "F://temp/test.jpg";

	public void readUsingImageReader() throws Exception {

		// ȡ��ͼƬ������

		Iterator readers = ImageIO.getImageReadersByFormatName("jpg");

		System.out.println(readers);

		ImageReader reader = (ImageReader) readers.next();

		System.out.println(reader);

		// ȡ��ͼƬ������

		InputStream source = new FileInputStream(SRC_FILE);

		ImageInputStream iis = ImageIO.createImageInputStream(source);

		reader.setInput(iis, true);

		// ͼƬ����

		ImageReadParam param = reader.getDefaultReadParam();

		Rectangle rect = new Rectangle(50, 50, 100, 100);// 100��200��������ʼλ�ã�300����ȡ���Ϊ300�ģ����Ǵ�100��ʼȡ300�����Ǻ���100~400��ͬ������200~350�������ȡ�߶�150

		param.setSourceRegion(rect);

		BufferedImage bi = reader.read(0, param);

		ImageIO.write(bi, "jpg", new File(DEST_FILE));

	}

	public static void main(String[] args) throws Exception { // main����������
		CutImage c = new CutImage();
		c.readUsingImageReader();
	}
}
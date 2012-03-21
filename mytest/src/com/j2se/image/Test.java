package com.j2se.image;

import java.awt.image.BufferedImage;
import java.io.File;

import javax.imageio.ImageIO;

import com.jhlabs.image.AbstractBufferedImageOp;
import com.jhlabs.image.ScaleFilter;

public class Test {
	private static final String SRC_FILE = "F:/1.jpg";
	private static final String DEST_FILE = "F:/test.jpg";

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		try {

			// ����ռ��е�һ������
			// Rectangle sourceRegion = new Rectangle(20, 20, 50, 50);
			// File inputFile = new File(SRC_FILE);// Դ�ļ�
			// File outputFile = new File(DEST_FILE);// Ŀ���ļ�
			// ImageUtil.cropImage(inputFile, outputFile, sourceRegion);

			// Image image = new Image("F:/1.jpg");
			// image.crop(10, 10, 30, 30);//����
			// image.emphasize(10, 10, 30, 30);// ��ɫ
			// image.convertToBlackAndWhite();//�ڰ�
			// image.combineWithPicture("F:/2.jpg");//�ں�
			// image.rotate180();//��ת
			// image.affineTransform(10, 30);
			// image.saveAs("F:/test.jpg");

			int width = 5000;
			int height = 5000;

			BufferedImage src = ImageIO.read(new File("F:/temp/1.jpg"));
			BufferedImage desc = new BufferedImage(width, height,
					BufferedImage.TYPE_INT_RGB);
			AbstractBufferedImageOp filter = null;
			// filter = new CropFilter(20, 30, 50, 30);
			filter = new ScaleFilter(width, height);
			filter.filter(src, desc);
			ImageIO.write(desc, "jpg", new File("F:/test.jpg"));

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

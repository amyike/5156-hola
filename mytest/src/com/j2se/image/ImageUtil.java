package com.j2se.image;

import java.awt.Rectangle;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.util.Iterator;

import javax.imageio.ImageIO;
import javax.imageio.ImageReadParam;
import javax.imageio.ImageReader;
import javax.imageio.stream.FileImageInputStream;
import javax.imageio.stream.ImageInputStream;

public abstract class ImageUtil {

	/**
	 * ����ͼƬ
	 * 
	 * @param inputFile
	 *            Դ�ļ�
	 * @param outputFile
	 *            Ŀ���ļ�
	 * @param sourceRegion
	 *            ��������
	 */
	public static void cropImage(File inputFile, File outputFile,
			Rectangle sourceRegion) {
		// ͼƬ��ʽ
		String formatName = "jpg";
		try {
			// ��ð������е�ǰ��ע�� ImageReader �� Iterator
			Iterator<ImageReader> iterator = ImageIO
					.getImageReaders(new FileImageInputStream(inputFile));
			// Iterator iterator = ImageIO.getImageReadersByFormatName("jpg");
			// ImageIO.getImageReadersByMIMEType("image/bmp");// image/jpeg
			// Iterator iterator = ImageIO.getImageReadersBySuffix("gif");
			ImageReader imageReader = iterator.next();// ͼƬ��ȡ��
			// ͼƬ������
			ImageInputStream imageInputStream = ImageIO
					.createImageInputStream(new FileInputStream(inputFile));
			// ����ͼƬ������
			imageReader.setInput(imageInputStream, true, true);

			ImageReadParam imageReadParam = imageReader.getDefaultReadParam();

			// ���ø���Ȥ��Դ����
			imageReadParam.setSourceRegion(sourceRegion);

			// ͼ�����ݻ�����
			BufferedImage bufferedImage = imageReader.read(0, imageReadParam);
			// ������������д�����
			ImageIO.write(bufferedImage, formatName, outputFile);

			// �ر������ͷ���Դ
			imageInputStream.close();
			imageReader.dispose();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// ѹ��ͼƬ
	public static void compressImage(File inputFile, File outputFile,
			Rectangle sourceRegion) {

	}
}

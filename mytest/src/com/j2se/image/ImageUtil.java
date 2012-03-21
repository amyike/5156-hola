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
	 * 裁切图片
	 * 
	 * @param inputFile
	 *            源文件
	 * @param outputFile
	 *            目标文件
	 * @param sourceRegion
	 *            裁切区域
	 */
	public static void cropImage(File inputFile, File outputFile,
			Rectangle sourceRegion) {
		// 图片格式
		String formatName = "jpg";
		try {
			// 获得包含所有当前已注册 ImageReader 的 Iterator
			Iterator<ImageReader> iterator = ImageIO
					.getImageReaders(new FileImageInputStream(inputFile));
			// Iterator iterator = ImageIO.getImageReadersByFormatName("jpg");
			// ImageIO.getImageReadersByMIMEType("image/bmp");// image/jpeg
			// Iterator iterator = ImageIO.getImageReadersBySuffix("gif");
			ImageReader imageReader = iterator.next();// 图片读取器
			// 图片输入流
			ImageInputStream imageInputStream = ImageIO
					.createImageInputStream(new FileInputStream(inputFile));
			// 设置图片输入流
			imageReader.setInput(imageInputStream, true, true);

			ImageReadParam imageReadParam = imageReader.getDefaultReadParam();

			// 设置感兴趣的源区域
			imageReadParam.setSourceRegion(sourceRegion);

			// 图像数据缓冲区
			BufferedImage bufferedImage = imageReader.read(0, imageReadParam);
			// 将缓冲区数据写入磁盘
			ImageIO.write(bufferedImage, formatName, outputFile);

			// 关闭流，释放资源
			imageInputStream.close();
			imageReader.dispose();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 压缩图片
	public static void compressImage(File inputFile, File outputFile,
			Rectangle sourceRegion) {

	}
}

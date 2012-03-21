package com.j2se.file;

import java.io.File;

import org.apache.commons.io.FileUtils;

public class FileTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		try {
			FileUtils.copyFile(new File("F:/1.txt"), new File(
					"F:/1asdfasfd/a/2.txt"));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

package com.j2se.net;

import java.io.BufferedInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

public class NetTest {

	public void a() {
		try {
			// HttpServer httpServer = HttpServer.create();
			URL url = new URL("http://45gongshe.com");

			HttpURLConnection httpUrlConn = (HttpURLConnection) url
					.openConnection();
			// HttpClient httpClient = HttpClient.New(url);
			BufferedInputStream bif = new BufferedInputStream(
					httpUrlConn.getInputStream());
			byte[] _bytes = new byte[1024];
			FileWriter fileWriter = new FileWriter(
					"C:/Users/Administrator/Desktop/baidu.html");
			System.out.println(httpUrlConn.getHeaderFields());
			for (int i = bif.read(_bytes); i != -1; i = bif.read(_bytes)) {
				fileWriter.write(new String(_bytes, 0, i, "utf-8"));
			}
			fileWriter.close();
			bif.close();
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public void b() {
		try {
			FileReader fileReader = new FileReader(
					"C:/Users/Administrator/Desktop/3d.txt");
			// CharBuffer charBuffer = new CharBuffer(fileReader);
			char[] _chars = new char[1024];
			for (int i = fileReader.read(_chars); -1 != i; i = fileReader
					.read(_chars)) {
				System.out.println(_chars);
			}
			fileReader.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public static void main(String[] args) {
		try {
			Runtime runtime = Runtime.getRuntime();
			Process process = runtime.exec("cmd.exe");
			InputStreamReader isr = new InputStreamReader(
					process.getInputStream());
			// OutputStreamWriter osw = new OutputStreamWriter(
			// process.getOutputStream());

			char[] _char = new char[1024];
			for (int i = isr.read(_char); i != -1; i = isr.read(_char)) {
				System.out.print(new String(_char, 0, i));
			}
			// osw.close();
			isr.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

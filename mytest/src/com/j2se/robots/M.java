package com.j2se.robots;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class M {
	public static void main(String[] args) {
		ExecutorService threadPool = Executors.newFixedThreadPool(3);
		for (int i = 1; i < 5; i++) {
			final int taskID = i;
			threadPool.execute(new Runnable() {
				public void run() {
					for (int i = 1; i < 5; i++) {
						try {
							Thread.sleep(100);// Ϊ�˲��Գ�Ч������ÿ������ִ�ж���Ҫһ��ʱ��
						} catch (InterruptedException e) {
							e.printStackTrace();
						}
						System.out.println("��" + taskID + "������ĵ�" + i + "��ִ��");
					}
				}
			});
		}
		threadPool.shutdown();// ����ִ����ϣ��ر��̳߳�
	}
}

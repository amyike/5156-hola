package com.j2se.robots;

import java.sql.Date;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadPoolExecutor;

import com.j2se.robots.pp.IDCards;
import com.j2se.robots.pp.Person;

public class Main {
	public static void main(String[] args) {
		try {

			// 一个人
			Person toms = new Person(new IDCards(431121199102154414l, "亦可",
					'男', "汉", new Date(1991, 3, 30), ""));
			// 交流
			toms.listen();

			ExecutorService executorService = Executors.newFixedThreadPool(3);
			ThreadPoolExecutor threadPoolExecutor = null;
			executorService.execute(new Runnable() {

				public void run() {

				}
			});

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

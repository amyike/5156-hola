package com.j2se.robots.pp;

import java.io.BufferedReader;
import java.io.InputStreamReader;

/**
 * 
 * @author Administrator
 * 
 */
public class Person {

	private IDCards idCards;// 身份证

	public Person() {
	}

	public Person(IDCards idCards) {
		super();
		this.idCards = idCards;
	}

	public IDCards getIdCards() {
		return idCards;
	}

	public void setIdCards(IDCards idCards) {
		this.idCards = idCards;
	}

	/**
	 * 听
	 */
	public void listen() {
		try {
			System.out.println("你好,我是" + this.idCards.getName());
			System.out.println("您有什么需要咨询的吗？");

			String stopFlag = "88";
			BufferedReader br = new BufferedReader(new InputStreamReader(
					System.in));
			String content = "";
			while ((content = br.readLine()) != null) {
				// 说完
				if (content.equals(stopFlag))
					return;

				System.out.println(content);
			}
			br.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 说
	 */
	public void say() {

	}
}

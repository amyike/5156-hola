package com.j2se.robots.pp;

import java.io.BufferedReader;
import java.io.InputStreamReader;

/**
 * 
 * @author Administrator
 * 
 */
public class Person {

	private IDCards idCards;// ���֤

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
	 * ��
	 */
	public void listen() {
		try {
			System.out.println("���,����" + this.idCards.getName());
			System.out.println("����ʲô��Ҫ��ѯ����");

			String stopFlag = "88";
			BufferedReader br = new BufferedReader(new InputStreamReader(
					System.in));
			String content = "";
			while ((content = br.readLine()) != null) {
				// ˵��
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
	 * ˵
	 */
	public void say() {

	}
}

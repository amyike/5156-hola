package com.hola.service;

import java.util.List;

public interface IBaseService<K, T> {
	/**
	 * ���� ID ��ѯ
	 * 
	 * @param key
	 * @return
	 */
	T find(final K key);

	/**
	 * ��ҳ��ѯ
	 * 
	 * @param pageIndex
	 * @param pageSize
	 * @return
	 */
	List<T> find(final int pageIndex, final int pageSize);

	/**
	 * ��ȡ����
	 * 
	 * @return
	 */
	int count();

	/**
	 * ���
	 * 
	 * @param pojo
	 * @return
	 */
	void create(final T pojo);

	/**
	 * ����
	 * 
	 * @param pojo
	 * @return
	 */
	void update(final T pojo);

	/**
	 * ɾ��
	 * 
	 * @param key
	 * @return
	 */
	void delete(final K key);
}

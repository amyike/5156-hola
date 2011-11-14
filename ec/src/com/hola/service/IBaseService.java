package com.hola.service;

import java.util.List;

public interface IBaseService<K, T> {
	/**
	 * 根据 ID 查询
	 * 
	 * @param key
	 * @return
	 */
	T find(final K key);

	/**
	 * 分页查询
	 * 
	 * @param pageIndex
	 * @param pageSize
	 * @return
	 */
	List<T> find(final int pageIndex, final int pageSize);

	/**
	 * 获取总数
	 * 
	 * @return
	 */
	int count();

	/**
	 * 添加
	 * 
	 * @param pojo
	 * @return
	 */
	void create(final T pojo);

	/**
	 * 更新
	 * 
	 * @param pojo
	 * @return
	 */
	void update(final T pojo);

	/**
	 * 删除
	 * 
	 * @param key
	 * @return
	 */
	void delete(final K key);
}

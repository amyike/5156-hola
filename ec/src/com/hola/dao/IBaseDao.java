package com.hola.dao;

import java.util.List;

import com.hola.Exception.BizException;

/**
 * 
 * @author yike
 * 
 * @see Dao 层基类
 * 
 * @param <K>
 *            Key
 * @param <T>
 *            Type
 */
public interface IBaseDao<K, T> {
	/**
	 * 根据 ID 查询
	 * 
	 * @param key
	 * @return
	 */
	T find(final K key) throws BizException;

	/**
	 * 分页查询
	 * 
	 * @param pageIndex
	 * @param pageSize
	 * @return
	 */
	List<T> find(final int pageIndex, final int pageSize) throws BizException;

	/**
	 * 获取总数
	 * 
	 * @return
	 */
	int count() throws BizException;

	/**
	 * 添加
	 * 
	 * @param pojo
	 * @return
	 */
	void create(final T pojo) throws BizException;

	/**
	 * 更新
	 * 
	 * @param pojo
	 * @return
	 */
	void update(final T pojo) throws BizException;

	/**
	 * 删除
	 * 
	 * @param key
	 * @return
	 */
	void delete(final K key) throws BizException;
}
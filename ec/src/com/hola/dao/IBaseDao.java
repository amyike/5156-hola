package com.hola.dao;

import java.io.Serializable;
import java.util.List;

import com.hola.Exception.BizException;

/**
 * 
 * @author yike
 * 
 * @see Dao 层基类
 * 
 * @param <T>
 *            Type
 */
public interface IBaseDao<T> {
	/**
	 * 根据 ID 查询
	 * 
	 * @param id
	 * @return
	 * @throws BizException
	 */
	T find(final Serializable id) throws BizException;

	/**
	 * 分页查询
	 * 
	 * @param pageIndex
	 * @param pageSize
	 * @return
	 * @throws BizException
	 */
	List<T> find(final int pageIndex, final int pageSize) throws BizException;

	/**
	 * 获取数据总数
	 * 
	 * @return
	 * @throws BizException
	 */
	int count() throws BizException;

	/**
	 * 添加
	 * 
	 * @param pojo
	 * @throws BizException
	 */
	void create(final T pojo) throws BizException;

	/**
	 * 更新
	 * 
	 * @param pojo
	 * @throws BizException
	 */
	void update(final T pojo) throws BizException;

	/**
	 * 根据 ID 删除
	 * 
	 * @param id
	 * @throws BizException
	 */
	void delete(final Serializable id) throws BizException;
}
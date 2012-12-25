package com.hola.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

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
	 * 根据 ID(主键) 查询
	 * 
	 * @param ID
	 * @return @
	 */
	T findByID(final Serializable Id);

	/**
	 * 根据条件查询
	 * 
	 * @param criteria
	 * @return @
	 */
	T findByCriteria(final DetachedCriteria criteria);

	/**
	 * 根据条件查询数据
	 * 
	 * @param criteria
	 * @param firstResult
	 *            数据查询起始位置
	 * @param maxResults
	 *            最大查询限制条数 为0时不限制
	 * 
	 * @return
	 */
	List<T> findListByCriteria(final DetachedCriteria criteria,
			final int firstResult, final int maxResults);

	/**
	 * 根据条件查询数据总数
	 * 
	 * @param criteria
	 * @return
	 */
	int count(final DetachedCriteria criteria);

	/**
	 * 添加
	 * 
	 * @param pojo
	 */
	int save(final T pojo);

	/**
	 * 更新
	 * 
	 * @param pojo
	 */
	void update(final T pojo);

	/**
	 * 根据 id 删除
	 * 
	 * @param id
	 */
	void deleteByID(final Serializable id);

	/**
	 * 根据 条件 删除
	 * 
	 * @param criteria
	 */
	void deleteByCriteria(final DetachedCriteria criteria);
}
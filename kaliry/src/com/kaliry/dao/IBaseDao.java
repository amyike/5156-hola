package com.kaliry.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import com.kaliry.pojo.BasePojo;

/**
 * 
 * @author yike
 * 
 * @see Base Dao Interface
 * 
 * @param <PK>
 *            PrimaryKey
 * @param <T>
 *            Type
 */
public interface IBaseDao<PK extends Serializable, T extends BasePojo> {

	/**
	 * 根据 ID(主键) 查询
	 * 
	 * @param ID
	 * @return @
	 */
	T findByID(final PK Id);

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
	 * 根据条件查询数据
	 * 
	 * @param criteria
	 * @return
	 */
	List<T> findListByCriteria(final DetachedCriteria criteria);

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
	 * 删除
	 * 
	 * @param id
	 */
	void delete(final T pojo);

	/**
	 * 根据 id 删除
	 * 
	 * @param id
	 */
	T deleteByID(final PK id);

	/**
	 * 根据 条件 删除
	 * 
	 * @param criteria
	 */
	void deleteByCriteria(final DetachedCriteria criteria);
}
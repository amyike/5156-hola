package com.kaliry.service;

import java.io.Serializable;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import com.kaliry.dao.BaseDao;
import com.kaliry.exception.BizException;
import com.kaliry.pojo.BasePojo;

/**
 * 
 * @author yike
 * 
 * @see Base Service Interface
 * 
 * @param <PK>
 *            PrimaryKey
 * @param <T>
 *            Type
 */
public interface IBaseService<PK extends Serializable, T extends BasePojo> {

	BaseDao<PK, T> getDao();

	/**
	 * 根据 ID 查询
	 * 
	 * @param id
	 * @return
	 * @throws BizException
	 */
	T findByID(final PK id) throws BizException;

	/**
	 * 根据条件查询
	 * 
	 * @param criteria
	 * @return
	 * @throws BizException
	 */
	T findByCriteria(final DetachedCriteria criteria) throws BizException;

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
			final int firstResult, final int maxResults) throws BizException;

	/**
	 * 根据条件查询数据
	 * 
	 * @param criteria
	 * @return
	 */
	List<T> findListByCriteria(final DetachedCriteria criteria)
			throws BizException;

	/**
	 * 获取数据总数
	 * 
	 * @return
	 * @throws BizException
	 */
	int count(final DetachedCriteria criteria) throws BizException;

	/**
	 * 添加
	 * 
	 * @param pojo
	 * @throws BizException
	 */
	int save(final T pojo) throws BizException;

	/**
	 * 更新
	 * 
	 * @param pojo
	 * @throws BizException
	 */
	void update(final T pojo) throws BizException;

	/**
	 * 删除
	 * 
	 * @param id
	 */
	void delete(final T pojo) throws BizException;

	/**
	 * 根据 ID主键 删除
	 * 
	 * @param id
	 * @throws BizException
	 */
	T deleteByID(final PK id) throws BizException;

	/**
	 * 根据 条件 删除数据
	 * 
	 * @param criteria
	 * @throws BizException
	 */
	void deleteByCriteria(final DetachedCriteria criteria) throws BizException;
}

package com.nianmi.member.mapper;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

/**
 * @function 所有的Mapper继承这个接口
 * @author yike
 */
public interface SqlMapper {

	@Select("select count(1) from ${tableName}")
	int count(@Param("tableName") final String tableName);

	// Map<String, Object> findById(@Param("tableName") final String tableName,
	// @Param("id") final long id);

	// @Select("select * from ${tableName} where id = #{id}")
	// Map<String, Object> findById(@Param("tableName") final String tableName,
	// @Param("id") final long id);

	// @Select("select * from ts_invite_cause where status = 1")
	// List<T> find(final int pageFirst, final int pageSize);

	// @Insert("")
	// void save(final T pojo);

	// @Update("")
	// void update(final T pojo);

	// @Delete("delete from ${tableName} where id = #{id}")
	// void deleteById(@Param("tableName") final String tableName, final long
	// id);
}

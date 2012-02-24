package com.nianmi.member.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.nianmi.member.pojo.TsInviteCause;

/**
 * @function 所有的Mapper继承这个接口
 * @author yike
 * 
 * 
 */
public interface SqlMapper<T> {
	@Result(javaType = TsInviteCause.class)
	@Select("select * from ts_invite_cause where id = #{id}")
	T findById(final long id);

	@Select("select * from ts_invite_cause where c_id = #{uname}")
	List<T> find(final int pageFirst, final int pageSize);

	@Select("select count(1) from ts_invite_cause")
	int count();

	@Insert("")
	void save(final T pojo);

	@Update("")
	void update(final T pojo);

	@Delete("")
	void deleteById(final long id);
}

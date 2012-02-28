package com.nianmi.member.dao;

import org.springframework.dao.DataAccessException;

public interface AccountDao {
	public boolean addAccount() throws DataAccessException;
}

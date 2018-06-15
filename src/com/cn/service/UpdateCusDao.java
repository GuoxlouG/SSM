package com.cn.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cn.domain.Customer;

@Service
public class UpdateCusDao {
	@Autowired
	public SqlSessionTemplate sqlSession;
	public boolean updatecu(Customer cus){
		boolean flag=false;
		int ret = sqlSession.update("updatecus",cus);
		if(ret>0){
			flag=true;
		}
		return flag;
	}


}

package com.cn.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cn.domain.User;

@Service
public class RegisterDao {
	@Autowired
	public SqlSessionTemplate sqlSession;
	public boolean insertuser(User user){
		boolean ret=false;
		int re = sqlSession.insert("addUser",user);
		if(re>0){
			ret=true;
		}
		return ret;
	}
}

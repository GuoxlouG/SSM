package com.cn.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cn.domain.User;

@Service
public class LoginDao {
	@Autowired
	public SqlSessionTemplate sqlSession;
	public User checkuser(User user){
		User us=sqlSession.selectOne("selectuser", user);
		if(us!=null){
			return us;
		}
		else{
			return null;
		}
	}
}

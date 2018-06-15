package com.cn.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cn.domain.Employee;

@Service
public class UpSelectEmpDao {
	@Autowired
	public SqlSessionTemplate sqlSession;
	public Employee upselemp(Employee emp){
		Employee ret = sqlSession.selectOne("selone",emp);
		return ret;
	}

}

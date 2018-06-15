package com.cn.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cn.domain.Employee;

@Service
public class InsertEmpDao {
	@Autowired
	public SqlSessionTemplate sqlSession;
	public int insertEmp(Employee emp){
		int e = sqlSession.insert("addEmp",emp);
		return e;
	}

}

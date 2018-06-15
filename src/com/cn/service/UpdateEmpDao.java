package com.cn.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cn.domain.Employee;

@Service
public class UpdateEmpDao {
	@Autowired
	public SqlSessionTemplate sqlSession;
	public boolean updateEmp(Employee emp){
		boolean flag = false;
		int ret = sqlSession.update("updateEmp",emp);
		if(ret>0){
			flag=true;
		}
		return flag;
	}

}

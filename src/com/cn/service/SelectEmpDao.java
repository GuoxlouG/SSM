package com.cn.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cn.domain.Employee;

@Service
public class SelectEmpDao {
	@Autowired
	public SqlSessionTemplate sqlSession;
	public List<Employee> selectEmp(Employee emp){
		List<Employee> listemp=sqlSession.selectList("selectemp", emp);
		return listemp;
	}
	public List<Employee> select4() {
		List<Employee> list=sqlSession.selectList("selectemp1");
		if(list!=null){
			return list;
		}else{
			return null;
		}
		
	}

}

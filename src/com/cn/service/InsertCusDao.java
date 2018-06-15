package com.cn.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cn.domain.Customer;

@Service
public class InsertCusDao {
@Autowired
public SqlSessionTemplate sqlSession;
public int insertCus(Customer cus){
	int e = sqlSession.insert("insertCus",cus);
	return e;
}
}

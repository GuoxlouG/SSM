package com.cn.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cn.domain.Customer;

@Service
public class UpSelectCusDao {
	@Autowired
	public SqlSessionTemplate sqlSession;
	public Customer updateselcus(Customer cus){
		Customer ret = sqlSession.selectOne("selcusone",cus);
		return ret;
	}

}

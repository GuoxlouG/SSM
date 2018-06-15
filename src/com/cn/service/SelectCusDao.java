package com.cn.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cn.domain.Customer;

@Service
public class SelectCusDao {
	@Autowired
	public SqlSessionTemplate sqlSession;
	public List<Customer> selectCus(Customer cus){
		List<Customer> result = sqlSession.selectList("selectCustom",cus);
		return result;
	}
	public List<Customer> select3() {
		 List<Customer> list=sqlSession.selectList("selectCustom1");
		 if(list!=null){
			 return list;
		 }else{
			 return null;
		 }
		
	}

}

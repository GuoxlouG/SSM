package com.cn.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cn.domain.Customer;
import com.cn.domain.Employee;
import com.cn.domain.Merchandise;

@Service
public class DeleteDao {
	@Autowired
	public SqlSessionTemplate sqlSession;
	
	//与数据库交互，实现根据编号删除员工信息
	public boolean deleteemp(Employee emp){
		boolean flag = false;
		int ret = sqlSession.delete("delemp",emp);
		if(ret>0){
			flag = true;
		}
		return flag;
	}
	
	//与数据库交互，实现根据编号删除客户信息
	public boolean deletecus(Customer cus){
		boolean flag = false;
		int ret = sqlSession.delete("delcus",cus);
		if(ret>0){
			flag = true;
		}
		return flag;
	}
	
	//与数据库交互，实现根据编号删除商品信息
	public boolean deletegoods(Merchandise mer){
		boolean flag = false;
		int ret = sqlSession.delete("delgoods",mer);
		if(ret>0){
			flag = true;
		}
		return flag;
	}

}

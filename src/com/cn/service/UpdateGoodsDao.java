package com.cn.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cn.domain.Merchandise;

@Service
public class UpdateGoodsDao {
	@Autowired
	public SqlSessionTemplate sqlSession;
	public boolean upmer(Merchandise mer){
		boolean flag = false;
		int ret = sqlSession.update("upgoods",mer);
		if(ret>0){
			flag=true;
		}
		return flag;
	}
}

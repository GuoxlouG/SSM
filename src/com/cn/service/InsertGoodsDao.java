package com.cn.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cn.domain.Merchandise;

@Service
public class InsertGoodsDao {
	@Autowired
	public SqlSessionTemplate sqlSession;
	public int insertGoods(Merchandise mer){
		int e = sqlSession.insert("addmer",mer);
		return e;
	}
	

}

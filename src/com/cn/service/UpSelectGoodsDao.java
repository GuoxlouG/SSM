package com.cn.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cn.domain.Merchandise;

@Service
public class UpSelectGoodsDao {
	@Autowired
	public SqlSessionTemplate sqlSession;
	public Merchandise upselmer(Merchandise mer){
		Merchandise ret = sqlSession.selectOne("selmerone",mer);
		return ret;
	}
}

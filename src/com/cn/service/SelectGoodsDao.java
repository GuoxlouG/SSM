package com.cn.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cn.domain.Merchandise;

@Service
public class SelectGoodsDao {
	@Autowired
	public SqlSessionTemplate sqlSession;
	public List<Merchandise> selectgoods(Merchandise mer){
		List<Merchandise> result = sqlSession.selectList("selmer",mer);
		return result;
	}
	public List<Merchandise> selectme() {
		List<Merchandise> result = sqlSession.selectList("selmer1");
		if(result!=null){
			return result;
		}else{
			return null;
		}

	}

}

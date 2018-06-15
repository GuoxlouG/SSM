package com.cn.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cn.domain.Orders;
@Service
public class OrdersDao {
	@Autowired
	SqlSessionTemplate sqlSession;
	public List<Orders> insertOrder(Orders order) {
		List<Orders> list=sqlSession.selectList("selectO", order);
		if(list!=null){
			return list;
		}else{
			return null;
		}
		
	}
	public boolean deleteOr(Orders order) {
		boolean ret=false;
		int re=sqlSession.delete("deleteOrder", order);
		if(re>0){
			ret=true;
		}
		return ret;
	}
	public boolean insertO(Orders order) {
		boolean ret=false;
		int re=sqlSession.insert("insertOrd", order);
		if(re>0){
			ret=true;
		}
		return ret;
	}
	public List<Orders> select1(Orders order) {
		List<Orders> list=sqlSession.selectList("selectO", order);
		if(list!=null){
			return list;
		}else{
			return null;
		}
	}
	public boolean update(Orders order) {
		boolean ret=false;
		int re=sqlSession.update("updateO", order);
		if(re>0){
			ret=true;
		}
		return ret;
	}

}

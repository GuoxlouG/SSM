package com.cn.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.cn.domain.StockIn;

@Service
public class StockDao {
	@Autowired
	SqlSessionTemplate sqlSession;
	public List<StockIn> selectSt(StockIn stock1) {
		List<StockIn>  list=sqlSession.selectList("selectStock",stock1);
		if(list!=null){
			return list;
		}else{
			return null;
		}
		
	}
	//删除数据
	public boolean delete(StockIn stock1) {
		boolean ret=false;
		int re=sqlSession.delete("deleteS",stock1);
		if(re>0){
			ret=true;
		}
		return ret;
	}
	//新增数据
	public boolean insertStock(StockIn stock1) {
		boolean ret=false;
		int re=sqlSession.insert("insertSto",stock1);
		if(re>0){
			ret=true;
		}
		return ret;
	}
	//修改之前的查询
	public List<StockIn> selectSto(StockIn stock1) {
		List<StockIn>  list=sqlSession.selectList("selectStock",stock1);
		if(list!=null){
			return list;
		}else{
			return null;
		}
		
	}
	//修改数据
	public boolean updatetStock(StockIn stock1) {
		boolean ret=false;
		int re=sqlSession.update("updateSt",stock1);
		if(re>0){
			ret=true;
		}
		return ret;
	}

}

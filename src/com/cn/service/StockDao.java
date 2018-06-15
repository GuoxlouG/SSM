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
	//ɾ������
	public boolean delete(StockIn stock1) {
		boolean ret=false;
		int re=sqlSession.delete("deleteS",stock1);
		if(re>0){
			ret=true;
		}
		return ret;
	}
	//��������
	public boolean insertStock(StockIn stock1) {
		boolean ret=false;
		int re=sqlSession.insert("insertSto",stock1);
		if(re>0){
			ret=true;
		}
		return ret;
	}
	//�޸�֮ǰ�Ĳ�ѯ
	public List<StockIn> selectSto(StockIn stock1) {
		List<StockIn>  list=sqlSession.selectList("selectStock",stock1);
		if(list!=null){
			return list;
		}else{
			return null;
		}
		
	}
	//�޸�����
	public boolean updatetStock(StockIn stock1) {
		boolean ret=false;
		int re=sqlSession.update("updateSt",stock1);
		if(re>0){
			ret=true;
		}
		return ret;
	}

}

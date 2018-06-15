package com.cn.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cn.domain.Merchandise;
import com.cn.service.InsertGoodsDao;
@Controller
public class InsertGoodsCon {
	//新增商品信息
	@Autowired
	InsertGoodsDao insertgoodsdao;
	@RequestMapping("addGoods.do")
	public String add(Merchandise  mer){
		if(insertgoodsdao.insertGoods(mer)>0){
			return "redirect:/selectGoods.do";
		}else{
			return "login-err";
		}
		
	}
}

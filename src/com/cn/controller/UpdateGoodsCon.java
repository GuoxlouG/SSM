package com.cn.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cn.domain.Merchandise;
import com.cn.service.UpSelectGoodsDao;
import com.cn.service.UpdateGoodsDao;

@Controller
public class UpdateGoodsCon {
	//从数据库获取对应编号的商品信息
	@Autowired
	UpSelectGoodsDao upselmerdao;
	@RequestMapping("goods-update.do")
	public String upselmer(Merchandise mer,Model model){
		Merchandise result = upselmerdao.upselmer(mer);
		model.addAttribute("mer",result);
		return "goods-update";
	}
	//修改商品信息
	@Autowired
	UpdateGoodsDao upmerdao;
	@RequestMapping("updateGoods.do")
	public String uodate(Merchandise mer){
		if(upmerdao.upmer(mer)){
			return "redirect:/selectGoods.do";
		}
		else{
			return "login_err";
		}
	}
}

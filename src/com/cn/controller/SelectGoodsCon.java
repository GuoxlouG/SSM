package com.cn.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.cn.domain.Merchandise;
import com.cn.service.SelectGoodsDao;

@SessionAttributes("m")
@Controller
public class SelectGoodsCon {
	@Autowired
	SelectGoodsDao selectgoodsdao;
	//查询商品信息
	@RequestMapping("selectGoods.do")
	public String selggoods(Merchandise mer,Model model){
		List<Merchandise> re = selectgoodsdao.selectgoods(mer);
		model.addAttribute("m",re);
		return "goods-files";
	}
}

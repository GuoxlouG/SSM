package com.cn.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.cn.domain.Customer;
import com.cn.service.SelectCusDao;

@SessionAttributes("c")
@Controller
public class SelectCusCon {
	@Autowired
	SelectCusDao selectcusdao;
	//查询客户信息
	@RequestMapping("selectCus.do")
	public String selCus(Customer cus,Model model){
		List<Customer> re = selectcusdao.selectCus(cus);
		model.addAttribute("c",re);
		return "client-files";
	}
	

}

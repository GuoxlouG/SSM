package com.cn.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cn.domain.Customer;
import com.cn.service.InsertCusDao;

@Controller
public class InsertCustomerCon {
	//新增客户信息
	@Autowired
	InsertCusDao insertcusdao;
	@RequestMapping("addCustomer.do")
	public String add(Customer cus){
		if(insertcusdao.insertCus(cus)>0){
			return "redirect:/selectCus.do";
		}else{
			return "login-err";
		}
		
	}
}

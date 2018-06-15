package com.cn.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cn.domain.Customer;
import com.cn.domain.Employee;
import com.cn.domain.Merchandise;
import com.cn.service.DeleteDao;

@Controller
public class DeleteCon {
	@Autowired
	DeleteDao deldao;
	
	//ɾ��Ա����Ϣ
	@RequestMapping("deleteEmp.do")
	public String empdel(Employee emp){
		if(deldao.deleteemp(emp)){
			return "redirect:/selectempl.do";
		}
		else{
			return "login_err";
		}
	}
	
	//ɾ���ͻ���Ϣ
	@RequestMapping("deleteCus.do")
	public String cusdel(Customer cus){
		if(deldao.deletecus(cus)){
			return "redirect:/selectCus.do";
		}
		else{
			return "login_err";
		}
	}
	
	//ɾ����Ʒ��Ϣ
	@RequestMapping("deleteMer.do")
	public String merdel(Merchandise mer){
		if(deldao.deletegoods(mer)){
			return "redirect:/selectGoods.do";
		}
		else{
			return "login_err";
		}
	}
}

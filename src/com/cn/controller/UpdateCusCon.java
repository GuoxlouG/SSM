package com.cn.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cn.domain.Customer;
import com.cn.service.UpSelectCusDao;
import com.cn.service.UpdateCusDao;

@Controller
public class UpdateCusCon {
	//�����ݿ��ȡ��Ӧ��ŵĿͻ���Ϣ
	@Autowired
	UpSelectCusDao upselcusdao;
	@RequestMapping("client-update.do")
	public String updatesel(Customer cus,Model model){
		Customer result = upselcusdao.updateselcus(cus);
		model.addAttribute("cus",result);
		return "client-update";
	}
	//�޸Ŀͻ���Ϣ
	@Autowired
	UpdateCusDao upcusdao;
	@RequestMapping("updateCustomer.do")
	public String update(Customer cus){
		if(upcusdao.updatecu(cus)){
			return "redirect:/selectCus.do";
		}else{
			return "login_err";
		}
	}

}

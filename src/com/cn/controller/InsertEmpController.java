package com.cn.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cn.domain.Employee;
import com.cn.service.InsertEmpDao;

@Controller
public class InsertEmpController {
	//新增员工信息
	@Autowired
	InsertEmpDao insertempdao;
	@RequestMapping("addEmployee.do")
	public String add(Employee emp){
		if(insertempdao.insertEmp(emp)>0){
			return "redirect:/selectempl.do";
		}else{
			return "login-err";
		}
		
	}

}

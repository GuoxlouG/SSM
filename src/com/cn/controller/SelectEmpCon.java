package com.cn.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.cn.domain.Employee;
import com.cn.service.SelectEmpDao;

@SessionAttributes("e")
@Controller
public class SelectEmpCon {
	@Autowired
	SelectEmpDao selectempdao;
	//查询员工信息
	@RequestMapping("selectempl.do")
	public String selemp(Employee emp,Model model){
		List<Employee> result = selectempdao.selectEmp(emp);
		model.addAttribute("e",result);
		return "employee-files";
	}

}

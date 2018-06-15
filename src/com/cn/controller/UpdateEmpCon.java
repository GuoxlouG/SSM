package com.cn.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cn.domain.Employee;
import com.cn.service.UpSelectEmpDao;
import com.cn.service.UpdateEmpDao;
@Controller
public class UpdateEmpCon {
	//�����ݿ��ȡ��Ӧ��ŵ�Ա����Ϣ
	@Autowired
	UpSelectEmpDao upselempdao;
	@RequestMapping("employee-update.do")
	public String upsel(Employee emp,Model model){
		Employee result = upselempdao.upselemp(emp);
		model.addAttribute("emp",result);
		return "employee-update";
	}
	//�޸�Ա����Ϣ
	@Autowired
	UpdateEmpDao updateempdao;
	@RequestMapping("updateEmployee.do")
	public String update(Employee emp){
		if(updateempdao.updateEmp(emp)){
			return "redirect:/selectempl.do";
		}else{
			return "login-err";
		}
	}

}

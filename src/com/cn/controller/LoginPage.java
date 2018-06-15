package com.cn.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.cn.domain.Customer;
import com.cn.domain.Employee;
import com.cn.domain.Merchandise;
import com.cn.service.SelectCusDao;
import com.cn.service.SelectEmpDao;
import com.cn.service.SelectGoodsDao;

@Controller
@SessionAttributes(value={"u","Ocu","Oe","Om"})
public class LoginPage {
	//�ͻ�
	@Autowired
	SelectCusDao customer;
	//Ա��
	@Autowired
	SelectEmpDao emp;
	//��Ʒ
	@Autowired
	SelectGoodsDao select1;
	//��ת����¼ҳ��
	@RequestMapping("login.do")
	public String login(){
		return "login";
	}
	//��ת��ע��ҳ��
	@RequestMapping("register.do")
	public String register(){
		return "register";
	}
	//��߲���ҳ�����ת
	//��ת��Ա����������
	@RequestMapping("employee-files.do")
	public String employee(){
		return "employee-files";
	}
	@RequestMapping("goods-files.do")
	public String goods(){
		return "goods-files";
	}
	@RequestMapping("client-files.do")
	public String client(){
		return "client-files";
	}
	@RequestMapping("stockOrder.do")
	public String stockOrder(Model model){
		//�ͻ���ѯ
		List<Customer> list1=customer.select3();
		model.addAttribute("Ocu", list1);
		List<Employee>empl= emp.select4();
		model.addAttribute("Oe", empl);
		//��Ʒ��ѯ
		List<Merchandise> listmer = select1.selectme();
		model.addAttribute("Om", listmer);
		return "stockOrder";
	}
	@RequestMapping("stockIn.do")
	public String stockIn(){
		return "stockIn";
	}
	//��������ҳ����ת
	@RequestMapping("goods-insert.do")
	public String ginsert(){
		return "goods-insert";
	}
	@RequestMapping("client-insert.do")
	public String cinsert(){
		return "client-insert";
	}
	@RequestMapping("employee-insert.do")
	public String einsert(){
		return "employee-insert";
	}

	
	
	
}

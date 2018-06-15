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
	//客户
	@Autowired
	SelectCusDao customer;
	//员工
	@Autowired
	SelectEmpDao emp;
	//商品
	@Autowired
	SelectGoodsDao select1;
	//跳转到登录页面
	@RequestMapping("login.do")
	public String login(){
		return "login";
	}
	//跳转到注册页面
	@RequestMapping("register.do")
	public String register(){
		return "register";
	}
	//左边部分页面的跳转
	//跳转到员工档案界面
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
		//客户查询
		List<Customer> list1=customer.select3();
		model.addAttribute("Ocu", list1);
		List<Employee>empl= emp.select4();
		model.addAttribute("Oe", empl);
		//商品查询
		List<Merchandise> listmer = select1.selectme();
		model.addAttribute("Om", listmer);
		return "stockOrder";
	}
	@RequestMapping("stockIn.do")
	public String stockIn(){
		return "stockIn";
	}
	//新增部分页面跳转
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

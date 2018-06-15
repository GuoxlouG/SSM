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
import com.cn.domain.Orders;
import com.cn.service.OrdersDao;
import com.cn.service.SelectCusDao;
import com.cn.service.SelectEmpDao;
import com.cn.service.SelectGoodsDao;
@Controller
public class OrdersController {
	@Autowired
	public OrdersDao orders;
	
	//查询orders数据
	@RequestMapping("insertOrder.do")
	public String insertOrder(Orders order,Model model){
		
		List<Orders> list=orders.insertOrder(order);
		model.addAttribute("ord", list);
		return "stockOrder";
	}
	//删除数据
	@RequestMapping("deleteOrd.do")
	public String deleteOrd(Orders order){
		if(orders.deleteOr(order)){
			return "redirect:/insertOrder.do";
		}else{
			return "login_err";
		}
	}
	//新增数据页面跳转
	@RequestMapping("orderInsert.do")
	public String orderInsert(Model model){
		return "order-insert";
	}
	//插入数据
	@RequestMapping("addOrder.do")
	public String addOrder(Orders order){ 
		if(orders.insertO(order)){
			return "redirect:/insertOrder.do";
		}else{
			return "";
		}
	}
	//修改跳转页面进行查询
	@RequestMapping("order-update.do")
	public String orderUp(Orders order,Model model){
		List<Orders> list=orders.select1(order);
		model.addAttribute("oder", list);
		return "order-update";
	}
	//修改数据
	@RequestMapping("updateorder.do")
	public String updateorder(Orders order){
		if(orders.update(order)){
			return "redirect:/insertOrder.do";
		}else{
			return null;
		}
	}
		
}

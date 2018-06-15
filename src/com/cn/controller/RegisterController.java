package com.cn.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cn.domain.User;
import com.cn.service.RegisterDao;
@Controller
public class RegisterController {
	//π‹¿Ì‘±◊¢≤·
	@Autowired
	RegisterDao registedao;
	@RequestMapping("regaccess.do")
	public String reg(User  user){
		if(registedao.insertuser(user)){
			return "login";
		}else{
			return "login-err";
		}
		
	}

}

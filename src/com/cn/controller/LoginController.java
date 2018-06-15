package com.cn.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;


import com.cn.domain.User;
import com.cn.service.LoginDao;


@Controller
@SessionAttributes(value={"u","Ocu","Oe","Om"})
public class LoginController {
	//验证用户登录
	@Autowired
	LoginDao login;

	@RequestMapping("loginaccess.do")
	public String checkuser(User user1,Model model){
		User ret = login.checkuser(user1);
		
		model.addAttribute("u",ret);
		if(ret!=null){
			return "main";
		}
		else{
			return "loginfail";
		}
	}


}

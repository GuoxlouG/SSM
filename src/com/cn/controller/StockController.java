package com.cn.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cn.domain.StockIn;
import com.cn.service.StockDao;

@Controller
public class StockController {
	@Autowired
	public StockDao stock;
	//��ѯ
	@RequestMapping("seleStock.do")
	public String seleStock(StockIn stock1,Model model){
		
		List<StockIn> list=stock.selectSt(stock1);
		model.addAttribute("stock", list);
		return "stockIn";
	}
	//ɾ��
	@RequestMapping("deleteStock.do")
	public String deleteStock(StockIn stock1){
		if(stock.delete(stock1)){
			return "redirect:/seleStock.do";
		}else{
			return null;
		}
	}
	//����ҳ����ת
	@RequestMapping("stockinInsert.do")
	public String stockininsert(){
		return "stockin-insert";
	}
	//��������
	@RequestMapping("addstockin.do")
	public String addstockin(StockIn stock1){
		if(stock.insertStock(stock1)){
			return "redirect:/seleStock.do";
		}else{
			return null;
		}
		
	}
	//�޸�֮ǰ����ת
	@RequestMapping("stock-update.do")
	public String stockupdate(StockIn stock1,Model model){
		List<StockIn> list1=stock.selectSto(stock1);
		model.addAttribute("stt", list1);
		return "stockin-update";
	}
	//�޸�����
	@RequestMapping("updateStock.do")
	public String updateStock(StockIn stock1){
		if(stock.updatetStock(stock1)){
			return "redirect:/seleStock.do";
		}else{
			return null;
		}
		
	}
}

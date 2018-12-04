package cn.ls.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.ls.common.vo.Page;
import cn.ls.web.service.SearchService;

@Controller
public class SearchController {

	@Autowired
	private SearchService service;
	
	@RequestMapping("/es/query")
	public String query(@RequestParam(defaultValue="1") Integer currentPage,String q,Model model) throws Exception{
		//封装查询对象
		Page page = new Page();
		
		page.setProducts(service.search(currentPage, q));
		page.setInfo(q);
		page.setCurrentPage(currentPage);
		
		//获取查询商品的全页
		page.setTotalPage(service.searchTotal(5,q));
		
		
		model.addAttribute("page", page);
		return "search";
	}
}

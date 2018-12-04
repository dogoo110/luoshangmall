package xyz.ls.search.controller;

import java.util.ArrayList;
import java.util.List;

import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.client.transport.TransportClient;
import org.elasticsearch.index.query.MultiMatchQueryBuilder;
import org.elasticsearch.index.query.MultiMatchQueryBuilder.Type;
import org.elasticsearch.index.query.QueryBuilders;
import org.elasticsearch.search.SearchHit;
import org.elasticsearch.search.SearchHits;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import xyz.ls.search.pojo.Product;

@Controller
public class SearchController {
	@Autowired
	private TransportClient client;
	
	@RequestMapping("/query")
	@ResponseBody
	public List<Product> query(Integer currentPage,String q,Model model){
		//封装查询对象
		MultiMatchQueryBuilder query = 
				QueryBuilders.multiMatchQuery(q, "product_description","product_name")
				.type(Type.MOST_FIELDS).minimumShouldMatch("50%");
		
		int start=(currentPage-1)*5;
		
		//一次查5条
		SearchResponse response = 
				client.prepareSearch("lsdb").setQuery(query).setFrom(start).setSize(5).get();
		
		SearchHits hits=response.getHits();
		List<Product> list=new ArrayList<Product>();
		System.out.println(hits.getHits().length);
		
		for (SearchHit hit : hits) {
			Product product=new Product();
			product.setProductId((String) hit.getSource().get("product_id"));
			product.setProductName((String)hit.getSource().get("product_name"));
			product.setProductImgurl((String)hit.getSource().get("product_imgurl"));
			product.setBrandId((Integer)hit.getSource().get("brand_id"));
			list.add(product);
		}
		
		return list;
	}
	
	@RequestMapping("/queryTotalpage")
	@ResponseBody
	public Integer queryTotal(int rows,String q){
		MultiMatchQueryBuilder query = 
				QueryBuilders.multiMatchQuery(q, "product_description","product_name")
				.type(Type.MOST_FIELDS).minimumShouldMatch("50%");
		
		SearchResponse response = 
				client.prepareSearch("lsdb").setQuery(query).get();
		
		SearchHits hits = response.getHits();
		
		//查到的所有商品的个数
		int total=hits.getHits().length;
		
		return (total%rows==0)?total/rows:((total/rows)+1);
	}
}

package cn.ls.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.JsonNode;

import cn.ls.common.service.HttpClientService;
import cn.ls.common.util.ObjectUtil;
import cn.ls.web.pojo.Product;

@Service
public class SearchService {

	@Autowired
	private HttpClientService client;
	
	public List<Product> search(Integer currentPage,String q) throws Exception{
		String url="http://localhost:9005/query?currentPage="+currentPage+"&q="+q;
		String jsonData=client.doGet(url);
		List<Product> searchList=null;
		
		//将httpclient返回的jsondata转化为list集合
		JsonNode data = ObjectUtil.mapper.readTree(jsonData);
		if(data.isArray()&&data.size()>0){
			searchList=ObjectUtil.mapper.readValue(data.traverse(),
					ObjectUtil.mapper.getTypeFactory().
					constructCollectionType(List.class, Product.class));
		}
		return searchList;
	}

	public Integer searchTotal(int rows,String q) throws Exception {
		String url="http://localhost:9005/queryTotalpage?rows="+rows+"&q="+q;
		return Integer.parseInt(client.doGet(url));
	}
}

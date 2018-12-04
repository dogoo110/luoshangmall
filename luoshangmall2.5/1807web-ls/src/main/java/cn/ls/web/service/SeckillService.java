package cn.ls.web.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.JsonNode;

import cn.ls.common.service.HttpClientService;
import cn.ls.common.util.ObjectUtil;
import cn.ls.common.vo.HttpResult;
import cn.ls.web.pojo.Seckill;
import cn.ls.web.pojo.SuccessKilled;


@Service
public class SeckillService {
	
	@Autowired
	private HttpClientService client;

	public List<Seckill> queryAll() throws Exception {
		String url="http://seckill.luoshangmall.cn/seckill/queryAll";
		String jsonData=client.doGet(url);//请求方式-get
		//解析listjson编程对象List<Product>
		List<Seckill> sList=null;
		JsonNode data = ObjectUtil.mapper.readTree(jsonData);
		if(data.isArray()&&data.size()>0){
			sList=ObjectUtil.mapper.readValue(data.traverse(),
					ObjectUtil.mapper.getTypeFactory().
					constructCollectionType(List.class, Seckill.class));
		}
		return sList;
	}

	public Seckill getById(Long id) throws Exception {
		String url="http://seckill.luoshangmall.cn/seckill/getById/"+id;
		String doGet = client.doGet(url);
		Seckill seckill = ObjectUtil.mapper.readValue(doGet, Seckill.class);
		return seckill;
	}

	public void start(Long seckillId, String userPhone,String userName) throws Exception {
		String url="http://seckill.luoshangmall.cn/seckill/start?seckillId="
	+seckillId+"&"+"userPhone="+userPhone+"&"+"userName="+userName;
		System.out.println(url);
		client.doGet(url);
		
	}

	public List<SuccessKilled> querySuccess(Long seckillId) throws Exception{
		String url="http://seckill.luoshangmall.cn/seckill/querySuccess/"+seckillId;
		String jsonData=client.doGet(url);//请求方式-get
		//解析listjson编程对象List<Product>
		List<SuccessKilled> sList=null;
		JsonNode data = ObjectUtil.mapper.readTree(jsonData);
		if(data.isArray()&&data.size()>0){
			sList=ObjectUtil.mapper.readValue(data.traverse(),
					ObjectUtil.mapper.getTypeFactory().
					constructCollectionType(List.class, SuccessKilled.class));
		}
		return sList;
	}

}

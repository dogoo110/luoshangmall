package cn.ls.web.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;

import cn.ls.common.service.HttpClientService;
import cn.ls.common.util.ObjectUtil;
import cn.ls.web.pojo.DeleteStyleNum;
import cn.ls.web.pojo.Order;


@Service
public class OrderService {
@Autowired
private HttpClientService client;
	public void saveOrder(Order order) throws Exception {
		String url="http://order.luoshangmall.cn/order/save";
		String orderJson = ObjectUtil.mapper.writeValueAsString(order);
		client.doPostJson(url,orderJson);
	}
	
	public List<Order> queryMyOrder(String userId) throws Exception{
		String url="http://order.luoshangmall.cn/order/list?userId="+userId;
		String oderListJson = client.doGet(url);
		System.out.println("====="+oderListJson+"========");
		List<Order> orderList=null;
		JsonNode data = ObjectUtil.mapper.readTree(oderListJson);
		if (data.isArray() && data.size() > 0) {
			orderList= ObjectUtil.mapper.readValue(data.traverse(),
					ObjectUtil.mapper.getTypeFactory().constructCollectionType(List.class, Order.class));
		}
		return orderList;
	}

	public void deleteOrder(String orderId) throws Exception {
		System.out.println("========"+orderId+"=====");
		String url="http://order.luoshangmall.cn/order/delete/"+orderId;
		client.doGet(url);
	}

	public void changePaystate(String userId,String orderId) throws Exception {
		System.out.println("手机已经扫码1");
		String url="http://order.luoshangmall.cn/order/changePaystate/"+userId+"/"+orderId;
		client.doGet(url);
		System.out.println("手机已改变数据库2");
	}

	public String queryItemId(String orderId) throws Exception {
		String url="http://order.luoshangmall.cn/order/queryItemId?orderId="+orderId;
		String result=client.doGet(url);
		return result;
	}
	
	public int delNum(@RequestBody String delStyleList) throws Exception {
		String url="http://order.luoshangmall.cn/order/delStyleNum";
		try {
			client.doPostJson(url, delStyleList);
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

}

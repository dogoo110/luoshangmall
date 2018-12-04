package cn.ls.order.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.databind.JsonNode;

import cn.ls.common.util.ObjectUtil;
import cn.ls.order.mapper.OrderMapper;
import cn.ls.order.pojo.DeleteStyleNum;
import cn.ls.order.pojo.Order;
import cn.ls.order.pojo.OrderSelect;

@RestController
public class OrderController {
	@Autowired
	private OrderMapper orderMapper;
	@RequestMapping("order/save")
	public void saveOrder(@RequestBody String orderJson) throws Exception{
		Order order = ObjectUtil.mapper.readValue(orderJson, Order.class);
		orderMapper.saveOrder(order);
	}
	
	
	
	@RequestMapping("order/list")
	public String queryList(String userId) throws Exception{
		List<Order> orderList = orderMapper.queryMyOrder(userId);
		return ObjectUtil.mapper.writeValueAsString(orderList);
	}
	
	@RequestMapping("order/delete/{orderId}")
	public void deleteOrder(@PathVariable String orderId){
		System.out.println("====="+orderId+"=====");
		orderMapper.deleteOrder(orderId);
	}
	
	@RequestMapping("order/changePaystate/{userId}/{orderId}")
	public int changeState(@PathVariable String userId,@PathVariable String orderId){
		OrderSelect orderSelect=new OrderSelect();
		orderSelect.setOrderId(orderId);
		orderSelect.setUserId(userId);
		System.out.println("执行订单支付状态更新");
		return orderMapper.changePaystate(orderSelect);
		
	}
	
	@RequestMapping("order/queryItemId")
	public String queryItemId(String orderId) throws Exception{
		List<DeleteStyleNum> styleNum =orderMapper.queryItemId(orderId);
		return ObjectUtil.mapper.writeValueAsString(styleNum);
	}
	
	
	@RequestMapping("order/delStyleNum")
	public int delStyleNum(@RequestBody String delStyleListJson) throws Exception{
		List<DeleteStyleNum> delStyleList = null;
		JsonNode data = ObjectUtil.mapper.readTree(delStyleListJson);
		if (data.isArray() && data.size() > 0) {
			delStyleList = ObjectUtil.mapper.readValue(data.traverse(),
					ObjectUtil.mapper.getTypeFactory().constructCollectionType(List.class, DeleteStyleNum.class));
		}
		
		for (DeleteStyleNum deleteStyleNum : delStyleList) {
			orderMapper.delStyleNum(deleteStyleNum);
			System.out.println("要删除的信息:===="+deleteStyleNum);
		}
		return 1;
	}
	
	
	
	
	
}

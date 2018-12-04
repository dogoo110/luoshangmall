package cn.ls.order.mapper;

import java.util.Date;
import java.util.List;

import cn.ls.order.pojo.DeleteStyleNum;
import cn.ls.order.pojo.Order;
import cn.ls.order.pojo.OrderSelect;


public interface OrderMapper {

	int saveOrder(Order order);

	List<Order> queryMyOrder(String userId);

	void deleteOrder(String orderId);

	void deleteOTOders(Date lastDay);

	int changePaystate(OrderSelect orderSelect);

	List<DeleteStyleNum> queryItemId(String orderId);

	int delStyleNum(DeleteStyleNum deleteStyleNum);



}

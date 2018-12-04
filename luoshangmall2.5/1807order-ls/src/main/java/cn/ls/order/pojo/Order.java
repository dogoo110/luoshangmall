package cn.ls.order.pojo;
/*
 * 订单表
 */

import java.util.Date;
import java.util.List;

public class Order {
	private String orderId;
	private Double orderMoney;
	private String orderPaystate;
	private Date orderTime;
	private String userId;
	private String receiverAddress;
	private List<OrderItem> orderItems;
	
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public Double getOrderMoney() {
		return orderMoney;
	}
	public void setOrderMoney(Double orderMoney) {
		this.orderMoney = orderMoney;
	}
	public String getOrderPaystate() {
		return orderPaystate;
	}
	public void setOrderPaystate(String orderPaystate) {
		this.orderPaystate = orderPaystate;
	}
	public Date getOrderTime() {
		return orderTime;
	}
	public void setOrderTime(Date orderTime) {
		this.orderTime = orderTime;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getReceiverAddress() {
		return receiverAddress;
	}
	public void setReceiverAddress(String receiverAddress) {
		this.receiverAddress = receiverAddress;
	}
	public List<OrderItem> getOrderItems() {
		return orderItems;
	}
	public void setOrderItems(List<OrderItem> orderItems) {
		this.orderItems = orderItems;
	}
	@Override
	public String toString() {
		return "Order [orderId=" + orderId + ", orderMoney=" + orderMoney + ", orderPaystate=" + orderPaystate
				+ ", orderTime=" + orderTime + ", userId=" + userId + ", receiverAddress=" + receiverAddress
				+ ", orderItems=" + orderItems + "]";
	}
	
	
	
}

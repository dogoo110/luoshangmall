package cn.ls.web.pojo;

public class OrderSelect {
	private String userId;
	private String OrderId;
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getOrderId() {
		return OrderId;
	}
	public void setOrderId(String orderId) {
		OrderId = orderId;
	}
	@Override
	public String toString() {
		return "OrderInfo [userId=" + userId + ", OrderId=" + OrderId + "]";
	}
	
}

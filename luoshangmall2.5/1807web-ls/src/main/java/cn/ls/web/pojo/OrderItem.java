package cn.ls.web.pojo;
/*
 * 订单详情
 */
public class OrderItem {
	private Integer itemId;
	private String orderId;
	private String productId;
	private Integer num;
	private String productImage;
	private String productName;
	private Double productPrice;
	private String size;
	
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public Integer getItemId() {
		return itemId;
	}
	public void setItemId(Integer itemId) {
		this.itemId = itemId;
	}
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	public String getProductImage() {
		return productImage;
	}
	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public Double getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(Double productPrice) {
		this.productPrice = productPrice;
	}
	@Override
	public String toString() {
		return "OrderItem [itemId=" + itemId + ", orderId=" + orderId + ", productId=" + productId + ", num=" + num
				+ ", productImage=" + productImage + ", productName=" + productName + ", productPrice=" + productPrice
				+ "]";
	}
	
	
}

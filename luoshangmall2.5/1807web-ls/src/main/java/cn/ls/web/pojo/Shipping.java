package cn.ls.web.pojo;
/*
 * 收货地址
 */
public class Shipping {
	private Integer shippingId;
	private String userId;
	private String receiverName;
	private String receiverAddress;
	private String receiverPhone;
	private Integer receiverZip;
	public Integer getShippingId() {
		return shippingId;
	}
	public void setShippingId(Integer shippingId) {
		this.shippingId = shippingId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getReceiverName() {
		return receiverName;
	}
	public void setReceiverName(String receiverName) {
		this.receiverName = receiverName;
	}
	public String getReceiverAddress() {
		return receiverAddress;
	}
	public void setReceiverAddress(String receiverAddress) {
		this.receiverAddress = receiverAddress;
	}
	public String getReceiverPhone() {
		return receiverPhone;
	}
	public void setReceiverPhone(String receiverPhone) {
		this.receiverPhone = receiverPhone;
	}
	
	public Integer getReceiverZip() {
		return receiverZip;
	}
	public void setReceiverZip(Integer receiverZip) {
		this.receiverZip = receiverZip;
	}
	@Override
	public String toString() {
		return "Shipping [shippingId=" + shippingId + ", userId=" + userId + ", receiverName=" + receiverName
				+ ", receiverAddress=" + receiverAddress + ", receiverPhone=" + receiverPhone + ", receiverZip="
				+ receiverZip + "]";
	}
	
	
	
}

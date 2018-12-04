package cn.ls.order.pojo;

public class DeleteStyleNum {
	private String productId;
	private String size;
	private Integer num;
	
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getProductId() {
		return productId;
	}
	public void setProduct_Id(String productId) {
		this.productId = productId;
	}
	@Override
	public String toString() {
		return "DeleteStyleNum [product_Id=" + productId + ", size=" + size + ", num=" + num + "]";
	}
	
	

	
}

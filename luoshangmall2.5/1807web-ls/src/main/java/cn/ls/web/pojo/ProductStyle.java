package cn.ls.web.pojo;
/*
 * 商品样式
 */
public class ProductStyle {
	private Integer styleId;
	private String styleSize;
	private Integer styleNum;
	private String productId;
	public Integer getStyleId() {
		return styleId;
	}
	public void setStyleId(Integer styleId) {
		this.styleId = styleId;
	}
	public String getStyleSize() {
		return styleSize;
	}
	public void setStyleSize(String styleSize) {
		this.styleSize = styleSize;
	}
	public Integer getStyleNum() {
		return styleNum;
	}
	public void setStyleNum(Integer styleNum) {
		this.styleNum = styleNum;
	}
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	@Override
	public String toString() {
		return "ProductStyle [styleId=" + styleId + ", styleSize=" + styleSize + ", styleNum=" + styleNum
				+ ", productId=" + productId + "]";
	}
	
	

}

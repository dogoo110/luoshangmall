package cn.ls.web.pojo;

import java.io.Serializable;
import java.util.List;

/*
 * 商品
 */
@SuppressWarnings("serial")
public class Product implements Serializable{
	private String productId;
	private String productName;
	private Double productPrice;
	private String productImgurl;
	private String productDescription;
	private Integer brandId;
	private String brandName;
	private String categoryName;
	private List<ProductStyle> style;
	private Integer productStatus;
	
	public Integer getProductStatus() {
		return productStatus;
	}
	public void setProductStatus(Integer productStatus) {
		this.productStatus = productStatus;
	}
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
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
	public String getProductImgurl() {
		return productImgurl;
	}
	public void setProductImgurl(String productImgurl) {
		this.productImgurl = productImgurl;
	}
	public String getProductDescription() {
		return productDescription;
	}
	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}
	public Integer getBrandId() {
		return brandId;
	}
	public void setBrandId(Integer brandId) {
		this.brandId = brandId;
	}
	public String getBrandName() {
		return brandName;
	}
	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public List<ProductStyle> getStyle() {
		return style;
	}
	public void setStyle(List<ProductStyle> style) {
		this.style = style;
	}
}

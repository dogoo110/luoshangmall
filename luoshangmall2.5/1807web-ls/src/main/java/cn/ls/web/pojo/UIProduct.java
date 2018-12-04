package cn.ls.web.pojo;
/*
 * 后台easyUI商品
 */
/**
 * @author admin
 *
 */
public class UIProduct {
	private String productId;
	private String productName;
	private Double productPrice;
	private String productImgurl;
	private String productDescription;
	private Integer brandId;
	private String brandName;
	private String categoryName;
	private Integer S=0;
	private Integer L=0;
	private Integer X=0;
	private Integer XL=0;
	private Integer XXL=0;
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
	public Integer getS() {
		return S;
	}
	public void setS(Integer s) {
		S = s;
	}
	public Integer getL() {
		return L;
	}
	public void setL(Integer l) {
		L = l;
	}
	public Integer getX() {
		return X;
	}
	public void setX(Integer x) {
		X = x;
	}
	public Integer getXL() {
		return XL;
	}
	public void setXL(Integer xL) {
		XL = xL;
	}
	public Integer getXXL() {
		return XXL;
	}
	public void setXXL(Integer xXL) {
		XXL = xXL;
	}
}

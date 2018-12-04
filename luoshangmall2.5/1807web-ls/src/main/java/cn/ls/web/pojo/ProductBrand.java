package cn.ls.web.pojo;
/*
 * 商品品牌
 */
public class ProductBrand {
	private Integer brandId;
	private String brandName;
	private Integer categoryId;
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
	public Integer getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}
	@Override
	public String toString() {
		return "ProductBrand [brandId=" + brandId + ", brandName=" + brandName + ", categoryId=" + categoryId + "]";
	}
	
	
	

}

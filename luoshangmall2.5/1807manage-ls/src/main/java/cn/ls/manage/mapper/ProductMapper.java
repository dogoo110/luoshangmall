package cn.ls.manage.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.transaction.annotation.Transactional;

import cn.ls.manage.pojo.Product;
import cn.ls.manage.pojo.ProductStyle;

@Transactional
public interface ProductMapper {
	
	List<Product> queryProducts(Integer brandId);

	int queryBrandCount(Integer brandId);

	int queryCount();
	
	List<Product> queryMProducts
	(@Param("start")int start,@Param("rows")Integer rows);
	
	List<String> queryBrands(String categoryName);
	
	Integer queryBrandId(String brandName);
	
	int insertProduct(Product product);
	
	int insertProductStyle(List<ProductStyle> slist);

	void updateProduct(Product product);

	void updateProductStyle(List<ProductStyle> slist);
	
	void soldoutProduct(String productId);

	void deleteProduct(String productId);

	void putawayProduct(String productId);
	

}

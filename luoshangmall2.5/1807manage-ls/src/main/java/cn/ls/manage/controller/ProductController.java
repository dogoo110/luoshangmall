package cn.ls.manage.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cn.ls.common.service.RedisService;
import cn.ls.common.util.ObjectUtil;
import cn.ls.common.util.UUIDUtil;
import cn.ls.manage.mapper.ProductMapper;
import cn.ls.manage.pojo.Product;
import cn.ls.manage.pojo.ProductStyle;
import cn.ls.manage.pojo.UIProduct;

@RestController
public class ProductController {
	@Autowired
	private ProductMapper productMapper;
	@Autowired
	private RedisService redis;
	
	//查询首页商品
	@RequestMapping("product/list")
	public List<Product> queryList(Integer brandId) throws Exception{
		List<Product> products = productMapper.queryProducts(brandId);
		for (Product product : products) {
			redis.set(product.getProductId(), ObjectUtil.mapper.writeValueAsString(product));
		}
		return products;
	}
	
	@RequestMapping("product/brandtotal")
	public String queryTotal(Integer brandId){
		String total=productMapper.queryBrandCount(brandId)+"";
		return total;
	}
	
	@RequestMapping("product/total")
	public String queryTotal(){
		String total=productMapper.queryCount()+"";
		return total;
	}
	
	@RequestMapping("product/mlist")
	public List<Product> queryList(Integer page,Integer rows){
		if(page==null){page=1;}
		int start=(page-1)*rows;
		List<Product> list = productMapper.queryMProducts(start, rows);
		return list;
	}
	
	@RequestMapping("product/queryById/{productId}")
	public Product queryById(@PathVariable String productId) throws Exception{
		String proJson = redis.get(productId);
		return ObjectUtil.mapper.readValue(proJson, Product.class);
	}
	
	@RequestMapping("product/queryBrands")
	public String queryBrands(String categoryName) throws Exception{
		List<String> brands = productMapper.queryBrands(categoryName);
		return ObjectUtil.mapper.writeValueAsString(brands);
	}
	
	
	@RequestMapping("product/save")
	public void saveProduct(@RequestBody String jsonData) throws Exception{
		UIProduct uproduct=ObjectUtil.mapper.
				readValue(jsonData, UIProduct.class);
		Product product=new Product();
		String uuid = UUIDUtil.getUUID();
		product.setProductId(uuid);
		product.setProductName(uproduct.getProductName());
		product.setProductPrice(uproduct.getProductPrice());
		product.setProductImgurl(uproduct.getProductImgurl());
		product.setProductDescription(uproduct.getProductDescription());
		Integer brandId = productMapper.queryBrandId(uproduct.getBrandName());
		product.setBrandId(brandId);
		productMapper.insertProduct(product);
		List<ProductStyle> slist=new ArrayList<>();
		ProductStyle style1=new ProductStyle();
		style1.setProductId(uuid);
		style1.setStyleSize("s");
		style1.setStyleNum(uproduct.getS());
		slist.add(style1);
		ProductStyle style2=new ProductStyle();
		style2.setProductId(uuid);
		style2.setStyleSize("x");
		style2.setStyleNum(uproduct.getX());
		slist.add(style2);
		ProductStyle style3=new ProductStyle();
		style3.setProductId(uuid);
		style3.setStyleSize("l");
		style3.setStyleNum(uproduct.getL());
		slist.add(style3);
		ProductStyle style4=new ProductStyle();
		style4.setProductId(uuid);
		style4.setStyleSize("xL");
		style4.setStyleNum(uproduct.getXL());
		slist.add(style4);
		ProductStyle style5=new ProductStyle();
		style5.setProductId(uuid);
		style5.setStyleSize("xXL");
		style5.setStyleNum(uproduct.getXXL());
		slist.add(style5);
		for (ProductStyle s : slist) {
			if(s.getStyleNum()==null){
				s.setStyleNum(0);
			}
		}
		productMapper.insertProductStyle(slist);
	}
	
	@RequestMapping("product/update")
	public void updateProduct(@RequestBody String jsonData) throws Exception{
		UIProduct uproduct=ObjectUtil.mapper.
				readValue(jsonData, UIProduct.class);
		Product product=new Product();
		product.setProductId(uproduct.getProductId());
		product.setProductName(uproduct.getProductName());
		product.setProductPrice(uproduct.getProductPrice());
		product.setProductImgurl(uproduct.getProductImgurl());
		product.setProductDescription(uproduct.getProductDescription());
		product.setProductStatus(uproduct.getProductStatus());
		Integer brandId = productMapper.queryBrandId(uproduct.getBrandName());
		product.setBrandId(brandId);
		productMapper.updateProduct(product);
		List<ProductStyle> slist=new ArrayList<>();
		ProductStyle style1=new ProductStyle();
		style1.setProductId(uproduct.getProductId());
		style1.setStyleSize("s");
		style1.setStyleNum(uproduct.getS());
		slist.add(style1);
		ProductStyle style2=new ProductStyle();
		style2.setProductId(uproduct.getProductId());
		style2.setStyleSize("x");
		style2.setStyleNum(uproduct.getX());
		slist.add(style2);
		ProductStyle style3=new ProductStyle();
		style3.setProductId(uproduct.getProductId());
		style3.setStyleSize("l");
		style3.setStyleNum(uproduct.getL());
		slist.add(style3);
		ProductStyle style4=new ProductStyle();
		style4.setProductId(uproduct.getProductId());
		style4.setStyleSize("xL");
		style4.setStyleNum(uproduct.getXL());
		slist.add(style4);
		ProductStyle style5=new ProductStyle();
		style5.setProductId(uproduct.getProductId());
		style5.setStyleSize("xXL");
		style5.setStyleNum(uproduct.getXXL());
		slist.add(style5);
		for (ProductStyle s : slist) {
			if(s.getStyleNum()==null){
				s.setStyleNum(0);
			}
		}
		productMapper.updateProductStyle(slist);
	}
	
	//下架
		@RequestMapping("product/soldout")
		public void deleteProduct(String id) throws Exception{
			String[] idd = id.split(",");
			for (int i = 0; i < idd.length; i++) {
				productMapper.soldoutProduct(idd[i]);
				productMapper.deleteProduct(idd[i]);
			}
			Product product=new Product();
			productMapper.updateProduct(product);
		}
		//上架
		@RequestMapping("product/putaway")
		public void putawayProduct(String id) throws Exception{
			String[] idd = id.split(",");
			for (int i = 0; i < idd.length; i++) {
				productMapper.putawayProduct(idd[i]);
			}
			Product product=new Product();
			productMapper.updateProduct(product);
		}
		

	
}
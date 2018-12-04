package cn.ls.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.JsonNode;

import cn.ls.common.service.HttpClientService;
import cn.ls.common.util.ObjectUtil;
import cn.ls.common.vo.HttpResult;
import cn.ls.web.pojo.DeleteStyleNum;
import cn.ls.web.pojo.Product;
import cn.ls.web.pojo.UIProduct;

@Service
public class ProductService {

	@Autowired
	private HttpClientService client;
	
	public List<Product> queryProducts(Integer brandId) throws Exception {
		//生成接口定义的url
		String url="http://manage.luoshangmall.cn/product/list?brandId="+brandId;
		String jsonData=client.doGet(url);//请求方式-get
		//解析listjson编程对象List<Product>
		List<Product> pList=null;
		JsonNode data = ObjectUtil.mapper.readTree(jsonData);
		if(data.isArray()&&data.size()>0){
			pList=ObjectUtil.mapper.readValue(data.traverse(),
					ObjectUtil.mapper.getTypeFactory().
					constructCollectionType(List.class, Product.class));
		}
		return pList;
		
	}
	
	public Integer queryTotalPage(Integer rows, Integer brandId) throws Exception {
		//发起向后台的请求,查询商品的总数
		String url="http://manage.luoshangmall.cn/product/brandtotal?brandId="+brandId;
		Integer total=Integer.parseInt(client.doGet(url));
		return (total%rows)==0? total/rows:((total/rows)+1);
	}
	
	public int queryTotal() throws Exception {
		String url="http://manage.luoshangmall.cn/product/total";
		String totalS=client.doGet(url);
		Integer total = Integer.parseInt(totalS);
		return total;
	}

	public List<Product> queryTotalProducts(Integer page, Integer rows) throws Exception {
		String url = "http://manage.luoshangmall.cn/product/mlist?page=" + page + "&rows=" + rows;
		String jsonData = client.doGet(url);
		List<Product> plist = null;
		JsonNode data = ObjectUtil.mapper.readTree(jsonData);
		if (data.isArray() && data.size() > 0) {
			plist = ObjectUtil.mapper.readValue(data.traverse(),
					ObjectUtil.mapper.getTypeFactory().constructCollectionType(List.class, Product.class));
		}
		return plist;
	}
	
	public Product queryProductById(String id) throws Exception {
		String url="http://manage.luoshangmall.cn/product/queryById/"+id;
		String jsonData=client.doGet(url);
		Product product = ObjectUtil.mapper.readValue(jsonData, Product.class);
		return product;
	}

	public String queryBrands(String categoryName) throws Exception {
		String url="http://manage.luoshangmall.cn/product/queryBrands?categoryName="+categoryName;
		String brandsJson = client.doGet(url);
		return brandsJson;
	}

	public int saveProduct(UIProduct uproduct) throws Exception{
		String jsonData=ObjectUtil.mapper.writeValueAsString(uproduct);
		String url="http://manage.luoshangmall.cn/product/save";
		try {
			client.doPostJson(url, jsonData);
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}
	
	public int updateProduct(UIProduct uproduct) throws Exception {
		String url="http://manage.luoshangmall.cn/product/update";
		String jsonData=ObjectUtil.mapper.writeValueAsString(uproduct);
		try {
			client.doPostJson(url, jsonData);
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}
	public int decreStyleNum(){
		return 0;
		
	}
	
	// 下架选项改为0
	public int soldOutProduct(String id)  {

		String url = "http://manage.luoshangmall.cn/product/soldout?id=" + id;
		try {
			client.doGet(url);
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	public int putawayProduct(String id) {
		String url = "http://manage.luoshangmall.cn/product/putaway?id=" + id;
		try {
			client.doGet(url);
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	
}

package cn.ls.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.JsonNode;

import cn.ls.common.service.HttpClientService;
import cn.ls.common.util.ObjectUtil;
import cn.ls.web.pojo.Cart;
import cn.ls.web.pojo.Product;

@Service
public class CartService {
@Autowired
private HttpClientService client;
	public List<Cart> queryMyCart(String userId)throws Exception{
		String url="http://cart.luoshangmall.cn/cart/mycart/"+userId;
		List<Cart> cList=null;
		try { 
			String jsonData=client.doGet(url);
			JsonNode data = ObjectUtil.mapper.readTree(jsonData);
			if (data.isArray() && data.size() > 0) {
				cList= ObjectUtil.mapper.readValue(data.traverse(),
						ObjectUtil.mapper.getTypeFactory().constructCollectionType(List.class, Cart.class));
			}
		} catch (NullPointerException e) {
			return cList;
		}
		return cList;
	}
	public int addCart(String userId, String productId, Integer num,String size) throws Exception {
		String url="http://manage.luoshangmall.cn/product/queryById/"+productId;
		String productJson = client.doGet(url);
		Product p = ObjectUtil.mapper.readValue(productJson, Product.class);
		Cart cart=new Cart();
		cart.setNum(num);
		cart.setProductId(productId);
		cart.setUserId(userId);
		cart.setProductImage(p.getProductImgurl());
		cart.setProductName(p.getProductName());
		cart.setProductPrice(p.getProductPrice());
		cart.setSize(size);
		String cartJson=ObjectUtil.mapper.writeValueAsString(cart);
		System.out.println("我要发送请求啦!!!!!!");
		url="http://cart.luoshangmall.cn/cart/save/";
		try {
			client.doPostJson(url, cartJson);
			return 1;
		} catch (Exception e) {
			return 0;
		}
		
	}
	
	
	
	
	public void updateCartNum(String userId, String productId, Integer num,String size) throws Exception{
		String url="http://cart.luoshangmall.cn/cart/updateNum/?&userId="+userId+"&productId="+productId+"&num="+num+"&size="+size;
		String success = client.doGet(url);
		System.out.println("执行了更新通信了"+success);
	}
	
	public int deleteCart(String userId, String productId, String size) throws Exception {
		String url="http://cart.luoshangmall.cn/cart/deleteCart/?&userId="+userId+"&productId="+productId+"&size="+size;
		System.out.println(url);
		try {
			client.doGet(url);
			return 1;
		} catch (Exception e) {
			return 0;
		}
		
	}
	public Cart ifExist(String productId, String userId, String size) {
		String url="http://cart.luoshangmall.cn/cart/ifExists/"+productId+"/"+userId+"/"+size;
		try {
			String cartJson = client.doGet(url);
			return ObjectUtil.mapper.readValue(cartJson, Cart.class);			
		} catch (Exception e) {
			return null;
		}
	}

	
	
}

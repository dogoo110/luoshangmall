package cn.ls.cart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cn.ls.cart.mapper.CartMapper;
import cn.ls.cart.pojo.Cart;
import cn.ls.common.util.ObjectUtil;

@RestController
public class CartController {
	@Autowired
	private CartMapper cartMapper;
	
	@RequestMapping("cart/mycart/{userId}")
	public List<Cart> queryMyCart(@PathVariable String userId){
		return cartMapper.queryMyCart(userId);
	}
	
	@RequestMapping("cart/save")
	public void saveCart(@RequestBody String cartJson) throws Exception{
		Cart cart = ObjectUtil.mapper.readValue(cartJson, Cart.class);
		cart.setSize(cart.getSize().toUpperCase());
		System.out.println("老子是购物车:"+cart);
		cartMapper.addCart(cart);
	}

	
	@RequestMapping("cart/updateNum")
	public void updateCart(String userId,String productId, Integer num,String size){
		Cart exists=new Cart();
		exists.setNum(num);
		exists.setUserId(userId);
		exists.setProductId(productId);
		exists.setSize(size);
		System.out.println("======="+size+"======");
		int i=cartMapper.updateCartNum(exists);
		System.out.println("有"+i+"条数据受到影响");
	}
	
	@RequestMapping("cart/deleteCart")
	public void deleteCart(String userId,String productId,String size){
		Cart exists=new Cart();
		exists.setUserId(userId);
		exists.setProductId(productId);
		exists.setSize(size);
		System.out.println("======="+size+"======");
		int i=cartMapper.deteleCart(exists);
		System.out.println("有"+i+"条数据受到影响");
	}
	
	@RequestMapping("cart/ifExists/{productId}/{userId}/{size}")
	public Cart ifExists(@PathVariable String productId,
			@PathVariable String userId,
			@PathVariable String size){
		Cart _cart=new Cart();
		_cart.setProductId(productId);
		_cart.setUserId(userId);
		_cart.setSize(size);
		return cartMapper.findOne(_cart);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}

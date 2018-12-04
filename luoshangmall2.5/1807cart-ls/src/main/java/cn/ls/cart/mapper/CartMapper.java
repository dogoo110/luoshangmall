package cn.ls.cart.mapper;

import java.util.List;

import cn.ls.cart.pojo.Cart;


public interface CartMapper {


	List<Cart> queryMyCart(String userId);

	Cart findOne(Cart _cart);
	
	int addCart(Cart _cart);

	int updateCartNum(Cart exists);

	int deteleCart(Cart exists);




}

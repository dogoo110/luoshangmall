package cn.ls.web.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.ls.common.vo.EasyUIResult;
import cn.ls.common.vo.Page;
import cn.ls.common.vo.SysResult;
import cn.ls.web.pojo.Product;
import cn.ls.web.pojo.ProductStyle;
import cn.ls.web.pojo.UIProduct;
import cn.ls.web.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService productService;
	//首页查询（点击出现品牌页面）
	@RequestMapping("/product/page")
	public String queryProducts(Integer brandId,Model model) throws Exception {
		try {
			List<Product> pList=productService.queryProducts(brandId);
			Page page = new Page();
			page.setProducts(pList);
			model.addAttribute("page", page);
			return "product_list";
		} catch (Exception e) {
			e.printStackTrace();
			return "redirect:http://web.luoshangmall.cn/product/page?brandId="+brandId;
		}
	}
	
	//商品详情
	@RequestMapping("/product/findProductById/{id}")
	public String findProductById(@PathVariable String id, Model model) throws Exception {
		Product product = productService.queryProductById(id);
		UIProduct uProduct=new UIProduct();
		uProduct.setProductId(product.getProductId());
		uProduct.setProductName(product.getProductName());
		uProduct.setProductPrice(product.getProductPrice());
		uProduct.setProductDescription(product.getProductDescription());
		uProduct.setBrandName(product.getBrandName());
		uProduct.setCategoryName(product .getCategoryName());
		uProduct.setProductImgurl(product.getProductImgurl());
		for(int i=0;i<product.getStyle().size();i++){
			if(product.getStyle().get(i).getStyleSize().equalsIgnoreCase("s")){
				uProduct.setS(product.getStyle().get(i).getStyleNum());
			}else if(product.getStyle().get(i).getStyleSize().equalsIgnoreCase("l")){
				uProduct.setL(product.getStyle().get(i).getStyleNum());
			}else if(product.getStyle().get(i).getStyleSize().equalsIgnoreCase("x")){
				uProduct.setX(product.getStyle().get(i).getStyleNum());
			}else if(product.getStyle().get(i).getStyleSize().equalsIgnoreCase("xl")){
				uProduct.setXL(product.getStyle().get(i).getStyleNum());
			}else if(product.getStyle().get(i).getStyleSize().equalsIgnoreCase("xxl")){
				uProduct.setXXL(product.getStyle().get(i).getStyleNum());
			}
		}
		model.addAttribute("product", uProduct);
		return "product_info";
	}

	//后台商品查询
	@RequestMapping("/product/query")
	@ResponseBody
	public EasyUIResult queryManageProducts(Integer page, Integer rows) throws Exception {
		List<Product> pList = productService.queryTotalProducts(page, rows);
		int total = productService.queryTotal();
		List<UIProduct> uiList=new ArrayList<UIProduct>();
		for (int i = 0; i<pList.size(); i++) {
			UIProduct product=new UIProduct();
			product.setProductId(pList.get(i).getProductId());
			product.setProductName(pList.get(i).getProductName());
			product.setProductPrice(pList.get(i).getProductPrice());
			product.setProductDescription(pList.get(i).getProductDescription());
			product.setBrandName(pList.get(i).getBrandName());
			product.setCategoryName(pList.get(i).getCategoryName());
			product.setProductStatus(pList.get(i).getProductStatus());
			for(int j=0;j<pList.get(i).getStyle().size();j++){
				ProductStyle style = pList.get(i).getStyle().get(j);
				if(style.getStyleSize().equalsIgnoreCase("s")){
					product.setS(style.getStyleNum());
				}else if(style.getStyleSize().equalsIgnoreCase("l")){
					product.setL(style.getStyleNum());
				}else if(style.getStyleSize().equalsIgnoreCase("x")){
					product.setX(style.getStyleNum());
				}else if(style.getStyleSize().equalsIgnoreCase("xl")){
					product.setXL(style.getStyleNum());
				}else if(style.getStyleSize().equalsIgnoreCase("xxl")){
					product.setXXL(style.getStyleNum());
				}
			}
			uiList.add(product);
		}
		EasyUIResult result = new EasyUIResult();
		result.setTotal(total);
		result.setRows(uiList);
		return result;
	}
	
	//查询相应品牌名称放入到前台list
	@RequestMapping("/product/queryBrands")
	@ResponseBody
	public String queryBrand(String categoryName) throws Exception{
		String brandsJson=productService.queryBrands(categoryName);
		return brandsJson;
	}
	
	//后台增加商品
	@RequestMapping("/product/save")
	@ResponseBody
	public SysResult saveProduct(UIProduct uproduct) {
		SysResult result = new SysResult();
		try {
			int success = productService.saveProduct(uproduct);
			if (success == 1) {
				result.setStatus(200);
				return result;
			} else {
				result.setStatus(201);
				return result;
			}
		} catch (Exception e) {
			result.setStatus(201);
			result.setMsg(e.getMessage());
			return result;
		}
	}
	
	//后台更新商品
	@RequestMapping("/product/update")
	@ResponseBody
	public SysResult updateProduct(UIProduct uproduct) throws Exception {
		SysResult result = new SysResult();
		int success = productService.updateProduct(uproduct);
		if (success == 1) {
			result.setStatus(200);
			result.setMsg("ok");
			return result;
		} else {
			result.setStatus(201);
			return result;
		}
	}
	
	/**
	 * 刚开始商品status为1
	 * 下架0
	 * 上架1
	 * @param ids
	 * @return
	 */
	// 后台下架商品
	@RequestMapping(value = "/item/instock")
	@ResponseBody
	public SysResult soldOutProduct(String ids) {
		SysResult result = new SysResult();
		try {
			int success = productService.soldOutProduct(ids);// 改为下架状态
			if (success == 1) {
				result.setStatus(200);
				result.setMsg("成功");
				return result;
			} else {
				result.setStatus(201);
				result.setMsg("失败");
				return result;
			}
		} catch (Exception e) {
			result.setStatus(201);
			result.setMsg(e.getMessage());
			return result;
		}
	}
	// 后台上架商品
	@RequestMapping(value = "/item/reshelf")
	@ResponseBody
	public SysResult putawayProduct(String ids) {
		SysResult result = new SysResult();
		try {
			int success = productService.putawayProduct(ids);// 改为上架状态
			if (success == 1) {
				result.setStatus(200);
				result.setMsg("成功");
				return result;
			} else {
				result.setStatus(201);
				result.setMsg("失败");
				return result;
			}
		} catch (Exception e) {
			result.setStatus(201);
			result.setMsg(e.getMessage());
			return result;
		}
	}
	
}

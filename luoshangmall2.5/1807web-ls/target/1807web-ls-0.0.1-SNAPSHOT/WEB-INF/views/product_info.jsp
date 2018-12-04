<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>商品详情页面</title>
    <link href="${app }/css/prodInfo.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="${app}/js/jquery.min.js"></script>
	<script type="text/javascript" src="${app}/js/productinfo.js"></script>
	
</head>
<body>
<%@include file="/head.jsp" %>
	<div id="warp">
		<div id="left">
			<div id="left_top">
				<img src="http://image.luoshangmall.cn/${product.productImgurl}"/>
			</div>
			<div id="left_bottom">
				<img id="lf_img" src="${app}/img/prodInfo/lf.jpg"/>
				<img id="mid_img" src="http://image.luoshangmall.cn/${product.productImgurl}" width="60px" height="60px"/>
				<img id="rt_img" src="${app }/img/prodInfo/rt.jpg"/>
			</div>
		</div>
		<div id="right">
			<div id="right_top">
				<span id="prod_name">${product.productName}<br/></span>
				<br>
				<span id="prod_desc">${product.productDescription }<br/></span>
			</div>
			<div id="right_middle">
				<span id="right_middle_span">
						商品价格：<span class="price_red">￥${product.productPrice }<br/>
			            运     费：满 100 免运费<br />
			            服     务：由罗裳负责发货，并提供售后服务<br />
			            库     存：<label for="1"><input type="radio" id="1" name="size" value="s" checked="checked">S[${product.s }]</input></label>
			              <label for="2"><input type="radio" id="2" name="size" value="l">L[${product.l }]</input></label>
			              <label for="3"><input type="radio" id="3" name="size" value="x">X[${product.x }]</input></label>
			              <label for="4"><input type="radio" id="4" name="size" value="xl">XL[${product.XL }]</input></label>
			              <label for="5"><input type="radio" id="5" name="size" value="xxl">XXL[${product.XXL }]</input></label><br />
			            购买数量：
	            <a href="javascript:void(0)" id="delNum" onclick="change(-1)">-</a>
	            <input id="buyNumInp" name="buyNum" type="text" value="1" />
		        <a href="javascript:void(0)" id="addNum" onclick="change(1)">+</a>
			</div>
			<div id="right_bottom">
				<input class="add_cart_but" type="button" onclick="toCart('${app}/cart/addCart/${product.productId}')"/>	
			</div>
		</div>
	</div>
</body>
</html>

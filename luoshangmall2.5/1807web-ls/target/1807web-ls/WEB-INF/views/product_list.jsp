<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script type="text/javascript" src="${app}/js/jquery-1.11.3.min.js"></script>
	<title>全部商品</title>
	<link rel="stylesheet" type="text/css" href="${app}/fonts/feather/style.css">
	<link rel="stylesheet" type="text/css" href="${app}/css/demo.css" />
	<link rel="stylesheet" type="text/css" href="${app}/css/component.css" />
	<script src="${app}/js/modernizr.custom.js"></script>
</head>
<body>
<div class="container">
<div style="text-align:center;clear:both;">
</div>
	<section class="slider">
			<c:forEach items="${page.products}" var="product" varStatus="status">
				<div class="slide slide--current" data-content="${status.index+1}">
					<div class="slide__mover">
						<div class="zoomer flex-center">
							<div class="preview" >
								<a href="${app}/product/findProductById/${product.productId}">
									<img src="http://image.luoshangmall.cn/${product.productImgurl}" alt="${product.productName}" width="203px" height="330px"/>
								</a>
								<a href="${app}/product/findProductById/${product.productId}">
									<div class="zoomer__area zoomer__area--size-${status.index+1}"></div>
								</a>
							</div>
						</div>
					</div>
					<a href="${app}/product/findProductById/${product.productId}">
						<h2 class="slide__title" ><span style="color: white">${product.productName}</span></h2>
					</a>
				</div>
			</c:forEach>
			<div style="clear:both"></div>
		<nav class="slider__nav">
			<button class="button button--nav-prev" id="left"><i class="icon icon--arrow-left"></i><span class="text-hidden">Previous product</span></button>
			<button class="button button--zoom"><i class="icon icon--zoom"></i><span class="text-hidden">View details</span></button>
			<button class="button button--nav-next"><i class="icon icon--arrow-right"></i><span class="text-hidden">Next product</span></button>
		</nav>
	</section>
	<section class="content">
		<c:forEach items="${page.products}" var="product" varStatus="status">
			<div class="content__item" id="${status.index+1}">
				<img class="content__item-img rounded-right" src="http://image.luoshangmall.cn/${product.productImgurl}" alt="${product.productName}" />
				<div class="content__item-inner">
					<h2>${product.productName}</h2>
					<h3>${product.productPrice}</h3>
					<p>${product.productDescription}</p>
					<a href="${app}/product/findProductById/${product.productId}">
					<p>点击进入购买页面</p>
					</a>
				</div>
			</div>
			<button class="button button--close"><i class="icon icon--circle-cross"></i><span class="text-hidden">Close content</span></button>
		</c:forEach>
	</section>
	<div style="text-align:center;clear:both;">
</div>
</div>

<script src="${app}/js/classie.js"></script>
<script src="${app}/js/dynamics.min.js"></script>
<script src="${app}/js/main.js"></script>
<script type="text/javascript">
	window.onload =function()
	{
		document.getElementById('left').click();
	}
</script>
</body>
</html>

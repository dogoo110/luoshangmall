<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<link rel="stylesheet" href="${app }/css/head.css"/>
<meta http-equiv="Content-type" content="text/html; charset=UTF-8" />
<script type="text/javascript" src="${app }/js/base-v1.js" charset="utf-8"></script>
<script type="text/javascript" src="${app }/js/jquery.min.js" charset="utf-8"></script>
<script type="text/javascript" src="${app }/js/cookie.js" charset="utf-8"></script>
<script type="text/javascript" src="${app }/js/common.js" charset="utf-8"></script>
<script type="text/javascript" src="${app }/js/jquery.cookie.js" charset="utf-8"></script>
<%-- <script type="text/javascript" src="${app }/js/base-2011.js" charset="utf-8"></script> --%>

<script type="text/javascript">

window.onload=
	function(){
	var _ticket = $.cookie("LS_TICKET");
	if(!_ticket){
		return ;
	}
	//当dataType类型为jsonp时，jQuery就会自动在请求链接上增加一个callback的参数
	$.ajax({
		url : "http://sso.luoshangmall.cn/user/query/"+_ticket,
		dataType : "jsonp",
		type : "GET",
		success : function(data){
			if(data.status == 200){
			//	var _data =JSON.parse(data.data);//jackson
			//alert(_data);
			var _data=JSON.parse(data.data);
				var html =_data.userNickname+"，欢迎来到罗裳！<a href=\"http://web.luoshangmall.cn/user/logout\" class=\"link-logout\">[退出]</a>";
				$("#loginbar").html(html);
			}
		},
		error : function(){
			alert('index error.');
		}
	});
}
function search(a) {
    var b = "http://web.luoshangmall.cn/es/query?q=" + encodeURIComponent(document.getElementById(a).value);
    return window.location.href = b;
}

</script>
<div id="common_head">
	<div id="line1">
	<div id="content">
	<span id="loginbar">
	<c:if test="${empty user.userName}" var="eptun" scope="page">
	<a href="${app }/page/login">登录</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="${app}/page/regist">注册&nbsp;&nbsp;|&nbsp;&nbsp;</a>
	</c:if>
	<c:if test="${!eptun}">
	欢迎${user.userName}&nbsp;&nbsp;<a id="logout_a" href="${app}/user/logout">注销</a>
	</c:if></a>
	</span>
	<sapn><a href="${app}/">[主页]</a></sapn>
	<span style="float:right;">
	
		<input type="text" value="${q }" accesskey="s" id="key" autocomplete="off" onkeydown="javascript:if(event.keyCode==13) search('key');"/>
		<input type="button" value="搜 索" onclick="search('key');return false;"/>
		<span id="goto">
			<a id="goto_order" href="${app}/order/list">我的订单</a>
			<a id="goto_cart" href="${app}/cart/mycart">我的购物车</a>
		</span>
	</span>

	
<%-- 	<span style="float:right;">
	
		<input type="text" value="${q }" accesskey="s" id="key" autocomplete="off" onkeydown="javascript:if(event.keyCode==13) search('key');"/>
		<input type="button" value="搜 索" onclick="search('key');return false;"/>
		<span id="goto">
			<a id="goto_order" href="${app}/order/list">我的订单</a>
			<a id="goto_cart" href="${app}/cart/mycart">我的购物车</a>
		</span>
	</span> --%>
	
	</div>
	</div>
	<div align="center"><img alt="官网图片" src="/img/LSguanwang.png" ></div>

	
</div>

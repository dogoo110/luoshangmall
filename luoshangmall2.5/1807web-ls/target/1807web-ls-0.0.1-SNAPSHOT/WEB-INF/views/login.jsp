<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
  <meta charset="utf-8">
  <title>罗裳网站登录界面</title>
  <meta name="description" content="particles.js is a lightweight JavaScript library for creating particles.">
  <meta name="author" content="Vincent Garreau" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <link rel="stylesheet" media="screen" href="${app}/css/style.css">
  <link rel="stylesheet" type="text/css" href="${app}/css/reset.css"/>
   
</head>


<body>

<div id="particles-js">
		<div class="login">
			<div class="login-top">
				欢迎登录
			</div>
			<form>
			<div class="login-center clearfix">
				<div class="login-center-img"><img src="http://image.luoshangmall.cn/name.png"/></div>
				<div class="login-center-input">
					<input type="text" id="username" name="username" value="" placeholder="请输入您的用户名" onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的用户名'"/>
					<div class="login-center-input-text" id="error_username">用户名</div>
				</div>
			</div>
			<div class="login-center clearfix">
				<div class="login-center-img"><img src="http://image.luoshangmall.cn/password.png"/></div>
				<div class="login-center-input">
					<input type="password" id="password" name="password" value="" placeholder="请输入您的密码" onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的密码'"/>
					<div class="login-center-input-text" id="error_password">密码</div>
				</div>
			</div>
			<div class="login-button" id="login-submit">
				登录
			</div>
            	<div class="login-checkbox">
                	<input type="checkbox" name="remname" />记住用户名
                	<input type="checkbox" name="autologin" />30天内自动登陆
                </div>
		</div>
		</form>
		<div class="sk-rotating-plane"></div>
</div>

<!-- scripts -->
<script src="${app}/js/particles.min.js"></script>
<script src="${app}/js/app.js"></script>
<script type="text/javascript" src="${app}/js/jquery-1.2.6.min.js" charset="utf-8"></script>
<script type="text/javascript" src="${app}/js/cookie.js"></script>
<script type="text/javascript" src="${app}/js/login_ajax.js"></script>

</body>
</html>
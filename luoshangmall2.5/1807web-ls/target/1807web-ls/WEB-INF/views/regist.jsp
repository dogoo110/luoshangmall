<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
  <meta charset="utf-8">
  <title>罗裳网站注册界面</title>
  <meta name="description" content="particles.js is a lightweight JavaScript library for creating particles.">
  <meta name="author" content="Vincent Garreau" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <link rel="stylesheet" media="screen" href="${app}/css/style_regist.css">
  <link rel="stylesheet" type="text/css" href="${app}/css/reset.css"/>
   
</head>


<body>

<div id="particles-js">
		<div class="login">
			<div class="login-top">
				欢迎注册
			</div>
			<form>
			<div class="login-center clearfix">
				<div class="login-center-img"><img src="${app}/img/name.png"/></div>
				<div class="login-center-input">
					<input type="text" id="username" name="username" value="" placeholder="请输入您的用户名" onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的用户名'"/>
					<div class="login-center-input-text" id="error_username">用户名</div>
				</div>
			</div>
			<div class="login-center clearfix">
				<div class="login-center-img"><img src="${app}/img/password.png"/></div>
				<div class="login-center-input">
					<input type="password" id="password" name="password" value="" placeholder="请输入您的密码" onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的密码'"/>
					<div class="login-center-input-text" id="error_password">密码</div>
				</div>
			</div>
			<div class="login-center clearfix">
				<div class="login-center-img"><img src="${app}/img/password.png"/></div>
				<div class="login-center-input">
					<input type="password" id="password" name="password2" value="" placeholder="请再次输入您的密码" onfocus="this.placeholder=''" onblur="this.placeholder='请再次输入您的密码'"/>
					<div class="login-center-input-text" id="error_password2">确认密码</div>
				</div>
			</div>
			<div class="login-center clearfix">
				<div class="login-center-img"><img src="${app}/img/name.png"/></div>
				<div class="login-center-input">
					<input type="text" id="password" name="nickname" value="" placeholder="请输入您的昵称" onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的昵称'"/>
					<div class="login-center-input-text" id="error_nickname">昵称</div>
				</div>
			</div>
			<div class="login-center clearfix">
				<div class="login-center-img"><img src="${app}/img/phone.png"/></div>
				<div class="login-center-input">
					<input type="text" id="password" name="phone" value="" placeholder="请输入您的手机号码" onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的手机号码'"/>
					<div class="login-center-input-text" id="error_phone">手机号码</div>
				</div>
			</div>
			
			<div class="login-center clearfix">
				<div class="login-center-img"><img src="${app}/img/email.png"/></div>
				<div class="login-center-input">
					<input type="text" id="password" name="email" value="" placeholder="请输入您的邮箱" onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的邮箱'"/>
					<div class="login-center-input-text" id="error_email">邮箱</div>
				</div>
			</div>
			<div class="login-button" id="regist-submit">
				注册
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
<script type="text/javascript" src="${app}/js/regist_ajax.js"></script>

</body>
</html>
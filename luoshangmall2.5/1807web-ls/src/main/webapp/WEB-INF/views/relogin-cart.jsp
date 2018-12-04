<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>请先登录</title>
<style>
*{margin:0;padding:0;outline:none;font-family:STXingkai;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;-khtml-user-select:none;user-select:none;cursor:default;font-weight:lighter;}
.center{margin:0 auto;}
.whole{width:100%;height:100%;line-height:100%;position:fixed;bottom:0;left:0;z-index:-1000;overflow:hidden;}
.whole img{width:100%;height:100%;}
.mask{width:100%;height:100%;position:absolute;top:0;left:0;background:#000;opacity:0.6;filter:alpha(opacity=60);}
.b{width:100%;text-align:center;height:400px;position:absolute;top:60%;margin-top:-150px}.a{width:150px;height:50px;margin-top:30px}.a a{display:block;float:left;width:150px;height:50px;background:#fff;text-align:center;line-height:50px;font-size:18px;border-radius:25px;color:#333}.a a:hover{color:#000;box-shadow:#fff 0 0 20px}
p{color:#fff;margin-top:40px;font-size:35px;}
#num{margin:0 5px;font-weight:bold;}
</style>
<script type="text/javascript">
	var num=3;
	function redirect(){
		num--;
		document.getElementById("num").innerHTML=num;
		if(num<0){
			document.getElementById("num").innerHTML=0;
			location.href="http://web.luoshangmall.cn";
			}
		}
	setInterval("redirect()", 1000);
</script>
</head>

<body onLoad="redirect();">
<div class="whole">
	<img src="${app }/img/bgImg.jpg" />
    <div class="mask"></div>
</div>
<div class="b" >
		<p>
			如果您想操作购物车页面<br>
			请先在网页登录您的账号<br>
            <span id="num"></span>秒后自动跳转到主页
		</p>
	</div>

</body>
</html>

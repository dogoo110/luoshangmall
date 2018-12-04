<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>支付页面</title>
</head>
<body>
<h1 style="text-align:center;color: red ">请扫描下图二维码支付所选订单</h1>
<dir style="text-align: center;"><img alt="图片" src="http://qr.liantu.com/api.php?text=http://192.168.43.22:9000/order/pay/${orderInfo.userId}/${orderInfo.orderId}"></dir>
<h1 style="text-align:center;color: red "></h1>
<%response.setHeader("refresh","15;url=http://web.luoshangmall.cn/order/success"); %> 
</body>
</html>
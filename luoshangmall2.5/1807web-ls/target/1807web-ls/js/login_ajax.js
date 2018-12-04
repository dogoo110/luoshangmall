//@ sourceURL=login_ajax.js
$(function(){
	//30天自动登录
	var alogin_info=getCookie("autoLogin");
	//alert("alogin_info="+alogin_info);
	if(alogin_info!=""){
		var infos=alogin_info.split(":");
		//alert(infos[0]+"    "+infos[1]);
		$("form input[name=username]").val(infos[0]);
		$("form input[name=password]").val(infos[1]);
		return login();
	}
	//记住用户名
	$("form input[name=username]").val(getCookie("loginName"));
	
	//给form表单添加submit事件
	$("#login-submit").click(function(){
		return login();
	});
	
});

function checkNameAndPassword(userName,userPassword){
	if(userName==""){
		$("#error_username").text("用户名不能为空");
		$(".login-center-input input[type=text]").focus();
		
		$(".login-center-input input[type=text]").blur(function(){
			$("#error_username").text("用户名");
		})		
		return false;
	}
	if(userPassword==""){
		$("#error_password").text("密码不能为空");
		$(".login-center-input input[type=password]").focus();
		$(".login-center-input input[type=password]").blur(function(){
			$("#error_password").text("密码");
		})	
		return false;
	}
	return true;
}


function login(){
	//获取页面数据
	var userName=$("form input[name=username]").val();
	var userPassword=$("form input[name=password]").val();
	var remember=$("form input[name=remname]").get(0).checked;
	var autologin=$("form input[name=autologin]").get(0).checked;
	if(checkNameAndPassword(userName,userPassword)==false){
		return false;
	}
	//发送异步请求
	$.ajax({
		url:"/ls_user/login",
		type:"post",
		data:{"userName":userName,"userPassword":userPassword},
		dataType:"json",
		success:function(result){
			//result是服务端返回的数据

			if(result.status==1){
				//window.location.href="index.html";
				window.location.href="/";
				
				if(autologin){
					if(getCookie("autoLogin")=="" && result.status!=12){
						var value=userName+":"+userPassword;
						setCookie("autoLogin",value);
					}else if(result.status==12){
						alert("管理员无法自动登录");
					}
				}else{
					delCookie("autoLogin");
				}
				if(remember){
					if(getCookie("loginName")==""){
						addCookie("loginName",userName,5);
					}
				}else{
					delCookie("loginName");
				}
			}else if(result.status==0){
				alert(result.msg);
			}else if(result.status==-1){
				alert(result.msg);
			}
		},
		error:function(){
			alert("请求失败!");
		}
	});
	
	return false;
}

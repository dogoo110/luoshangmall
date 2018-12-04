$(function() {

	$("input[name=username]").blur(function() {
		checkUserName();
	});

	$("#regist-submit").click(function() {
		return register();
	});
});

setMsg = function(name, msg, oldmsg) {
	var test = msg + "</font>";
	$("#error_" + name).html("<font color='red'>" + test);
	var input = "input[name=" + name + "]";
	$('.login-center-input ' + input).focus();

	$(".login-center-input " + input).blur(function() {
		$("#error_" + name).html(oldmsg);
	})
};

checkUserName = function() {
	var userName = $("input[name=username]").val();
	if (!formObj.checkNull("username", "用户名不能为空", "用户名")) {

	} else {
		$.ajax({
			url : "/ls_user/checkUserName",
			type : "post",
			data : {
				"userName" : userName
			},
			dataType : "json",
			success : function(result) {
				if (result.status == 1) {
					setMsg("username", "用户名已存在", "用户名")
					return false;
				} else if (result.status == 0) {
                     return true;
				}
			},
			error : function() {
				return false;
			}
		});
	}
}

function register() {

	var userName = $("form input[name=username]").val();
	var userPassword = $("form input[name=password]").val();
	var userPassword2 = $("form input[name=password2]").val();
	var userNickname = $("form input[name=nickname]").val();
	var userPhone = $("form input[name=phone]").val();
	var userEmail = $("form input[name=email]").val();

	var flag = formObj.checkForm();

	if (flag) {
		$.ajax({
			url : "/ls_user/regist",
			type : "post",
			data : {
				// 按照pojo的属性名称修改参数
				"userName" : userName,
				"userPassword" : userPassword,
				"userNickname" : userNickname,
				"userPhone" : userPhone,
				"userEmail" : userEmail,
			},
			dataType : "json",
			success : function(result) {
				if (result.status == 1) {
					alert(result.msg);
					window.location.href = "/page/login";
				} else if (result.status == 0) {
					alert(result.msg);
				}
			},
			error : function() {
				alert("请求失败！");
			}
		});
	}

	return false;
}
var formObj = {
	checkForm : function() {
		if (!this.checkNull("username", "用户名不能为空!", "用户名"))
			return false;
		if (!this.checkNull("password", "密码不能为空", "密码"))
			return false;
		if (!this.checkNull("password2", "确认密码不能为空", "确认密码"))
			return false;
		if (!this.checkNull("nickname", "昵称不能为空", "昵称"))
			return false;
		if (!this.checkNull("phone", "手机号码不能为空", "手机号码"))
			return false;
		if (!this.checkNull("email", "邮箱不能为空", "邮箱"))
			return false;
		if (!this.checkPassword("password", "两次密码不相同", "确认密码"))
			return false;
		if (!this.checkPhone("phone", "手机号码格式不正确", "手机号码"))
			return false;

		if (!this.checkEmail("email", "邮箱格式不正确", "邮箱"))
			return false;

		return true;
	},
	checkNull : function(name, msg, oldmsg) {
		var value = $("input[name=" + name + "]").val();
		if ($.trim(value) == "") {
			setMsg(name, msg, oldmsg)
			return false;
		}
		return true;
	},
	checkPassword : function(name, msg, oldmsg) {
		var pwd = $("input[name=" + name + "]").val();
		var pwd2 = $("input[name=" + name + "2]").val();
		if ($.trim(pwd) != "" && $.trim(pwd2) != "") {
			if (pwd != pwd2) {
				setMsg(name + "2", msg, oldmsg)
				return false;
			}
		}
		return true;
	},
	checkEmail : function(name, msg, oldmsg) {
		var value = $("input[name=" + name + "]").val();
		var reg = /^\w+@\w+(\.\w+)+$/;
		if (!reg.test(value)) {
			setMsg(name, msg, oldmsg);
			return false;
		}
		return true;
	},
	checkPhone : function(name, msg, oldmsg) {
		var value = $("input[name=" + name + "]").val();
		var reg = /^1[34578]\d{9}$/;
		if (!reg.test(value)) {
			setMsg(name, msg, oldmsg);
			return false;
		}
		return true;
	}
};
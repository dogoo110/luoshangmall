package cn.ls.web.controller;



import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.ls.common.service.RedisService;
import cn.ls.common.util.CookieUtils;
import cn.ls.common.vo.SysResult;
import cn.ls.web.pojo.User;
import cn.ls.web.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	@RequestMapping("ls_user/checkUserName")
	@ResponseBody
	public SysResult checkUserName(String userName) throws Exception{
		//exist=0表示可用   1表示不可用
		int exist =userService.checkUserName(userName);
		SysResult result=new SysResult();
		result.setStatus(exist);
		return result;
	}
	
	@RequestMapping("ls_user/regist")
	@ResponseBody
	public SysResult regist(User user) throws Exception{
		System.out.println(user);
		SysResult result=new SysResult();
		int success =userService.regist(user);
		result.setStatus(success);
		if(success==1){
			result.setMsg("当前用户:"+user.getUserName()+"注册成功,请激活邮箱后使用");
		}else{
			result.setMsg("当前用户:"+user.getUserName()+"注册失败");
		}
		return result;
	}
	
	
	//user_ajax/login
	@RequestMapping("ls_user/login")
	@ResponseBody
	public SysResult login(User user,HttpServletRequest request,HttpServletResponse response) throws Exception{
		SysResult result=new SysResult();
		//username  userPassword 参数
		System.out.println(user);
		String ticket=userService.login(user);
		System.out.println("========"+user.getUserName()+"==========");
		System.out.println("========"+ticket+"==========");
		//登录在sso失败  返回的是""  如果成功 返回的是ticket的值
		if(StringUtils.isNotEmpty(ticket)){
			if(ticket.equals("-1")){
				result.setStatus(-1);
				result.setMsg("用户未激活,请去邮箱激活");
				return result;
			}
			
			CookieUtils.setCookie(request, response,"LS_TICKET", ticket);
			//登录成功 转向首页
			result.setStatus(1);
			result.setMsg("密码正确");
			return result;
		}else{
			result.setStatus(0);
			result.setMsg("密码错误,请重试");
			return result;
		}
		
	}
	@Autowired
	private RedisService redis;
	@RequestMapping("user/logout")
	public String logout(HttpServletRequest request,HttpServletResponse res){

        Cookie[] cookies = request.getCookies();//这样便可以获取一个cookie数组
        if (null==cookies) {
            System.out.println("没有cookie=========");
        } else {int i=1;
            for(Cookie cookie : cookies){
                
            	System.out.println("第"+i+"个name:"+cookie.getName()+",value:"+ cookie.getValue());
                i++;
                if(cookie.getName()=="LS_TICKET"){
                redis.del(cookie.getValue());
                System.out.println("清除redis");
                }
                cookie.setValue(null);
                cookie.setMaxAge(0);// 立即销毁cookie
                cookie.setPath("/");
                System.out.println("被删除的cookie名字为:"+cookie.getName());
                res.addCookie(cookie);
            }

        }	
        Cookie cookie=new Cookie("autoLogin",null);
        cookie.setMaxAge(0);
        cookie.setPath("/page");
        cookie.setValue(null);
        res.addCookie(cookie);
		return "/index";
	}
}

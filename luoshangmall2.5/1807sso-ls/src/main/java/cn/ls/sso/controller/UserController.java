package cn.ls.sso.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import cn.ls.common.service.HttpClientService;
import cn.ls.common.service.RedisService;
import cn.ls.common.util.MD5Util;
import cn.ls.common.util.ObjectUtil;
import cn.ls.common.util.UUIDUtil;
import cn.ls.common.vo.SysResult;
import cn.ls.sso.mapper.UserMapper;
import cn.ls.sso.pojo.User;

@RestController
public class UserController {
	@Autowired
	private RedisService redis;
	@Autowired
	private UserMapper userMapper;
	@RequestMapping("user/check/{username}")
	public String checkUserName(@PathVariable String username){
		String exists=userMapper.checkUserName(username)+"";
		return exists;
	}
	
	
	
	@Autowired
	private HttpClientService client;	

    @RequestMapping("user/register")
		public String doReigster(User user,HttpServletResponse res,HttpServletRequest req) throws Exception{
		user.setUserPassword(MD5Util.md5(user.getUserPassword()));
		user.setUserId(UUIDUtil.getUUID());
		user.setUserType(-1);
		System.out.println(user);
		int reslut =  userMapper.insertUser(user);
		try{
			System.out.println(user.getUserId()+"======"+user.getUserEmail());
			res.setHeader("Access-Control-Allow-Origin","*");
			
		String url="http://134.175.110.192:9090/check/sendCheckMail?userid="+user.getUserId()+"&email="+user.getUserEmail();
		client.doGet(url);
		}finally{
			return reslut+"";
		}	
	}





	
	
	@RequestMapping("user/login")
	public String doLogin(@RequestParam(value="u")String userName,
			@RequestParam(value="p")String userPassword) throws Exception{
		String ticket="";
		//判断登录成功失败
		User _user=new User();
		_user.setUserName(userName);
		_user.setUserPassword(MD5Util.md5(userPassword));
//		_user.setUserPassword(userPassword);
		System.out.println("------"+_user+"-----"+_user.getUserName()+"=="+_user.getUserPassword());
		User user = userMapper.checkLogin(_user);
		if(user==null){
			//登录失败 提供的用户名密码不对 直接rerun ticket
			return ticket;
		}else{
			ticket="-1";
			if(user.getUserType()==-1){
				return ticket;
			}
			//登录成功 密码用户名正确
			/*生成ticket "JT_LOGIN"+currentTime+username md5加密
			 * user对象转化为json存入redis
			 */
			ticket=MD5Util.md5("LS_LOGIN"+System.currentTimeMillis()+userName);
			String userJson=ObjectUtil.mapper.writeValueAsString(user);
			redis.set(ticket, userJson,60*30);
			return ticket;
		}
	}
	
	@RequestMapping("user/query/{ticket}")
	public String queryTicket(@PathVariable String ticket,String callback) throws Exception{
		SysResult result=new SysResult();
		String userJson=redis.get(ticket);
		System.out.println("*****"+ticket+"*****");
		result.setData(userJson);
		result.setMsg("ok");
		result.setStatus(200);
		System.out.println("*****"+ticket+"*****");
		String jsonData=ObjectUtil.mapper.writeValueAsString(result);
		if(callback==null){
			return jsonData;
		}else{
			return callback+"("+jsonData+")";
		}
}

	
	
	
}

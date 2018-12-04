package cn.ls.web.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.ls.common.service.HttpClientService;
import cn.ls.common.vo.HttpResult;
import cn.ls.web.pojo.User;

@Service
public class UserService {
	@Autowired
	private HttpClientService client;
	public int checkUserName(String username) throws Exception {
		String url="http://sso.luoshangmall.cn/user/check/"+username;
		String exists = client.doGet(url);
		return Integer.parseInt(exists);
	}
	public int regist(User user) throws Exception {
		String url="http://sso.luoshangmall.cn/user/register";
		Map<String, Object> map=new HashMap<String,Object>();
		map.put("userName", user.getUserName());
		map.put("userPassword", user.getUserPassword());
		map.put("userNickname", user.getUserNickname());
		map.put("userEmail", user.getUserEmail());
		map.put("userPhone", user.getUserPhone());
		//请求体中 userName=**&userPassowrd=**...
		HttpResult result = client.doPost(url,map);//封装了响应体
		//获取响应体内容
		String success = result.getBody();//1成功 0失败
		return Integer.parseInt(success);
	}
	
	public String login(User user) throws Exception {
		System.out.println(user);
		
		String url="http://sso.luoshangmall.cn/user/login";
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("u", user.getUserName());
		map.put("p", user.getUserPassword());
		HttpResult result = client.doPost(url, map);
		String ticket=result.getBody();
		System.out.println("*****"+ticket+"*****");
		return ticket;
	}

	
}

package xyz.ls.check.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import xyz.ls.check.mapper.CheckMapper;
import xyz.ls.check.pojo.Check;
import xyz.ls.check.pojo.User;
import xyz.ls.check.util.MailUtil;
import xyz.ls.common.util.UUIDUtil;

@Service
@Transactional
public class SendService {
 	
	@Autowired
	private CheckMapper checkMapper;
		
	public void SendCheckMail(String userid,String email){
		
		Check check = new Check();
		check.setUserId(userid);
		check.setCheckEmail(email);
		check.setCheckStatus(0);
		check.setCheckId(UUIDUtil.getUUID());
		System.out.println("存入数据库");
	    //包装存入数据库
		int success=checkMapper.insertCheck(check);
		
		if(success==1){	
			
		String content = "<html><head></head><body>"
				+ "<h1>尊敬的用户:</h1>"
				+"<h3>欢迎注册罗裳商城账号</h3><h3>请点击以下路径进行激活用户</h3><br /><br />"
				+ "<h3>"
				+ "<a href='http://134.175.110.192:9090/check/activate?uuid="+check.getCheckId()+"'>"+
				"http://check.luoshangmall.cn/check/activate?uuid=" + check.getCheckId()
					+ "</a></h3><br /><br /><h3>如果没有激活用户,您将无法正常登陆罗裳商城</h3>"
					+ "<br><h3>最终解释权归属于罗裳商城</h3></body></html>";
		Runnable run=new MailUtil(email,check.getCheckId(),content);
		Thread th=new Thread(run);
		th.start();
		System.out.println("发送中");
		}
		System.out.println("发送成功");
	}
}

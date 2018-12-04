package xyz.ls.check.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import xyz.ls.check.service.ActivateService;

@Controller
public class ActivateController {

	@Autowired
	private ActivateService activateService;

	@RequestMapping("/check/activate")
	public void ActivateUser(String uuid,HttpServletResponse response) throws Exception {
		
		int success=0;
		
		if(uuid.length()==36){
			 success = activateService.ActivateByUUID(uuid);
		}
					
		//success:0  失败
		//success:1  成功
		if (success == 1) {
			sendAlert(response,"用户激活成功","http://web.luoshangmall.cn");
		} else if(success == 0){
			sendAlert(response,"用户激活失败","http://web.luoshangmall.cn");
		}else{
			sendAlert(response,"未知原因","http://web.luoshangmall.cn");
		}
		
	}
	
	private void sendAlert(HttpServletResponse response,String method,String url) throws IOException{
		response.setContentType("text/html; charset=UTF-8");
	    response.getWriter().print("<html><body><script type='text/javascript'>alert('"+method+"');window.location.href='"+url+"';</script></body></html>");		
		response.getWriter().close();
	}

}

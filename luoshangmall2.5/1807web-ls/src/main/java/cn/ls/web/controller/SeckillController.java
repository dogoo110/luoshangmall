package cn.ls.web.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.ls.common.service.RedisService;
import cn.ls.common.util.CookieUtils;
import cn.ls.common.util.ObjectUtil;
import cn.ls.web.pojo.Seckill;
import cn.ls.web.pojo.SuccessKilled;
import cn.ls.web.pojo.User;
import cn.ls.web.sec.vo.SeckillToJSP;
import cn.ls.web.service.SeckillService;

@Controller
public class SeckillController {
	
	@Autowired
	private SeckillService seckillService;

	@RequestMapping("seckill/list")
	public String goIndex(Model model) throws Exception{
		List<Seckill> sList=seckillService.queryAll();
		List<SeckillToJSP> jsplist=new ArrayList<SeckillToJSP>();
		for(Seckill sc:sList){
			SeckillToJSP seckillToJSP=new SeckillToJSP();
			seckillToJSP.setSeckill(sc);
			double sheyu=sc.getNumber()*1.0/sc.getTotalNumber()*100;
			String sheyustr=sheyu+"%";
			seckillToJSP.setSheyu(sheyustr);
			jsplist.add(seckillToJSP);
		}		
		model.addAttribute("list", jsplist);
		return "list";
	}
	
	@RequestMapping("seckill/{id}/detail")
	public String detail(@PathVariable Long id,Model model) throws Exception{
		Seckill seckill=seckillService.getById(id);
		model.addAttribute("seckill",seckill);
		return "detail";
	}
	
	
	@RequestMapping("/seckill/time/now")
	@ResponseBody
	public Date getNow(){
		return new Date();
	}
	
	@Autowired 
	private RedisService redis;
	
	@RequestMapping("/seckill/{seckillId}")
	@ResponseBody
	public String start(@PathVariable Long seckillId,HttpServletRequest request) throws Exception{
		String ticket = CookieUtils.getCookieValue(request, "LS_TICKET");
		String userJson = redis.get(ticket);
		User user = ObjectUtil.mapper.readValue(userJson, User.class);
		String userPhone = user.getUserPhone();
		String userName = user.getUserName();
		System.out.println(userPhone+"***"+userName);
			seckillService.start(seckillId,userPhone,userName);
		return "";
	}
	
	@RequestMapping("/seckill/{seckillId}/userPhone")
	@ResponseBody
	public List<SuccessKilled> successKill(@PathVariable Long seckillId) throws Exception{
		List<SuccessKilled> sk = seckillService.querySuccess(seckillId);
		return sk;
		
	}
	
}

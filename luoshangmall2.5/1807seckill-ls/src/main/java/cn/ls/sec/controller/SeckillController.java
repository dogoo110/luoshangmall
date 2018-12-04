package cn.ls.sec.controller;

import java.util.List;

import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cn.ls.common.util.ObjectUtil;
import cn.ls.sec.mapper.SeckillMapper;
import cn.ls.sec.mapper.SuccessKilledMapper;
import cn.ls.sec.pojo.Seckill;
import cn.ls.sec.pojo.SuccessKilled;

@RestController
public class SeckillController {
	
	@Autowired 
	private SeckillMapper seckillMapper;
	
	@RequestMapping("seckill/queryAll")
	public List<Seckill> queryAll() {
		return seckillMapper.queryAll();
		
	}
	
	@RequestMapping("seckill/getById/{id}")
	public String getById(@PathVariable Long id) throws Exception {
		Seckill seckill = seckillMapper.queryById(id);
		String jsonData=ObjectUtil.mapper.writeValueAsString(seckill);
		return jsonData;
	}
	
	@Autowired
	private RabbitTemplate rabbit;
	
	@RequestMapping("seckill/start")
	public void start(Long seckillId , String userPhone,String userName) {
		String msg=seckillId+"/"+userPhone+"/"+userName;
		rabbit.convertAndSend("sec-ex", "seckill", msg);
	}
	
	@Autowired 
	private SuccessKilledMapper successKilledMapper;
	
	@RequestMapping("seckill/querySuccess/{seckillId}")
	public List<SuccessKilled> querySuccess(@PathVariable Long seckillId) {
		return successKilledMapper.querySuccess(seckillId);
	}
	

}

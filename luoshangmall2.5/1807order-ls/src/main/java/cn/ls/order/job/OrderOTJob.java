package cn.ls.order.job;

import java.util.Date;

import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.context.ApplicationContext;
import org.springframework.scheduling.quartz.QuartzJobBean;

import cn.ls.order.mapper.OrderMapper;

public class OrderOTJob extends QuartzJobBean{

	@Override
	protected void executeInternal(JobExecutionContext context) throws JobExecutionException {
		ApplicationContext applicationContext=
				(ApplicationContext)context.getJobDetail().getJobDataMap().get("applicationContext");
		
				System.out.println("正在检查超时订单...");	
			Date lastDay=new Date(new Date().getTime()-1000*60*60*24);
			applicationContext.getBean(OrderMapper.class).deleteOTOders(lastDay);

		
	}

}

package xyz.ls.check.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import xyz.ls.check.mapper.CheckMapper;
import xyz.ls.check.pojo.Check;
import xyz.ls.check.pojo.User;
import xyz.ls.common.service.HttpClientService;

@Service
@Transactional
public class ActivateService {
	
	@Autowired
	private CheckMapper checkMapper;
	
	@Autowired
	private HttpClientService client;
	
	public int ActivateByUUID(String uuid) throws Exception {
		System.out.println("验证密码");
	   //检查uuid存在 ,且status为0
		Check check=checkMapper.queryCheckByUUID(uuid);
		if(check==null || check.getCheckStatus()!=0){
			return sendError(1);			
		}
	   //检查用户存在问题,检查用户类型是否为-1
	    User user=checkMapper.queryUserByID(check.getUserId());
	    System.out.println(user);
	    if(user==null || user.getUserType()!=-1){
	    	return sendError(2);
	    }
    
	   //修改用户表的用户类型为1
	    int success=checkMapper.UpdateUserByUserId(user.getUserId());
	    if(success==1){
	    	//修改check表status=1	
	    	success=checkMapper.UpdateCheckStatusByUUID(uuid);
	    	if(success==1){
	    		System.out.println("验证成功");
	    	    return 1;
	    	}else{
	    		return sendError(4);
	    	}
	    }else{
	    	return sendError(3);
	    } 
	}
	
	//Error错误:传递页面
	private int sendError(int id) throws Exception{
		System.out.println("error="+id);
		return 0;	
	}
	 

}

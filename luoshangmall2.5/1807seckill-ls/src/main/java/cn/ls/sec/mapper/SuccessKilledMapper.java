package cn.ls.sec.mapper;


import java.util.List;

import cn.ls.sec.pojo.SuccessKilled;


public interface SuccessKilledMapper {

	void insertSk(SuccessKilled sk);

	List<SuccessKilled> querySuccess(Long seckillId);
	
	
}

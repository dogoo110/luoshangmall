package cn.ls.sso.mapper;

import cn.ls.sso.pojo.User;

public interface UserMapper {


	int checkUserName(String userName);

	int insertUser(User user);

	User checkLogin(User user);


}

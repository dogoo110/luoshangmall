package xyz.ls.check.mapper;

import xyz.ls.check.pojo.Check;
import xyz.ls.check.pojo.User;

public interface CheckMapper {

	int UpdateCheckStatusByUUID(String uuid);

	Check queryCheckByUUID(String uuid);

	int UpdateUserByUserId(String user_id);

	int insertCheck(Check check);

    User queryUserByID(String userId);

}

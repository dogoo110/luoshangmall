package xyz.ls.check.pojo;

import java.io.Serializable;
import java.util.Date;

public class Check implements Serializable{

	private String checkId;
    private String checkEmail;
    private String userId;
    private Integer checkStatus;


	public String getCheckId() {
		return checkId;
	}
	public void setCheckId(String checkId) {
		this.checkId = checkId;
	}
	public String getCheckEmail() {
		return checkEmail;
	}
	public void setCheckEmail(String checkEmail) {
		this.checkEmail = checkEmail;
	}
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public Integer getCheckStatus() {
		return checkStatus;
	}
	public void setCheckStatus(Integer checkStatus) {
		this.checkStatus = checkStatus;
	}

    
}

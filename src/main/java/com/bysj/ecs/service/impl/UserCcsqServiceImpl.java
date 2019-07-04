package com.bysj.ecs.service.impl;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bysj.ecs.mapper.UserCcsqMapper;
import com.bysj.ecs.pojo.UserCcsq;
import com.bysj.ecs.pojo.UserClbx;
import com.bysj.ecs.service.UserCcsqService;
import com.bysj.ecs.service.UserClbxService;

@Service("userCcsqService")
public class UserCcsqServiceImpl implements UserCcsqService {

private UserCcsqMapper userCcsqMapper;
    
    @Resource(name="userCcsqMapper")
	public void setUseCcsqrMapper(UserCcsqMapper userCcsqMapper) {
		this.userCcsqMapper = userCcsqMapper;
	}
    
	public void addCcsq(UserCcsq userCcsq) 
	{		
		  userCcsqMapper.addCcsq(userCcsq);
	}
	
public ArrayList<UserCcsq> selectCcsq(String ccsq_sqr,String ccsq_delete) {
		
		return userCcsqMapper.selectCcsq(ccsq_sqr,ccsq_delete);
		
	}

	public boolean deleteCcsq(int ccsq_id) {
		return userCcsqMapper.deleteCcsq(ccsq_id);
	}	
	
	public void updateCcsq(UserCcsq userCcsq) {
		userCcsqMapper.updateCcsq(userCcsq);
		
	}

	public UserCcsq selectoneCcsq(int ccsq_id) {
		UserCcsq userCcsq=userCcsqMapper.selectoneCcsq(ccsq_id);
		return userCcsq;
	}
	
	//审批-出差申请-同意
			public void agreeCcsq(UserCcsq userCcsq){
				userCcsqMapper.agreeCcsq(userCcsq);
			}
		
			//审批-出差申请-退回
					public void returnCcsq(UserCcsq userCcsq){
						userCcsqMapper.returnCcsq(userCcsq);
					}

					public void updateCcsqDelete(UserCcsq userCcsq) {
						userCcsqMapper.updateCcsqDelete(userCcsq);
						
					}

					public ArrayList<UserCcsq> selectNotDeleteCcsq(String ccsq_sqr, String ccsq_delete) {
						
						return userCcsqMapper.selectNotDeleteCcsq(ccsq_sqr, ccsq_delete);
					}
}

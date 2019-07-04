package com.bysj.ecs.service.impl;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bysj.ecs.mapper.UserHkMapper;
import com.bysj.ecs.pojo.UserCcsq;
import com.bysj.ecs.pojo.UserHk;
import com.bysj.ecs.service.UserHkService;

@Service("userHkService")
public class UserHkServiceImpl implements UserHkService{

private UserHkMapper userHkMapper;
    
    @Resource(name="userHkMapper")
	public void setUserHkMapper(UserHkMapper userHkMapper) {
		this.userHkMapper = userHkMapper;
	}
    
	public void addHk(UserHk userHk) 
	{		
	            userHkMapper.addHk(userHk);
	}

	public ArrayList<UserHk> selectHk(String hk_hkr,String hk_delete) {
		
		return userHkMapper.selectHk(hk_hkr,hk_delete);
		
	}

	public boolean deleteHk(int hk_id) {
		return userHkMapper.deleteHk(hk_id);
	}

	public void updateHk(UserHk userHk) {
		userHkMapper.updateHk(userHk);
		
	}

	public UserHk selectoneHk(int hk_id) {
		
		return userHkMapper.selectoneHk(hk_id);
	}
	
	//审批-还款-同意
	public void agreeHk(UserHk userHk){
		userHkMapper.agreeHk(userHk);
	}

	//审批-还款-退回
			public void returnHk(UserHk userHk){
				userHkMapper.returnHk(userHk);
			}

			public void updateHkDelete(UserHk userHk) {
				userHkMapper.updateHkDelete(userHk);
				
			}

			public ArrayList<UserHk> selectNotDeleteHk(String hk_hkr, String hk_delete) {
				
				return userHkMapper.selectNotDeleteHk(hk_hkr, hk_delete);
			}
    


}

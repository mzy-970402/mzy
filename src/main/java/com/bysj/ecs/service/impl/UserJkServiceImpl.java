package com.bysj.ecs.service.impl;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import com.bysj.ecs.mapper.UserJkMapper;
import com.bysj.ecs.pojo.UserHk;
import com.bysj.ecs.pojo.UserJk;
import com.bysj.ecs.service.UserCcsqService;
import com.bysj.ecs.service.UserJkService;

@Service("userJkService")
public class UserJkServiceImpl implements UserJkService{

private UserJkMapper userJkMapper;
    
    @Resource(name="userJkMapper")
	public void setUserJkMapper(UserJkMapper userJkMapper) {
		this.userJkMapper = userJkMapper;
	}
    
	public void addJk(UserJk userJk) 
	{		
	            userJkMapper.addJk(userJk);
	}

	public ArrayList<UserJk> selectJk(String jk_jkr,String jk_delete) {
		
		return userJkMapper.selectJk(jk_jkr,jk_delete);
		
	}

	public boolean deleteJk(int jk_id) {
		return userJkMapper.deleteJk(jk_id);
	}

	public void updateJk(UserJk userJk) {
		userJkMapper.updateJk(userJk);
		
	}

	public UserJk selectoneJk(int jk_id) {
		
		return userJkMapper.selectoneJk(jk_id);
	}
	
	//审批-借款-同意
		public void agreeJk(UserJk userJk){
			userJkMapper.agreeJk(userJk);
		}

		//审批-借款-退回
				public void returnJk(UserJk userJk){
					userJkMapper.returnJk(userJk);
				}

				public void updateJkDelete(UserJk userJk) {
					userJkMapper.updateJkDelete(userJk);
					
				}

				public ArrayList<UserJk> selectNotDeleteJk(String jk_jkr, String jk_delete) {
					
					return userJkMapper.selectNotDeleteJk(jk_jkr, jk_delete);
				}
    


}

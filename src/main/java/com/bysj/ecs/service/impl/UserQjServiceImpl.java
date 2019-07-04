package com.bysj.ecs.service.impl;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bysj.ecs.mapper.UserQjMapper;
import com.bysj.ecs.pojo.UserClbx;
import com.bysj.ecs.pojo.UserJk;
import com.bysj.ecs.pojo.UserQj;
import com.bysj.ecs.service.UserQjService;

@Service("userQjService")
public class UserQjServiceImpl implements UserQjService {

private UserQjMapper userQjMapper;
    
    @Resource(name="userQjMapper")
	public void setUserQjMapper(UserQjMapper userQjMapper) {
		this.userQjMapper = userQjMapper;
	}
    
	public void addQj(UserQj userQj) 
	{		
	            userQjMapper.addQj(userQj);
	}

	public ArrayList<UserQj> selectQj(String qj_sqr,String qj_delete) {
		
		return userQjMapper.selectQj(qj_sqr,qj_delete);
		
	}

	public boolean deleteQj(int qj_id) {
		return userQjMapper.deleteQj(qj_id);
	}
	
	
	public void updateQj(UserQj userQj) {
		userQjMapper.updateQj(userQj);
		
	}

	public UserQj selectoneQj(int qj_id) {
		UserQj userQj=userQjMapper.selectoneQj(qj_id);
		return userQj;
	}
	
	//审批-请假-同意
			public void agreeQj(UserQj userQj){
				userQjMapper.agreeQj(userQj);
			}

			//审批-请假-退回
					public void returnQj(UserQj userQj){
						userQjMapper.returnQj(userQj);
					}

					public void updateQjDelete(UserQj userQj) {
						userQjMapper.updateQjDelete(userQj);
						
					}

					public ArrayList<UserQj> selectNotDeleteQj(String qj_sqr, String qj_delete) {
						
						return userQjMapper.selectNotDeleteQj(qj_sqr, qj_delete);
					}

}

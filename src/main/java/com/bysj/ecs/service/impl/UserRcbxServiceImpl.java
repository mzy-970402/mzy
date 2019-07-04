package com.bysj.ecs.service.impl;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bysj.ecs.mapper.UserRcbxMapper;
import com.bysj.ecs.pojo.UserClbx;
import com.bysj.ecs.pojo.UserQj;
import com.bysj.ecs.pojo.UserRcbx;
import com.bysj.ecs.service.UserCcsqService;
import com.bysj.ecs.service.UserRcbxService;

@Service("userRcbxService")
public class UserRcbxServiceImpl implements UserRcbxService{
	
	 private UserRcbxMapper userRcbxMapper;
	    
	    @Resource(name="userRcbxMapper")
		public void setUseRcbxrMapper(UserRcbxMapper userRcbxMapper) {
			this.userRcbxMapper = userRcbxMapper;
		}
	    
		public void addRcbx(UserRcbx userRcbx) 
		{		
			userRcbxMapper.addRcbx(userRcbx);
		}

		

		public boolean deleteRcbx(int rcbx_id) {
			return userRcbxMapper.deleteRcbx(rcbx_id);
		}

		public void updateRcbx(UserRcbx userRcbx) {
			userRcbxMapper.updateRcbx(userRcbx);
			
		}

		public UserRcbx selectoneRcbx(int rcbx_id) {
			UserRcbx userRcbx=userRcbxMapper.selectoneRcbx(rcbx_id);
			return userRcbx;
		}
		
		//审批-日常报销-同意
		public void agreeRcbx(UserRcbx userRcbx){
			userRcbxMapper.agreeRcbx(userRcbx);
		}

		//审批-日常报销-退回
				public void returnRcbx(UserRcbx userRcbx){
					userRcbxMapper.returnRcbx(userRcbx);
				}

				public ArrayList<UserRcbx> selectRcbx(String rcbx_sqr, String rcbx_delete) {
					
					return userRcbxMapper.selectRcbx(rcbx_sqr, rcbx_delete);
				}

				public void updateRcbxDelete(UserRcbx userRcbx) {
					userRcbxMapper.updateRcbxDelete(userRcbx);
					
				}

				public ArrayList<UserRcbx> selectNotDeleteRcbx(String rcbx_sqr, String rcbx_delete) {
					
					return userRcbxMapper.selectNotDeleteRcbx(rcbx_sqr, rcbx_delete);
				}

				
}

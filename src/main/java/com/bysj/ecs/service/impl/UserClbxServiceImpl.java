package com.bysj.ecs.service.impl;



import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.bysj.ecs.mapper.UserClbxMapper;
import com.bysj.ecs.pojo.UserClbx;
import com.bysj.ecs.service.UserClbxService;

@Service("userClbxService")
public class UserClbxServiceImpl implements UserClbxService {

    private UserClbxMapper userClbxMapper;
    
    @Resource(name="userClbxMapper")
	public void setUseClbxrMapper(UserClbxMapper userClbxMapper) {
		this.userClbxMapper = userClbxMapper;
	}
    
	public void addClbx(UserClbx userClbx) 
	{		
	            userClbxMapper.addClbx(userClbx);
	}

	public ArrayList<UserClbx> selectClbx(String clbx_sqr,String clbx_delete) {
		
		return userClbxMapper.selectClbx(clbx_sqr,clbx_delete);
		
	}

	public boolean deleteClbx(int clbx_id) {
		return userClbxMapper.deleteClbx(clbx_id);
	}

	public void updateClbx(UserClbx userClbx) {
		userClbxMapper.updateClbx(userClbx);
		
	}

	public UserClbx selectoneClbx(int clbx_id) {
		UserClbx userClbx=userClbxMapper.selectoneClbx(clbx_id);
		return userClbx;
	}
	
	//审批-差旅报销-同意
		public void agreeClbx(UserClbx userClbx){
			userClbxMapper.agreeClbx(userClbx);
		}
	
		//审批-差旅报销-退回
				public void returnClbx(UserClbx userClbx){
					userClbxMapper.returnClbx(userClbx);
				}

				public void updateClbxDelete(UserClbx userClbx) {
					userClbxMapper.updateClbxDelete(userClbx);
					
				}
				//查找本人clbx_delete为"已删"的差旅报销
				public ArrayList<UserClbx> selectNotDeleteClbx(String clbx_sqr, String clbx_delete) {
					return userClbxMapper.selectNotDeleteClbx(clbx_sqr, clbx_delete);
				}
			

}
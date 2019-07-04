package com.bysj.ecs.service;

import java.util.ArrayList;

import com.bysj.ecs.pojo.UserClbx;
import com.bysj.ecs.pojo.UserRcbx;

public interface UserRcbxService 
{
	//添加日常报销
	public void addRcbx(UserRcbx userRcbx) ;
		
		//查询本人的日常报销
	    public ArrayList<UserRcbx> selectRcbx(String rcbx_sqr,String rcbx_delete);
	    
	    //删除本条日常报销
	  	public boolean deleteRcbx(int rcbx_id);

		//修改日常报销
		public void updateRcbx(UserRcbx userRcbx);
		
		//查询某条日常报销
		public UserRcbx selectoneRcbx(int rcbx_id);
		
		//审批-日常报销-同意
		public void agreeRcbx(UserRcbx userRcbx);
		
		//审批-日常报销-退回
		public void returnRcbx(UserRcbx userRcbx);
		
		//修改rcbx_delete为已删
		public void updateRcbxDelete(UserRcbx userRcbx);
		
		//查找本人rcbx_delete为"已删"的差旅报销
		public ArrayList<UserRcbx> selectNotDeleteRcbx(String rcbx_sqr,String rcbx_delete);
}

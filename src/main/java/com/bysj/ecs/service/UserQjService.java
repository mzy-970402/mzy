package com.bysj.ecs.service;

import java.util.ArrayList;

import com.bysj.ecs.pojo.UserCcsq;
import com.bysj.ecs.pojo.UserClbx;
import com.bysj.ecs.pojo.UserQj;
import com.bysj.ecs.pojo.UserRcbx;

public interface UserQjService {
	//添加请假
		public void addQj(UserQj userQj) ;
		
		//查询本人的请假
	    public ArrayList<UserQj> selectQj(String qj_sqr,String qj_delete);
	    
	    //删除本条请假
	  	public boolean deleteQj(int qj_id);
	  	
	  //修改请假
	  	public void updateQj(UserQj userQj);
	  	
	  	//查询请假
	  	public UserQj selectoneQj(int qj_id);

	    //审批-请假-同意
		public void agreeQj(UserQj userQj);
		
		//审批-请假-退回
		public void returnQj(UserQj userQj);
		

		//修改qj_delete为已删
		public void updateQjDelete(UserQj userQj);
		
		//查找本人qj_delete为"已删"的差旅报销
		public ArrayList<UserQj> selectNotDeleteQj(String qj_sqr,String qj_delete);
}

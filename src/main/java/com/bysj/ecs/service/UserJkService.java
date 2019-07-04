package com.bysj.ecs.service;

import java.util.ArrayList;

import com.bysj.ecs.pojo.UserClbx;
import com.bysj.ecs.pojo.UserJk;
import com.bysj.ecs.pojo.UserRcbx;

public interface UserJkService {
	    //添加借款
		public void addJk(UserJk userJk) ;
		
		//查询本人的借款
	    public ArrayList<UserJk> selectJk(String jk_jkr,String jk_delete);
	    
	    //删除本条借款
	  	public boolean deleteJk(int jk_id);
	  	
	    //修改借款
	  	public void updateJk(UserJk userJk);
	  	
	  	//查询借款
	  	public UserJk selectoneJk(int jk_id);
	  	
	    //审批-借款-同意
		public void agreeJk(UserJk userJk);
		
		//审批-借款-退回
		public void returnJk(UserJk userJk);
		

		//修改jk_delete为已删
		public void updateJkDelete(UserJk userJk);
		
		//查找本人jk_delete为"已删"的差旅报销
		public ArrayList<UserJk> selectNotDeleteJk(String jk_jkr,String jk_delete);

}

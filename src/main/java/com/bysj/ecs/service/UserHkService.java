package com.bysj.ecs.service;

import java.util.ArrayList;

import com.bysj.ecs.pojo.UserClbx;
import com.bysj.ecs.pojo.UserHk;
import com.bysj.ecs.pojo.UserRcbx;

public interface UserHkService {
	    
	    //添加还款
		public void addHk(UserHk userHk) ;
		
		//查询本人的还款
	    public ArrayList<UserHk> selectHk(String hk_hkr,String hk_delete);
	    
	    //删除本条还款
	  	public boolean deleteHk(int hk_id);
	  	
	    //修改还款
	  	public void updateHk(UserHk userHk);
	  	
	  	//查询还款
	  	public UserHk selectoneHk(int hk_id);
	  	
	    //审批-还款-同意
		public void agreeHk(UserHk userHk);
		
		//审批-还款-退回
		public void returnHk(UserHk userHk);
		

		//修改hk_delete为已删
		public void updateHkDelete(UserHk userHk);
		
		//查找本人hk_delete为"已删"的差旅报销
		public ArrayList<UserHk> selectNotDeleteHk(String hk_hkr,String hk_delete);

}

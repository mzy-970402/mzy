package com.bysj.ecs.service;

import java.util.ArrayList;

import com.bysj.ecs.pojo.UserCcsq;
import com.bysj.ecs.pojo.UserClbx;
import com.bysj.ecs.pojo.UserRcbx;

public interface UserCcsqService 
{
	//添加出差申请
	public void addCcsq(UserCcsq userCcsq);
	
	//查询本人的出差申请
    public ArrayList<UserCcsq> selectCcsq(String ccsq_sqr,String ccsq_delete);
    
    //删除本条出差申请
  	public boolean deleteCcsq(int ccsq_id);
  	
    //修改出差申请
  	public void updateCcsq(UserCcsq userCcsq);
  	
  	//查询出差申请
  	public UserCcsq selectoneCcsq(int ccsq_id);
  	
    //审批-出差申请-同意
  	public void agreeCcsq(UserCcsq userCcsq);
  	
  	//审批-出差申请-退回
  	public void returnCcsq(UserCcsq userCcsq);
  	

	//修改ccsq_delete为已删
	public void updateCcsqDelete(UserCcsq userCcsq);
	
	//查找本人ccsq_delete为"已删"的差旅报销
	public ArrayList<UserCcsq> selectNotDeleteCcsq(String ccsq_sqr,String ccsq_delete);

}

package com.bysj.ecs.service;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.springframework.transaction.annotation.Transactional;

import com.bysj.ecs.pojo.UserClbx;

public interface UserClbxService 
{
	//添加差旅报销
	public void addClbx(UserClbx userClbx) ;
	
	//查询本人的差旅报销
    public ArrayList<UserClbx> selectClbx(String clbx_sqr,String clbx_delete);
    
    //删除本条差旅报销
  	public boolean deleteClbx(int clbx_id);
  	
	//修改差旅报销
	public void updateClbx(UserClbx userClbx);
	
	//查询某条差旅报销
	public UserClbx selectoneClbx(int clbx_id);
	
	//审批-差旅报销-同意
	public void agreeClbx(UserClbx userClbx);
	
	//审批-差旅报销-退回
	public void returnClbx(UserClbx userClbx);
	
	//修改clbx_delete为已删
	public void updateClbxDelete(UserClbx userClbx);
	
	//查找本人clbx_delete为"已删"的差旅报销
	public ArrayList<UserClbx> selectNotDeleteClbx(String clbx_sqr,String clbx_delete);
  	
}

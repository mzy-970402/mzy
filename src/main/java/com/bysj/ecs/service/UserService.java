package com.bysj.ecs.service;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.bysj.ecs.pojo.User;
import com.bysj.ecs.pojo.UserClbx;
import com.bysj.ecs.pojo.UserInfo;

public interface UserService {

	ArrayList<UserInfo> getAllUsers();
	
	boolean removeUser(int id);
	
	//添加用户
	public void addUser(User user);
	
	//用户登录
	public User login(String user_name,String user_psw);
	
	
	
	//查询用户基本信息
	public User selectUserMessage(int user_id);
	
	//修改个人信息
	public void updateUserMessage(User user);
	
	//修改用户密码
	public void updateUserPsw(User user);
	
	//查询拥有审批功能的人
	public ArrayList<User> selectApproveUser(String user_position,String user_name);
}

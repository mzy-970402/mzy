package com.bysj.ecs.service.impl;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Insert;
import org.springframework.stereotype.Service;

import com.bysj.ecs.mapper.UserMapper;
import com.bysj.ecs.pojo.User;
import com.bysj.ecs.pojo.UserInfo;
import com.bysj.ecs.service.UserService;


@Service("userService")
public class UserServiceImpl implements UserService{

	private UserMapper userMapper;
	
	@Resource(name="userMapper")
	public void setUserMapper(UserMapper userMapper) {
		this.userMapper = userMapper;
	}

	public ArrayList<UserInfo> getAllUsers() {
		return userMapper.getAllUsers();
	}

	public boolean removeUser(int id) {
		
		return userMapper.removeUser(id);
	}

	//添加用户
	public void addUser(User user) {
		userMapper.addUser(user);
		
	}

	//用户登录
	public User login(String user_name, String user_psw) {
		return userMapper.login(user_name, user_psw);
	}
 


	//查询用户基本信息
	public User selectUserMessage(int user_id) {
		
		return userMapper.selectUserMessage(user_id);
	}
	
	
    //修改个人信息
	public void updateUserMessage(User user) {
		userMapper.updateUserMessage(user);
	}

	public void updateUserPsw(User user) {
		userMapper.updateUserPsw(user);
		
	}

	public ArrayList<User> selectApproveUser(String user_position,String user_name) {
		
		return userMapper.selectApproveUser(user_position,user_name);
	}

	
	
}

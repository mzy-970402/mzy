package com.bysj.ecs.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.bysj.ecs.pojo.User;
import com.bysj.ecs.pojo.UserInfo;
import com.bysj.ecs.pojo.UserJk;


public interface UserMapper {
	
	ArrayList<UserInfo> getAllUsers();

	boolean removeUser(int id);
	
	//添加用户
	@Insert("insert into t_user(user_name,user_psw,user_time,user_position,user_type_id) values (#{user_name},#{user_psw},#{user_time},#{user_position},#{user_type_id})")
	public void addUser(User user);
	
	//用户登录验证
	@Select("select * from t_user where user_name=#{user_name} and user_psw=#{user_psw}")
    public User login(@Param("user_name")String user_name,@Param("user_psw")String user_psw);
    
	
	//查询用户基本信息
	@Select("select * from t_user  where user_id=#{user_id}")
    public User selectUserMessage(int user_id);
	
	//修改个人信息
	@Update("update t_user set user_sex=#{user_sex},user_age=#{user_age},user_phone=#{user_phone},user_birthday=#{user_birthday},user_number=#{user_number},user_department=#{user_department},user_card=#{user_card},user_address=#{user_address},user_image=#{user_image} where user_id=#{user_id}")
	public void updateUserMessage(User user);
		
	//修改密码
	@Update("update t_user set user_psw=#{user_psw} where user_id=#{user_id}")
	public void updateUserPsw(User user);

	//查询拥有审批功能的人
	@Select("select * from t_user  where not user_position=#{user_position} and not user_name=#{user_name}")
	public ArrayList<User> selectApproveUser(@Param("user_position")String user_position,@Param("user_name")String user_name);
}

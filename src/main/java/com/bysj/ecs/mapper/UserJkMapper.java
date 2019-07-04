package com.bysj.ecs.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.bysj.ecs.pojo.UserClbx;
import com.bysj.ecs.pojo.UserHk;
import com.bysj.ecs.pojo.UserJk;
import com.bysj.ecs.pojo.UserRcbx;

public interface UserJkMapper 
{
	    //添加借款
		@Insert("insert into t_jk(jk_jkr,jk_jksy,jk_jkje,jk_spr,jk_state,jk_tjtime,jk_delete) values (#{jk_jkr},#{jk_jksy},#{jk_jkje},#{jk_spr},#{jk_state},#{jk_tjtime},#{jk_delete})")
		public void addJk(UserJk userJk);
		
		//查询本人的借款
		@Select("select * from t_jk where jk_jkr = #{jk_jkr} and jk_delete=#{jk_delete}")
		public ArrayList<UserJk> selectJk(@Param("jk_jkr")String jk_jkr,@Param("jk_delete")String jk_delete);
		
		//删除本条借款
		@Delete("delete from t_jk where jk_id=#{jk_id}")
		public boolean deleteJk(int jk_id);
		
		//修改借款
		@Update("update t_jk set jk_jkr=#{jk_jkr},jk_jksy=#{jk_jksy},jk_jkje=#{jk_jkje},jk_spr=#{jk_spr},jk_state=#{jk_state},jk_tjtime=#{jk_tjtime},jk_advice=#{jk_advice} where jk_id=#{jk_id}")
		public void updateJk(UserJk userJk);
		
		//查询某一条借款
		@Select("select * from t_jk where jk_id = #{jk_id}")
		public UserJk selectoneJk(int jk_id);
		
		//审批-同意
		@Update("update t_jk set jk_advice=#{jk_advice},jk_state=#{jk_state},jk_sptime=#{jk_sptime} where jk_id=#{jk_id}")
		public void agreeJk(UserJk userJk);
						
		//审批-退回
		@Update("update t_jk set jk_advice=#{jk_advice},jk_state=#{jk_state},jk_sptime=#{jk_sptime} where jk_id=#{jk_id}")
		public void returnJk(UserJk userJk);
		
		//修改jk_delete为已删
		@Update("update t_jk set jk_delete=#{jk_delete} where jk_id=#{jk_id}")
		public void updateJkDelete(UserJk userJk);
				
				
		//查找本人jk_delete为"已删"的差旅报销
		@Select("select * from t_jk where jk_jkr = #{jk_jkr} and jk_delete=#{jk_delete}")
		public ArrayList<UserJk> selectNotDeleteJk(@Param("jk_jkr")String jk_jkr,@Param("jk_delete")String jk_delete);
		
		
		

}

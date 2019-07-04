package com.bysj.ecs.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.bysj.ecs.pojo.UserCcsq;
import com.bysj.ecs.pojo.UserHk;
import com.bysj.ecs.pojo.UserJk;

public interface UserHkMapper 
{
	    //添加还款
		@Insert("insert into t_hk(hk_hkr,hk_sqrq,hk_sy,hk_hkje,hk_bz,hk_fj,hk_spr,hk_state,hk_tjtime,hk_delete) values (#{hk_hkr},#{hk_sqrq},#{hk_sy},#{hk_hkje},#{hk_bz},#{hk_fj},#{hk_spr},#{hk_state},#{hk_tjtime},#{hk_delete})")
		public void addHk(UserHk userHk);
		
		//查询本人的还款
		@Select("select * from t_hk where hk_hkr = #{hk_hkr} and hk_delete=#{hk_delete}")
		public ArrayList<UserHk> selectHk(@Param("hk_hkr")String hk_hkr,@Param("hk_delete")String hk_delete);
		
		//删除本条还款
		@Delete("delete from t_hk where hk_id=#{hk_id}")
		public boolean deleteHk(int hk_id);
		
		//修改还款
		@Update("update t_hk set hk_hkr=#{hk_hkr},hk_sqrq=#{hk_sqrq},hk_sy=#{hk_sy},hk_hkje=#{hk_hkje},hk_bz=#{hk_bz},hk_fj=#{hk_fj},hk_spr=#{hk_spr},hk_state=#{hk_state},hk_tjtime=#{hk_tjtime},hk_advice=#{hk_advice} where hk_id=#{hk_id}")
		public void updateHk(UserHk userHk);
		
		//查询某一条还款
		@Select("select * from t_hk where hk_id = #{hk_id}")
		public UserHk selectoneHk(int hk_id);
		
		//审批-同意
		@Update("update t_hk set hk_advice=#{hk_advice},hk_state=#{hk_state},hk_sptime=#{hk_sptime} where hk_id=#{hk_id}")
		public void agreeHk(UserHk userHk);
				
		//审批-退回
		@Update("update t_hk set hk_advice=#{hk_advice},hk_state=#{hk_state},hk_sptime=#{hk_sptime} where hk_id=#{hk_id}")
		public void returnHk(UserHk userHk);
		
		//修改hk_delete为已删
		@Update("update t_hk set hk_delete=#{hk_delete} where hk_id=#{hk_id}")
		public void updateHkDelete(UserHk userHk);
						
						
		//查找本人hk_delete为"已删"的差旅报销
		@Select("select * from t_hk where hk_hkr = #{hk_hkr} and hk_delete=#{hk_delete}")
		public ArrayList<UserHk> selectNotDeleteHk(@Param("hk_hkr")String hk_hkr,@Param("hk_delete")String hk_delete);
		

}

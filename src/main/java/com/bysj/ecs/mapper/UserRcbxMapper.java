package com.bysj.ecs.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.bysj.ecs.pojo.UserClbx;
import com.bysj.ecs.pojo.UserQj;
import com.bysj.ecs.pojo.UserRcbx;

public interface UserRcbxMapper {
	
	    //添加日常报销
		@Insert("insert into t_rcbx(rcbx_bxsy,rcbx_sqr,rcbx_sqlb,rcbx_je,rcbx_date,rcbx_fp,rcbx_bz,rcbx_spr,rcbx_state,rcbx_tjtime,rcbx_delete) values (#{rcbx_bxsy},#{rcbx_sqr},#{rcbx_sqlb},#{rcbx_je},#{rcbx_date},#{rcbx_fp},#{rcbx_bz},#{rcbx_spr},#{rcbx_state},#{rcbx_tjtime},#{rcbx_delete})")
		public void addRcbx(UserRcbx userRcbx);
		
		//查询本人的日常报销
		@Select("select * from t_rcbx where rcbx_sqr = #{rcbx_sqr} and rcbx_delete=#{rcbx_delete}")
		public ArrayList<UserRcbx> selectRcbx(@Param("rcbx_sqr")String rcbx_sqr,@Param("rcbx_delete")String rcbx_delete);
		
		//删除本条日常报销
		@Delete("delete from t_rcbx where rcbx_id=#{rcbx_id}")
		public boolean deleteRcbx(int rcbx_id);
		
		//修改日常报销
		@Update("update t_rcbx set rcbx_bxsy=#{rcbx_bxsy},rcbx_sqr=#{rcbx_sqr},rcbx_sqlb=#{rcbx_sqlb},rcbx_je=#{rcbx_je},rcbx_date=#{rcbx_date},rcbx_fp=#{rcbx_fp},rcbx_bz=#{rcbx_bz},rcbx_spr=#{rcbx_spr},rcbx_state=#{rcbx_state},rcbx_tjtime=#{rcbx_tjtime},rcbx_advice=#{rcbx_advice} where rcbx_id=#{rcbx_id}")
		public void updateRcbx(UserRcbx userRcbx);
		
		//查询某一条日常报销
		@Select("select * from t_rcbx where rcbx_id = #{rcbx_id}")
		public UserRcbx selectoneRcbx(int rcbx_id);
		
		//审批-同意
		@Update("update t_rcbx set rcbx_advice=#{rcbx_advice},rcbx_state=#{rcbx_state},rcbx_sptime=#{rcbx_sptime} where rcbx_id=#{rcbx_id}")
		public void agreeRcbx(UserRcbx userRcbx);
										
		//审批-退回
		@Update("update t_rcbx set rcbx_advice=#{rcbx_advice},rcbx_state=#{rcbx_state},rcbx_sptime=#{rcbx_sptime} where rcbx_id=#{rcbx_id}")
		public void returnRcbx(UserRcbx userRcbx);		
		
		//修改rcbx_delete为已删
		@Update("update t_rcbx set rcbx_delete=#{rcbx_delete} where rcbx_id=#{rcbx_id}")
		public void updateRcbxDelete(UserRcbx userRcbx);
		
		
		//查找本人clbx_delete为"已删"的差旅报销
		@Select("select * from t_rcbx where rcbx_sqr = #{rcbx_sqr} and rcbx_delete=#{rcbx_delete}")
		public ArrayList<UserRcbx> selectNotDeleteRcbx(@Param("rcbx_sqr")String rcbx_sqr,@Param("rcbx_delete")String rcbx_delete);

}

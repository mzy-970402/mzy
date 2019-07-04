package com.bysj.ecs.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.bysj.ecs.pojo.UserCcsq;
import com.bysj.ecs.pojo.UserClbx;
import com.bysj.ecs.pojo.UserJk;
import com.bysj.ecs.pojo.UserQj;

public interface UserQjMapper 
{
	    //添加请假
		@Insert("insert into t_qj(qj_qjlx,qj_sqr,qj_ks,qj_js,qj_qjts,qj_qjsy,qj_fj,qj_spr,qj_state,qj_tjtime,qj_delete) values (#{qj_qjlx},#{qj_sqr},#{qj_ks},#{qj_js},#{qj_qjts},#{qj_qjsy},#{qj_fj},#{qj_spr},#{qj_state},#{qj_tjtime},#{qj_delete})")
		public void addQj(UserQj userQj);
		
		//查询本人的请假
		@Select("select * from t_qj where qj_sqr = #{qj_sqr} and qj_delete=#{qj_delete}")
		public ArrayList<UserQj> selectQj(@Param("qj_sqr")String qj_sqr,@Param("qj_delete")String qj_delete);
		
		//删除本条请假
		@Delete("delete from t_qj where qj_id=#{qj_id}")
		public boolean deleteQj(int qj_id);
		
		
		//修改请假
		@Update("update t_qj set qj_sqr=#{qj_sqr},qj_qjlx=#{qj_qjlx},qj_ks=#{qj_ks},qj_js=#{qj_js},qj_qjts=#{qj_qjts},qj_qjsy=#{qj_qjsy},qj_fj=#{qj_fj},qj_spr=#{qj_spr},qj_state=#{qj_state},qj_tjtime=#{qj_tjtime},qj_advice=#{qj_advice} where qj_id=#{qj_id}")
		public void updateQj(UserQj userQj);
		
		//查询某一条差旅报销
		@Select("select * from t_qj where qj_id = #{qj_id}")
		public UserQj selectoneQj(int qj_id);
        
		//审批-同意
		@Update("update t_qj set qj_advice=#{qj_advice},qj_state=#{qj_state},qj_sptime=#{qj_sptime} where qj_id=#{qj_id}")
		public void agreeQj(UserQj userQj);
								
		//审批-退回
		@Update("update t_qj set qj_advice=#{qj_advice},qj_state=#{qj_state},qj_sptime=#{qj_sptime} where qj_id=#{qj_id}")
		public void returnQj(UserQj userQj);		
		
		//修改qj_delete为已删
		@Update("update t_qj set qj_delete=#{qj_delete} where qj_id=#{qj_id}")
		public void updateQjDelete(UserQj userQj);
										
										
		//查找本人qj_delete为"已删"的差旅报销
		@Select("select * from t_qj where qj_sqr = #{qj_sqr} and qj_delete=#{qj_delete}")
		public ArrayList<UserQj> selectNotDeleteQj(@Param("qj_sqr")String qj_sqr,@Param("qj_delete")String qj_delete);
}

package com.bysj.ecs.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.bysj.ecs.pojo.UserCcsq;
import com.bysj.ecs.pojo.UserClbx;
import com.bysj.ecs.pojo.UserHk;

public interface UserCcsqMapper 
{
	    //添加出差申请
		@Insert("insert into t_ccsq(ccsq_ccsy,ccsq_sqr,ccsq_cfrq,ccsq_fhrq,ccsq_cfd_province,ccsq_cfd_city,ccsq_cfd_district,ccsq_mdd_province,ccsq_mdd_city,ccsq_mdd_district,ccsq_ccry,ccsq_fylb,ccsq_jkje,ccsq_bz,ccsq_spr,ccsq_state,ccsq_tjtime,ccsq_delete) values (#{ccsq_ccsy},#{ccsq_sqr},#{ccsq_cfrq},#{ccsq_fhrq},#{ccsq_cfd_province},#{ccsq_cfd_city},#{ccsq_cfd_district},#{ccsq_mdd_province},#{ccsq_mdd_city},#{ccsq_mdd_district},#{ccsq_ccry},#{ccsq_fylb},#{ccsq_jkje},#{ccsq_bz},#{ccsq_spr},#{ccsq_state},#{ccsq_tjtime},#{ccsq_delete})")
		public void addCcsq(UserCcsq userCcsq);

		//查询本人的出差申请
		@Select("select * from t_ccsq where ccsq_sqr = #{ccsq_sqr} and ccsq_delete=#{ccsq_delete}")
		public ArrayList<UserCcsq> selectCcsq(@Param("ccsq_sqr")String ccsq_sqr,@Param("ccsq_delete")String ccsq_delete);
		
		//删除本条出差申请
		@Delete("delete from t_ccsq where ccsq_id=#{ccsq_id}")
		public boolean deleteCcsq(int ccsq_id);
		
		//修改出差申请
		@Update("update t_ccsq set ccsq_ccsy=#{ccsq_ccsy},ccsq_sqr=#{ccsq_sqr},ccsq_cfrq=#{ccsq_cfrq},ccsq_fhrq=#{ccsq_fhrq},ccsq_cfd_province=#{ccsq_cfd_province},ccsq_cfd_city=#{ccsq_cfd_city},ccsq_cfd_district=#{ccsq_cfd_district},ccsq_mdd_province=#{ccsq_mdd_province},ccsq_mdd_city=#{ccsq_mdd_city},ccsq_mdd_district=#{ccsq_mdd_district},ccsq_ccry=#{ccsq_ccry},ccsq_fylb=#{ccsq_fylb},ccsq_jkje=#{ccsq_jkje},ccsq_bz=#{ccsq_bz},ccsq_spr=#{ccsq_spr},ccsq_state=#{ccsq_state},ccsq_tjtime=#{ccsq_tjtime},ccsq_advice=#{ccsq_advice} where ccsq_id=#{ccsq_id}")
		public void updateCcsq(UserCcsq userCcsq);
		
		//查询某一条差旅报销
		@Select("select * from t_ccsq where ccsq_id = #{ccsq_id}")
		public UserCcsq selectoneCcsq(int ccsq_id);
		
		//审批-同意
		@Update("update t_ccsq set ccsq_advice=#{ccsq_advice},ccsq_state=#{ccsq_state},ccsq_sptime=#{ccsq_sptime} where ccsq_id=#{ccsq_id}")
		public void agreeCcsq(UserCcsq userCcsq);
		
		//审批-退回
		@Update("update t_ccsq set ccsq_advice=#{ccsq_advice},ccsq_state=#{ccsq_state},ccsq_sptime=#{ccsq_sptime} where ccsq_id=#{ccsq_id}")
		public void returnCcsq(UserCcsq userCcsq);
		
		//修改ccsq_delete为已删
		@Update("update t_ccsq set ccsq_delete=#{ccsq_delete} where ccsq_id=#{ccsq_id}")
		public void updateCcsqDelete(UserCcsq userCcsq);
								
								
		//查找本人ccsq_delete为"已删"的差旅报销
		@Select("select * from t_ccsq where ccsq_sqr = #{ccsq_sqr} and ccsq_delete=#{ccsq_delete}")
		public ArrayList<UserCcsq> selectNotDeleteCcsq(@Param("ccsq_sqr")String ccsq_sqr,@Param("ccsq_delete")String ccsq_delete);
		
}



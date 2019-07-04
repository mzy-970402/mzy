package com.bysj.ecs.mapper;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.bysj.ecs.pojo.UserClbx;


public interface UserClbxMapper {

	//添加差旅报销
	@Insert("insert into t_clbx(clbx_bxsy,clbx_sqr,clbx_sqlb,clbx_je,clbx_date,clbx_fp,clbx_bz,clbx_spr,clbx_state,clbx_tjtime,clbx_delete) values (#{clbx_bxsy},#{clbx_sqr},#{clbx_sqlb},#{clbx_je},#{clbx_date},#{clbx_fp},#{clbx_bz},#{clbx_spr},#{clbx_state},#{clbx_tjtime},#{clbx_delete})")
	public void addClbx(UserClbx userClbx);
	
	//查询本人的差旅报销
	@Select("select * from t_clbx where clbx_sqr = #{clbx_sqr} and clbx_delete=#{clbx_delete}")
	public ArrayList<UserClbx> selectClbx(@Param("clbx_sqr")String clbx_sqr,@Param("clbx_delete")String clbx_delete);
	
	//删除本条差旅报销
	@Delete("delete from t_clbx where clbx_id=#{clbx_id}")
	public boolean deleteClbx(int clbx_id);
	
	//修改差旅报销
	@Update("update t_clbx set clbx_bxsy=#{clbx_bxsy},clbx_sqr=#{clbx_sqr},clbx_sqlb=#{clbx_sqlb},clbx_je=#{clbx_je},clbx_date=#{clbx_date},clbx_fp=#{clbx_fp},clbx_bz=#{clbx_bz},clbx_spr=#{clbx_spr},clbx_state=#{clbx_state},clbx_tjtime=#{clbx_tjtime},clbx_advice=#{clbx_advice} where clbx_id=#{clbx_id}")
	public void updateClbx(UserClbx userClbx);
	
	//查询某一条差旅报销
	@Select("select * from t_clbx where clbx_id = #{clbx_id}")
	public UserClbx selectoneClbx(int clbx_id);
	
	//审批-同意
	@Update("update t_clbx set clbx_advice=#{clbx_advice},clbx_state=#{clbx_state},clbx_sptime=#{clbx_sptime} where clbx_id=#{clbx_id}")
	public void agreeClbx(UserClbx userClbx);
	
	//审批-退回
	@Update("update t_clbx set clbx_advice=#{clbx_advice},clbx_state=#{clbx_state},clbx_sptime=#{clbx_sptime} where clbx_id=#{clbx_id}")
	public void returnClbx(UserClbx userClbx);
	
	//修改clbx_delete为已删
	@Update("update t_clbx set clbx_delete=#{clbx_delete} where clbx_id=#{clbx_id}")
	public void updateClbxDelete(UserClbx userClbx);
	
	
	//查找本人clbx_delete为"已删"的差旅报销
	@Select("select * from t_clbx where clbx_sqr = #{clbx_sqr} and clbx_delete=#{clbx_delete}")
	public ArrayList<UserClbx> selectNotDeleteClbx(@Param("clbx_sqr")String clbx_sqr,@Param("clbx_delete")String clbx_delete);
}
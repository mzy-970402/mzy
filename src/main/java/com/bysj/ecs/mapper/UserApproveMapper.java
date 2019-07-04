package com.bysj.ecs.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.bysj.ecs.pojo.UserCcsq;
import com.bysj.ecs.pojo.UserClbx;
import com.bysj.ecs.pojo.UserHk;
import com.bysj.ecs.pojo.UserJk;
import com.bysj.ecs.pojo.UserQj;
import com.bysj.ecs.pojo.UserRcbx;

public interface UserApproveMapper 
{
	 //差旅报销-未审批
	 @Select("select * from t_clbx  where clbx_spr = #{clbx_spr} and clbx_state=#{clbx_state} and clbx_delete=#{clbx_delete}")
	 public ArrayList<UserClbx> selectClbxNotApproved(@Param("clbx_spr")String clbx_spr,@Param("clbx_state")String clbx_state,@Param("clbx_delete")String clbx_delete);
	 
	 //日常报销-未审批
	 @Select("select * from t_rcbx  where rcbx_spr = #{rcbx_spr} and rcbx_state=#{rcbx_state} and rcbx_delete=#{rcbx_delete}")
	 public ArrayList<UserRcbx> selectRcbxNotApproved(@Param("rcbx_spr")String rcbx_spr,@Param("rcbx_state")String rcbx_state,@Param("rcbx_delete")String rcbx_delete);
	 
	 //出差申请-未审批
	 @Select("select * from t_ccsq  where ccsq_spr = #{ccsq_spr} and ccsq_state=#{ccsq_state} and ccsq_delete=#{ccsq_delete}")
	 public ArrayList<UserCcsq> selectCcsqNotApproved(@Param("ccsq_spr")String ccsq_spr,@Param("ccsq_state")String ccsq_state,@Param("ccsq_delete")String ccsq_delete);
	 
	 //借款-未审批
     @Select("select * from t_jk  where jk_spr = #{jk_spr} and jk_state=#{jk_state} and jk_delete=#{jk_delete}")
	 public ArrayList<UserJk> selectJkNotApproved(@Param("jk_spr")String jk_spr,@Param("jk_state")String jk_state,@Param("jk_delete")String jk_delete);
     
     //还款-未审批
     @Select("select * from t_hk  where hk_spr = #{hk_spr} and hk_state=#{hk_state} and hk_delete=#{hk_delete}")
	 public ArrayList<UserHk> selectHkNotApproved(@Param("hk_spr")String hk_spr,@Param("hk_state")String hk_state,@Param("hk_delete")String hk_delete);
     
	 //请假-未审批
     @Select("select * from t_qj  where qj_spr = #{qj_spr} and qj_state=#{qj_state} and qj_delete=#{qj_delete}")
	 public ArrayList<UserQj> selectQjNotApproved(@Param("qj_spr")String qj_spr,@Param("qj_state")String qj_state,@Param("qj_delete")String qj_delete);


//----------------------------------------------------------------------------------------------------------------------------------
     
     
     //差旅报销-已审批-同意
   	 @Select("select * from t_clbx  where clbx_spr = #{clbx_spr} and clbx_state=#{clbx_state}")
   	 public ArrayList<UserClbx> selectClbxApprovedAgree(@Param("clbx_spr")String clbx_spr,@Param("clbx_state")String clbx_state);
   	 
     //差旅报销-已审批-退回
   	 @Select("select * from t_clbx  where clbx_spr = #{clbx_spr} and clbx_state=#{clbx_state}")
  	 public ArrayList<UserClbx> selectClbxApproveReturn(@Param("clbx_spr")String clbx_spr,@Param("clbx_state")String clbx_state);
  
   	 
     //日常报销-已审批-同意
   	 @Select("select * from t_rcbx  where rcbx_spr = #{rcbx_spr} and rcbx_state=#{rcbx_state}")
   	 public ArrayList<UserRcbx> selectRcbxApprovedAgree(@Param("rcbx_spr")String rcbx_spr,@Param("rcbx_state")String rcbx_state);
   	 
     //日常报销-已审批-退回
   	 @Select("select * from t_rcbx  where rcbx_spr = #{rcbx_spr} and rcbx_state=#{rcbx_state}")
  	 public ArrayList<UserRcbx> selectRcbxApproveReturn(@Param("rcbx_spr")String rcbx_spr,@Param("rcbx_state")String rcbx_state);
   	 
     //出差申请-已审批-同意
   	 @Select("select * from t_ccsq  where ccsq_spr = #{ccsq_spr} and ccsq_state=#{ccsq_state}")
   	 public ArrayList<UserCcsq> selectCcsqApprovedAgree(@Param("ccsq_spr")String ccsq_spr,@Param("ccsq_state")String ccsq_state);
   	 
     //出差申请-已审批-退回
   	 @Select("select * from t_ccsq  where ccsq_spr = #{ccsq_spr} and ccsq_state=#{ccsq_state}")
  	 public ArrayList<UserCcsq> selectCcsqApproveReturn(@Param("ccsq_spr")String ccsq_spr,@Param("ccsq_state")String ccsq_state);
   	 
     //借款-已审批-同意
   	 @Select("select * from t_jk  where jk_spr = #{jk_spr} and jk_state=#{jk_state}")
   	 public ArrayList<UserJk> selectJkApprovedAgree(@Param("jk_spr")String jk_spr,@Param("jk_state")String jk_state);
   	 
     //借款-已审批-退回
   	 @Select("select * from t_jk  where jk_spr = #{jk_spr} and jk_state=#{jk_state}")
  	 public ArrayList<UserJk> selectJkApproveReturn(@Param("jk_spr")String jk_spr,@Param("jk_state")String jk_state);
   	 
     //还款-已审批-同意
   	 @Select("select * from t_hk  where hk_spr = #{hk_spr} and hk_state=#{hk_state}")
   	 public ArrayList<UserHk> selectHkApprovedAgree(@Param("hk_spr")String hk_spr,@Param("hk_state")String hk_state);
   	 
     //还款-已审批-退回
   	 @Select("select * from t_hk  where hk_spr = #{hk_spr} and hk_state=#{hk_state}")
  	 public ArrayList<UserHk> selectHkApproveReturn(@Param("hk_spr")String hk_spr,@Param("hk_state")String hk_state);

     //请假-已审批-同意
   	 @Select("select * from t_qj  where qj_spr = #{qj_spr} and qj_state=#{qj_state}")
   	 public ArrayList<UserQj> selectQjApprovedAgree(@Param("qj_spr")String qj_spr,@Param("qj_state")String qj_state);
   	 
     //请假-已审批-退回
   	 @Select("select * from t_qj  where qj_spr = #{qj_spr} and qj_state=#{qj_state}")
  	 public ArrayList<UserQj> selectQjApproveReturn(@Param("qj_spr")String qj_spr,@Param("qj_state")String qj_state);


}

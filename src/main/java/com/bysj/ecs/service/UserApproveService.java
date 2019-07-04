package com.bysj.ecs.service;

import java.util.ArrayList;

import com.bysj.ecs.pojo.UserCcsq;
import com.bysj.ecs.pojo.UserClbx;
import com.bysj.ecs.pojo.UserHk;
import com.bysj.ecs.pojo.UserJk;
import com.bysj.ecs.pojo.UserQj;
import com.bysj.ecs.pojo.UserRcbx;

public interface UserApproveService 
{
	//差旅报销-未审批
    public ArrayList<UserClbx> selectClbxNotApproved(String clbx_spr,String clbx_state,String clbx_delete);
    
    //日常报销-未审批
    public ArrayList<UserRcbx> selectRcbxNotApproved(String rcbx_spr,String rcbx_state,String rcbx_delete);
    
    //出差申请-未审批
    public ArrayList<UserCcsq> selectCcsqNotApproved(String ccsq_spr,String ccsq_state,String ccsq_delete);
    
    //借款-未审批
    public ArrayList<UserJk> selectJkNotApproved(String jk_spr,String jk_state,String jk_delete);
    
    //还款-未审批
    public ArrayList<UserHk> selectHkNotApproved(String hk_spr,String hk_state,String hk_delete);
    
    //请假-未审批
    public ArrayList<UserQj> selectQjNotApproved(String qj_spr,String qj_state,String qj_delete);
    
    
    
    
    
    
    
    
    
    
    //差旅报销-已审批-同意
    public ArrayList<UserClbx> selectClbxApprovedAgree(String clbx_spr,String clbx_state);
    
    //差旅报销-已审批-退回
    public ArrayList<UserClbx> selectClbxApprovedReturn(String clbx_spr,String clbx_state);
    
    //日常报销-已审批-同意
    public ArrayList<UserRcbx> selectRcbxApprovedAgree(String rcbx_spr,String rcbx_state);
    
    //日常报销-已审批-退回
    public ArrayList<UserRcbx> selectRcbxApprovedReturn(String rcbx_spr,String rcbx_state);
    
    //出差申请-已审批-同意
    public ArrayList<UserCcsq> selectCcsqApprovedAgree(String ccsq_spr,String ccsq_state);
    
    //出差申请-已审批-退回
    public ArrayList<UserCcsq> selectCcsqApprovedReturn(String ccsq_spr,String ccsq_state);
    
    //借款-已审批-同意
    public ArrayList<UserJk> selectJkApprovedAgree(String jk_spr,String jk_state);
    
    //借款-已审批-退回
    public ArrayList<UserJk> selectJkApprovedReturn(String jk_spr,String jk_state);
    
    //还款-已审批-同意
    public ArrayList<UserHk> selectHkApprovedAgree(String hk_spr,String hk_state);
    
    //还款-已审批-退回
    public ArrayList<UserHk> selectHkApprovedReturn(String hk_spr,String hk_state);
    
    //请假-已审批-同意
    public ArrayList<UserQj> selectQjApprovedAgree(String qj_spr,String qj_state);
    
    //请假-已审批-退回
    public ArrayList<UserQj> selectQjApprovedReturn(String qj_spr,String qj_state);
    
 
    
}

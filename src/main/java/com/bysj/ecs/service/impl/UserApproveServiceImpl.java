package com.bysj.ecs.service.impl;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bysj.ecs.mapper.UserApproveMapper;
import com.bysj.ecs.pojo.UserCcsq;
import com.bysj.ecs.pojo.UserClbx;
import com.bysj.ecs.pojo.UserHk;
import com.bysj.ecs.pojo.UserJk;
import com.bysj.ecs.pojo.UserQj;
import com.bysj.ecs.pojo.UserRcbx;
import com.bysj.ecs.service.UserApproveService;

@Service("userApproveService")
public class UserApproveServiceImpl implements UserApproveService{

	 private UserApproveMapper userApproveMapper;
	    
	    @Resource(name="userApproveMapper")
		public void setUserApproveMapper(UserApproveMapper userApproveMapper) {
			this.userApproveMapper = userApproveMapper;
		}

	//差旅报销-未审批
	public ArrayList<UserClbx> selectClbxNotApproved(String clbx_spr, String clbx_state,String clbx_delete) {
		return userApproveMapper.selectClbxNotApproved(clbx_spr, clbx_state,clbx_delete);
	}

    //日常报销-未审批
	public ArrayList<UserRcbx> selectRcbxNotApproved(String rcbx_spr, String rcbx_state,String rcbx_delete) {
		return userApproveMapper.selectRcbxNotApproved(rcbx_spr, rcbx_state,rcbx_delete);
	}

	//出差申请-未审批
	public ArrayList<UserCcsq> selectCcsqNotApproved(String ccsq_spr, String ccsq_state,String ccsq_delete) {
		return userApproveMapper.selectCcsqNotApproved(ccsq_spr, ccsq_state,ccsq_delete);
	}

	//借款-未审批
	public ArrayList<UserJk> selectJkNotApproved(String jk_spr, String jk_state,String jk_delete) {
		return userApproveMapper.selectJkNotApproved(jk_spr, jk_state,jk_delete);
	}

	//还款-未审批
	public ArrayList<UserHk> selectHkNotApproved(String hk_spr, String hk_state,String hk_delete) {
		return userApproveMapper.selectHkNotApproved(hk_spr, hk_state,hk_delete);
	}

	//请假-未审批
	public ArrayList<UserQj> selectQjNotApproved(String qj_spr, String qj_state,String qj_delete) {
		return userApproveMapper.selectQjNotApproved(qj_spr, qj_state,qj_delete);
	}
	
	
	
	
	
	//差旅报销 -已审批-同意
		public ArrayList<UserClbx> selectClbxApprovedAgree(String clbx_spr, String clbx_state) {
			return userApproveMapper.selectClbxApprovedAgree(clbx_spr, clbx_state);
		}
	  
		//差旅报销-已审批-退回
		public ArrayList<UserClbx> selectClbxApprovedReturn(String clbx_spr, String clbx_state){ 
			return userApproveMapper.selectClbxApproveReturn(clbx_spr, clbx_state);
		}

		public ArrayList<UserRcbx> selectRcbxApprovedAgree(String rcbx_spr, String rcbx_state) {
			return userApproveMapper.selectRcbxApprovedAgree(rcbx_spr, rcbx_state);
		}

		public ArrayList<UserRcbx> selectRcbxApprovedReturn(String rcbx_spr, String rcbx_state) {
			return userApproveMapper.selectRcbxApproveReturn(rcbx_spr, rcbx_state);
		}

		public ArrayList<UserCcsq> selectCcsqApprovedAgree(String ccsq_spr, String ccsq_state) {
			return userApproveMapper.selectCcsqApprovedAgree(ccsq_spr, ccsq_state);
		}

		public ArrayList<UserCcsq> selectCcsqApprovedReturn(String ccsq_spr, String ccsq_state) {
			return userApproveMapper.selectCcsqApproveReturn(ccsq_spr, ccsq_state);
		}

		public ArrayList<UserJk> selectJkApprovedAgree(String jk_spr, String jk_state) {
			return userApproveMapper.selectJkApprovedAgree(jk_spr, jk_state);
		}

		public ArrayList<UserJk> selectJkApprovedReturn(String jk_spr, String jk_state) {
			return userApproveMapper.selectJkApproveReturn(jk_spr, jk_state);
		}

		public ArrayList<UserHk> selectHkApprovedAgree(String hk_spr, String hk_state) {
			return userApproveMapper.selectHkApprovedAgree(hk_spr, hk_state);
		}

		public ArrayList<UserHk> selectHkApprovedReturn(String hk_spr, String hk_state) {
			return userApproveMapper.selectHkApproveReturn(hk_spr, hk_state);
		}

		public ArrayList<UserQj> selectQjApprovedAgree(String qj_spr, String qj_state) {
			return userApproveMapper.selectQjApprovedAgree(qj_spr, qj_state);
		}

		public ArrayList<UserQj> selectQjApprovedReturn(String qj_spr, String qj_state) {
			return userApproveMapper.selectQjApproveReturn(qj_spr, qj_state);
		}

}

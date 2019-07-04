package com.bysj.ecs.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bysj.ecs.mapper.UserChartMapper;
import com.bysj.ecs.mapper.UserClbxMapper;
import com.bysj.ecs.service.UserChartService;
import com.bysj.ecs.service.UserClbxService;

@Service("userChartService")
public class UserChartServiceImpl implements UserChartService{

private UserChartMapper userChartMapper;
    
    @Resource(name="userChartMapper")
	public void setUserChartMapper(UserChartMapper userChartMapper) {
		this.userChartMapper = userChartMapper;
	}

	public int selectClbxSum(String clbx_sqr) {
		
		return userChartMapper.selectClbxSum(clbx_sqr);
	}

	public int selectRcbxSum(String rcbx_sqr) {
		return userChartMapper.selectRcbxSum(rcbx_sqr);
	}

	public int selectCcsqSum(String ccsq_sqr) {
		return userChartMapper.selectCcsqSum(ccsq_sqr);
	}

	public int selectJkSum(String jk_jkr) {
		return userChartMapper.selectJkSum(jk_jkr);
	}

	public int selectHkSum(String hk_hkr) {
		return userChartMapper.selectHkSum(hk_hkr);
	}
    

}

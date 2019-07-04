package com.bysj.ecs.service;

public interface UserChartService 
{
	//查询差旅报销总额
    public int selectClbxSum(String clbx_sqr);
    
  //查询日常报销总额
    public int selectRcbxSum(String rcbx_sqr);
    
  //查询出差申请总额
    public int selectCcsqSum(String ccsq_sqr);
    
  //查询借款总额
    public int selectJkSum(String jk_jkr);
    
  //查询还款总额
    public int selectHkSum(String hk_hkr);

}

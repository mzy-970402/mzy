package com.bysj.ecs.mapper;


import org.apache.ibatis.annotations.Select;


public interface UserChartMapper
{
	   //查询差旅报销金额总和
	   @Select("select ifnull(SUM(clbx_je),0) from t_clbx where clbx_sqr = #{clbx_sqr} and clbx_delete='未删'")
	   public int selectClbxSum(String clbx_sqr);
	
	    //查询日常报销金额总和
		@Select("select ifnull(SUM(rcbx_je),0) from t_rcbx where rcbx_sqr = #{rcbx_sqr} and rcbx_delete='未删'")
		public int selectRcbxSum(String rcbx_sqr);
		
		//查询出差申请金额总和
		@Select("select ifnull(SUM(ccsq_jkje),0) from t_ccsq where ccsq_sqr = #{ccsq_sqr} and ccsq_delete='未删'")
		public int selectCcsqSum(String ccsq_sqr);
		
		//查询借款金额总和
		@Select("select ifnull(SUM(jk_jkje),0) from t_jk where jk_jkr = #{jk_jkr} and jk_delete='未删'")
		public int selectJkSum(String jk_jkr);
		
		//查询还款金额总和
		@Select("select ifnull(SUM(hk_hkje),0) from t_hk where hk_hkr = #{hk_hkr} and hk_delete='未删'")
		public int selectHkSum(String hk_hkr);
		
		
}

package com.bysj.ecs.mapper;

import org.apache.ibatis.annotations.Select;

import com.bysj.ecs.pojo.BudgetType;
import com.bysj.ecs.pojo.Department;

public interface AdminYuSuanMapper 
{
	//第一季度-差旅报销-飞机
	@Select("select ifnull(SUM(clbx_je),0) From t_clbx Where DATE_FORMAT(clbx_date,'%m-%d') >= '01-01' and DATE_FORMAT(clbx_date,'%m-%d') <= '03-31' and year(clbx_date) = year(curdate())and t_clbx.clbx_sqlb='飞机'")
	public long SelectQuarterOneClbxFjSum();
	
	//第一季度-日常报销-飞机
	@Select("select ifnull(SUM(rcbx_je),0) From t_rcbx Where DATE_FORMAT(rcbx_date,'%m-%d') >= '01-01' and DATE_FORMAT(rcbx_date,'%m-%d') <= '03-31' and year(rcbx_date) = year(curdate())and t_rcbx.rcbx_sqlb='飞机'")
	public long SelectQuarterOneRcbxFjSum();
	
	//第一季度-出差申请-飞机
	@Select("select ifnull(SUM(ccsq_jkje),0) From t_ccsq Where DATE_FORMAT(ccsq_cfrq,'%m-%d') >= '01-01' and DATE_FORMAT(ccsq_cfrq,'%m-%d') <= '03-31' and year(ccsq_cfrq) = year(curdate())and t_ccsq.ccsq_fylb='飞机'")
	public long SelectQuarterOneCcsqFjSum();
	
	//第二季度-差旅报销-飞机
	@Select("select ifnull(SUM(clbx_je),0) From t_clbx Where DATE_FORMAT(clbx_date,'%m-%d') >= '04-01' and DATE_FORMAT(rcbx_date,'%m-%d') <= '06-30' and year(clbx_date) = year(curdate())and t_clbx.clbx_sqlb='飞机'")
	public long SelectQuarterTwoClbxFjSum();
		
	//第二季度-日常报销-飞机
	@Select("select ifnull(SUM(rcbx_je),0) From t_rcbx Where DATE_FORMAT(rcbx_date,'%m-%d') >= '04-01' and DATE_FORMAT(rcbx_date,'%m-%d') <= '06-30' and year(rcbx_date) = year(curdate())and t_rcbx.rcbx_sqlb='飞机'")
	public long SelectQuarterTwoRcbxFjSum();
		
	//第二季度-出差申请-飞机
	@Select("select ifnull(SUM(ccsq_jkje),0) From t_ccsq Where DATE_FORMAT(ccsq_cfrq,'%m-%d') >= '04-01' and DATE_FORMAT(ccsq_cfrq,'%m-%d') <= '06-30' and year(ccsq_cfrq) = year(curdate())and t_ccsq.ccsq_fylb='飞机'")
	public long SelectQuarterTwoCcsqFjSum();
	
	//第三季度-差旅报销-飞机
	@Select("select ifnull(SUM(clbx_je),0) From t_clbx Where DATE_FORMAT(clbx_date,'%m-%d') >= '07-01' and DATE_FORMAT(rcbx_date,'%m-%d') <= '09-30' and year(clbx_date) = year(curdate())and t_clbx.clbx_sqlb='飞机'")
	public long SelectQuarterThreeClbxFjSum();
		
	//第三季度-日常报销-飞机
	@Select("select ifnull(SUM(rcbx_je),0) From t_rcbx Where DATE_FORMAT(rcbx_date,'%m-%d') >= '07-01' and DATE_FORMAT(rcbx_date,'%m-%d') <= '09-30' and year(rcbx_date) = year(curdate())and t_rcbx.rcbx_sqlb='飞机'")
	public long SelectQuarterThreeRcbxFjSum();
		
	//第四季度-出差申请-飞机
	@Select("select ifnull(SUM(ccsq_jkje),0) From t_ccsq Where DATE_FORMAT(ccsq_cfrq,'%m-%d') >= '07-01' and DATE_FORMAT(ccsq_cfrq,'%m-%d') <= '09-30' and year(ccsq_cfrq) = year(curdate())and t_ccsq.ccsq_fylb='飞机'")
	public long SelectQuarterThreeCcsqFjSum();	
	
	//第四季度-差旅报销-飞机
	@Select("select ifnull(SUM(clbx_je),0) From t_clbx Where DATE_FORMAT(clbx_date,'%m-%d') >= '10-01' and DATE_FORMAT(rcbx_date,'%m-%d') <= '12-31' and year(clbx_date) = year(curdate())and t_clbx.clbx_sqlb='飞机'")
	public long SelectQuarterFourClbxFjSum();
		
	//第四季度-日常报销-飞机
	@Select("select ifnull(SUM(rcbx_je),0) From t_rcbx Where DATE_FORMAT(rcbx_date,'%m-%d') >= '10-01' and DATE_FORMAT(rcbx_date,'%m-%d') <= '12-31' and year(rcbx_date) = year(curdate())and t_rcbx.rcbx_sqlb='飞机'")
	public long SelectQuarterFourRcbxFjSum();
		
	//第四季度-出差申请-飞机
	@Select("select ifnull(SUM(ccsq_jkje),0) From t_ccsq Where DATE_FORMAT(ccsq_cfrq,'%m-%d') >= '10-01' and DATE_FORMAT(ccsq_cfrq,'%m-%d') <= '12-31' and year(ccsq_cfrq) = year(curdate())and t_ccsq.ccsq_fylb='飞机'")
	public long SelectQuarterFourCcsqFjSum();	

	
//--------------------------------------------------------------------
	//当前季度-差旅报销
	@Select("select ifnull(SUM(clbx_je),0) from `t_clbx` where QUARTER(clbx_date)=QUARTER(now()) and clbx_sqlb=#{clbx_sqlb} and  year(clbx_date)=year(now())")
	public long SelectQuarterClbxSum(String clbx_sqlb);
	
	//当前季度-日常报销
	@Select("select ifnull(SUM(rcbx_je),0) from `t_rcbx` where QUARTER(rcbx_date)=QUARTER(now()) and rcbx_sqlb=#{rcbx_sqlb} and year(rcbx_date)=year(now())")
	public long SelectQuarterRcbxSum(String rcbx_sqlb);
	
	//当前季度-出差申请
	@Select("select ifnull(SUM(ccsq_jkje),0) from `t_ccsq` where QUARTER(ccsq_cfrq)=QUARTER(now()) and ccsq_fylb=#{ccsq_fylb} and  year(ccsq_cfrq)=year(now())")
	public long SelectQuarterCcsqSum(String ccsq_fylb);
	
	//当前季度-借款
	@Select("select ifnull(SUM(jk_jkje),0) from `t_jk` where QUARTER(jk_tjtime)=QUARTER(now()) and  year(jk_tjtime)=year(now())")
	public long SelectQuarterJkSum();
	
	//查询预算
	@Select("select * from t_budget_type where budget_type_name = #{budget_type_name}")
	public BudgetType selectBudgetType(String budget_type_name);
	
//---------------------------------------------------------------------------------------
	//当前年度-差旅报销
	@Select("select ifnull(SUM(clbx_je),0) From t_clbx where clbx_sqlb=#{clbx_sqlb} and year(clbx_date)=year(now());")
    public long SelectYearClbxSum(String clbx_sqlb);
	
	//当前年度-差旅报销
	@Select("select ifnull(SUM(rcbx_je),0) From t_rcbx where rcbx_sqlb=#{rcbx_sqlb} and year(rcbx_date)=year(now());")
	public long SelectYearRcbxSum(String rcbx_sqlb);
	
	//当前年度-出差申请
	@Select("select ifnull(SUM(ccsq_jkje),0) from t_ccsq where ccsq_fylb=#{ccsq_fylb} and year(ccsq_cfrq)=year(now());")
	public long SelectYearCcsqSum(String ccsq_fylb);
	
//-------------------------------------------------
	//部门查询-季度-差旅报销
	@Select("select ifnull(SUM(clbx_je),0) From t_user,t_clbx where t_user.user_department=#{user_department} and t_user.user_name=t_clbx.clbx_sqr and QUARTER(clbx_date)=QUARTER(now()) and year(clbx_date)=year(now())")
    public long SelectQuarterDeClbxSum(String user_department);
	
	//部门查询-季度-日常报销
	@Select("select ifnull(SUM(rcbx_je),0) From t_user,t_rcbx where t_user.user_department=#{user_department} and t_user.user_name=t_rcbx.rcbx_sqr and QUARTER(rcbx_date)=QUARTER(now())  and  year(rcbx_date)=year(now())")
    public long SelectQuarterDeRcbxSum(String user_department);
	
	//部门查询-季度-出差申请
	@Select("select ifnull(SUM(ccsq_jkje),0) From t_user,t_ccsq where t_user.user_department=#{user_department} and t_user.user_name=t_ccsq.ccsq_sqr and QUARTER(ccsq_cfrq)=QUARTER(now()) and  year(ccsq_cfrq)=year(now())")
    public long SelectQuarterDeCcsqSum(String user_department);
	
	//部门查询-季度-借款
	@Select("select ifnull(SUM(jk_jkje),0) From t_user,t_jk where t_user.user_department=#{user_department} and t_user.user_name=t_jk.jk_jkr and QUARTER(jk_tjtime)=QUARTER(now()) and  year(jk_tjtime)=year(now())")
    public long SelectQuarterDeJkSum(String user_department);
	
	//查询预算
	@Select("select * from t_department where department_type = #{department_type}")
	public Department selectDepartmentType(String department_type);

//---年度------------------------------

	//部门查询-年度-差旅报销
	@Select("select ifnull(SUM(clbx_je),0) From t_user,t_clbx where t_user.user_department=#{user_department} and t_user.user_name=t_clbx.clbx_sqr and  year(clbx_date)=year(now())")
    public long SelectYearDeClbxSum(String user_department);
	
	//部门查询-年度-日常报销
	@Select("select ifnull(SUM(rcbx_je),0) From t_user,t_rcbx where t_user.user_department=#{user_department} and t_user.user_name=t_rcbx.rcbx_sqr and  year(rcbx_date)=year(now())")
    public long SelectYearDeRcbxSum(String user_department);
	
	//部门查询-年度-出差申请
	@Select("select ifnull(SUM(ccsq_jkje),0) From t_user,t_ccsq where t_user.user_department=#{user_department} and t_user.user_name=t_ccsq.ccsq_sqr and  year(ccsq_cfrq)=year(now())")
    public long SelectYearDeCcsqSum(String user_department);
	
	//部门查询-年度-借款
	@Select("select ifnull(SUM(jk_jkje),0) From t_user,t_jk where t_user.user_department=#{user_department} and t_user.user_name=t_jk.jk_jkr and  year(jk_tjtime)=year(now())")
    public long SelectYearDeJkSum(String user_department);
	
	
}

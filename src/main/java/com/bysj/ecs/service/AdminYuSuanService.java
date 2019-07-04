package com.bysj.ecs.service;

import org.apache.ibatis.annotations.Select;

import com.bysj.ecs.pojo.BudgetType;
import com.bysj.ecs.pojo.Department;

public interface AdminYuSuanService 
{
	//第一季度-差旅报销-飞机
		public long SelectQuarterOneClbxFjSum();
		
		//第一季度-日常报销-飞机
		public long SelectQuarterOneRcbxFjSum();
		
		//第一季度-出差申请-飞机
		public long SelectQuarterOneCcsqFjSum();
		
		//第二季度-差旅报销-飞机
		public long SelectQuarterTwoClbxFjSum();
			
		//第二季度-日常报销-飞机
		public long SelectQuarterTwoRcbxFjSum();
			
		//第二季度-出差申请-飞机
		public long SelectQuarterTwoCcsqFjSum();
		
		//第三季度-差旅报销-飞机
		public long SelectQuarterThreeClbxFjSum();
			
		//第三季度-日常报销-飞机
		public long SelectQuarterThreeRcbxFjSum();
			
		//第四季度-出差申请-飞机
		public long SelectQuarterThreeCcsqFjSum();	
		
		//第四季度-差旅报销-飞机
		public long SelectQuarterFourClbxFjSum();
			
		//第四季度-日常报销-飞机
		public long SelectQuarterFourRcbxFjSum();
			
		//第四季度-出差申请-飞机
		public long SelectQuarterFourCcsqFjSum();	
		
//----------------------------------------------------------------
		//当前季度-差旅报销
		public long SelectQuarterClbxSum(String clbx_sqlb);
		
		//当前季度-日常报销
		public long SelectQuarterRcbxSum(String rcbx_sqlb);
		
		//当前季度-出差申请
		public long SelectQuarterCcsqSum(String ccsq_fylb);
		
		//查询预算
		public BudgetType selectBudgetType(String budget_type_name);

		//当前年度-差旅报销
	    public long SelectYearClbxSum(String clbx_sqlb);
		
		//当前年度-差旅报销
		public long SelectYearRcbxSum(String rcbx_sqlb);
		
		//当前年度-出差申请
		public long SelectYearCcsqSum(String ccsq_fylb);
		
		//当前季度-借款
		public long SelectQuarterJkSum();
		
		//部门查询-季度-差旅报销
	    public long SelectQuarterDeClbxSum(String user_department);
		
		//部门查询-季度-日常报销
	    public long SelectQuarterDeRcbxSum(String user_department);
		
		//部门查询-季度-出差申请
	    public long SelectQuarterDeCcsqSum(String user_department);
		
		//部门查询-季度-借款
	    public long SelectQuarterDeJkSum(String user_department);
		
		//查询预算
		public Department selectDepartmentType(String department_type);
		
		//部门查询-年度-差旅报销
	    public long SelectYearDeClbxSum(String user_department);
		
		//部门查询-年度-日常报销
	    public long SelectYearDeRcbxSum(String user_department);
		
		//部门查询-年度-出差申请
	    public long SelectYearDeCcsqSum(String user_department);
		
		//部门查询-年度-借款
	    public long SelectYearDeJkSum(String user_department);
		

}

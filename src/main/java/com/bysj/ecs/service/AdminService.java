package com.bysj.ecs.service;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.bysj.ecs.pojo.BudgetType;
import com.bysj.ecs.pojo.Department;
import com.bysj.ecs.pojo.LeaveDay;
import com.bysj.ecs.pojo.Position;
import com.bysj.ecs.pojo.User;
import com.bysj.ecs.pojo.UserCcsq;
import com.bysj.ecs.pojo.UserClbx;
import com.bysj.ecs.pojo.UserHk;
import com.bysj.ecs.pojo.UserJk;
import com.bysj.ecs.pojo.UserQj;
import com.bysj.ecs.pojo.UserRcbx;
import com.bysj.ecs.pojo.UserType;

public interface AdminService {

	//查询所有用户
    public ArrayList<User> selectUser();
    
    public User selectOneUser(int user_id);

    //查询职位
    public ArrayList<Position> selectPosition();
    
    //查询部门
    public ArrayList<Department> selectDepartment();
    
    //查询角色
    public ArrayList<UserType> selectType();
    
  //修改用户信息
  	public void updateUserMessage(User user);
  	
  	
  //删除用户
  	public boolean deleteUser(int user_id);

  //添加用户
  	public void insertUser(User user);
  	
  //删除部门
  	public boolean deleteDepartment(int department_id);
  	
  	
  //删除职位
  	public boolean deletePosition(int position_id);
  	
  	//添加职位
  	public void insertPosition(Position position);
  	
  	//添加部门
  	public void insertDepartment(Department department);
  	
  	//修改用户角色
  	public void updateUserType(User user);
  	
	
  //查询预算-费用类别
  	public ArrayList<BudgetType> selectBudgetType();
  	
  	//查询某一个预算-费用类别
  	public BudgetType selectOneBudgetType(int budget_type_id);
  	
  	//修改某一个预算-费用类别-季度
      public void updateBudgetTypeQuarter(BudgetType budgetType);
  	
  	//修改某一个预算-费用类别-年度
  	public void updateBudgetTypeYear(BudgetType budgetType);
  	
  //查询某一个预算-部门类别
  	public Department selectOneDepartmentBudget(int department_id);
  		
  	//修改某一个预算-部门类别-季度
  	public void updateBudgetDepartmentQuarter(Department department);
  		
  	//修改某一个预算-费用类别-年度
  	public void updateBudgetDepartmentYear(Department department);
  	
  //查询请假天数
  	public ArrayList<LeaveDay> selectLeaveDay();
  	
  	//查询某一个请假天数
  	public LeaveDay selectOneLeaveDay(int leave_day_id);
  			
  	//修改某一个请假天数
  	public void updateLeaveDay(LeaveDay leaveDay);
  	
     //查询差旅报销
  	public ArrayList<UserClbx> selectUserClbx();
  	
  	
  //查询日常报销
  	public ArrayList<UserRcbx> selectUserRcbx();
  	
  	//查询出差申请
  	public ArrayList<UserCcsq> selectUserCcsq();
  	
  	//查询借款
  	public ArrayList<UserJk> selectUserJk();

  	//查询还款
  	public ArrayList<UserHk> selectUserHk();
  	
  	//查询请假
  	public ArrayList<UserQj> selectUserQj();
  	
    //添加差旅报销
  	public void AdminAddClbx(UserClbx userClbx);
  	
    //查询某一条差旅报销
  	public UserClbx AdminSelectOneClbx(int clbx_id);
  	
  //删除本条差旅报销
  	public boolean AdminDeleteOneClbx(int clbx_id);
  	
  //添加日常报销
  	public void AdminAddRcbx(UserRcbx userRcbx);
  	
  	//查询某一条日常报销
  	public UserRcbx AdminSelectOneRcbx(int rcbx_id);
  	
  	//删除本条日常报销
  	public boolean AdminDeleteOneRcbx(int rcbx_id);
  	
  	 //添加借款
  	public void AdminAddJk(UserJk userJk);
  	
    //查询某一条借款
  	public UserJk AdminSelectOneJk(int jk_id);
  	
    //删除本条借款
  	public boolean AdminDeleteOneJk(int jk_id);
  	
    //添加还款
  	public void AdminAddHk(UserHk userHk);
  	
    //查询某一条还款
  	public UserHk AdminSelectOneHk(int hk_id);
  	
    //删除本条还款
  	public boolean AdminDeleteOneHk(int hk_id);
  	
  	//添加出差申请
	public void AdminAddCcsq(UserCcsq userCcsq);
	
	//删除本条出差申请
	public boolean AdminDeleteOneCcsq(int ccsq_id);
	
	//查询某一条差旅报销
	public UserCcsq AdminSelectOneCcsq(int ccsq_id);
	
	 //添加请假
	public void AdminAddQj(UserQj userQj);
	
	//查询某一条差旅报销
	public UserQj AdminSelectOneQj(int qj_id);
  	
	//删除本条请假
	public boolean AdminDeleteOneQj(int qj_id);
	
	
	//查询差旅报销金额总和
	   public int AdminSelectClbxSum();
	
	    //查询日常报销金额总和
		public int AdminSelectRcbxSum();
		
		//查询出差申请金额总和
		public int AdminSelectCcsqSum();
		
		//查询借款金额总和
		public int AdminSelectJkSum();
		
		//查询还款金额总和
		public int AdminSelectHkSum();

		
		


}

package com.bysj.ecs.mapper;

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
import com.bysj.ecs.pojo.UserInfo;
import com.bysj.ecs.pojo.UserJk;
import com.bysj.ecs.pojo.UserQj;
import com.bysj.ecs.pojo.UserRcbx;
import com.bysj.ecs.pojo.UserType;

public interface AdminMapper 
{
	//查询所有用户
	ArrayList<User> selectUser();
	
	//查询某一个用户
	@Select("select * from t_user where user_id = #{user_id}")
	public User selectOneUser(int user_id);
	
	//查询职位
	@Select("select * from t_position")
	public ArrayList<Position> selectPosition();
	
	//查询部门
	@Select("select * from t_department")
	public ArrayList<Department> selectDepartment();
	
	@Select("select * from t_type")
	public ArrayList<UserType> selectType();
	
	//修改用户信息
	@Update("update t_user set user_name=#{user_name},user_psw=#{user_psw},user_sex=#{user_sex},user_age=#{user_age},user_phone=#{user_phone},user_birthday=#{user_birthday},user_department=#{user_department},user_position=#{user_position},user_card=#{user_card},user_address=#{user_address} where user_id=#{user_id}")
	public void updateUserMessage(User user);
	
	//删除用户
	@Delete("delete from t_user where user_id=#{user_id}")
	public boolean deleteUser(int user_id);
	
	
	//添加用户
	@Insert("insert into t_user(user_name,user_psw,user_time,user_sex,user_age,user_phone,user_birthday,user_number,user_department,user_position,user_card,user_address,user_type_id) values (#{user_name},#{user_psw},#{user_time},#{user_sex},#{user_age},#{user_phone},#{user_birthday},#{user_number},#{user_department},#{user_position},#{user_card},#{user_address},#{user_type_id})")
	public void insertUser(User user);
	
	//删除部门
	@Delete("delete from t_department where department_id=#{department_id}")
	public boolean deleteDepartment(int department_id);
	
	//删除职位
	@Delete("delete from t_position where position_id=#{position_id}")
	public boolean deletePosition(int position_id);
	
	//添加部门
	@Insert("insert into t_department(department_type) values (#{department_type})")
	public void insertDepartment(Department department);
	
	//添加职位
	@Insert("insert into t_position(position_type) values (#{position_type})")
	public void insertPosition(Position position);
	
	//修改用户角色
	@Update("update t_user set user_type_id=#{user_type_id} where user_id=#{user_id}")
    public void updateUserType(User user);
    
	//查询预算-费用类别
	@Select("select * from t_budget_type")
	public ArrayList<BudgetType> selectBudgetType();
	
	//查询某一个预算-费用类别
	@Select("select * from t_budget_type where budget_type_id = #{budget_type_id}")
	public BudgetType selectOneBudgetType(int budget_type_id);
	
	//修改某一个预算-费用类别-季度
	@Update("update t_budget_type set budget_type_one=#{budget_type_one},budget_type_two=#{budget_type_two},budget_type_three=#{budget_type_three},budget_type_four=#{budget_type_four} where budget_type_id=#{budget_type_id}")
    public void updateBudgetTypeQuarter(BudgetType budgetType);
	
	//修改某一个预算-费用类别-年度
	@Update("update t_budget_type set budget_type_year=#{budget_type_year} where budget_type_id=#{budget_type_id}")
	public void updateBudgetTypeYear(BudgetType budgetType);
	
	//查询某一个预算-部门类别
	@Select("select * from t_department where department_id = #{department_id}")
	public Department selectOneDepartmentBudget(int department_id);
		
	//修改某一个预算-部门类别-季度
	@Update("update t_department set department_budget_one=#{department_budget_one},department_budget_two=#{department_budget_two},department_budget_three=#{department_budget_three},department_budget_four=#{department_budget_four} where department_id=#{department_id}")
	public void updateBudgetDepartmentQuarter(Department department);
		
	//修改某一个预算-费用类别-年度
	@Update("update t_department set department_budget_year=#{department_budget_year} where department_id=#{department_id}")
	public void updateBudgetDepartmentYear(Department department);
	
	//查询请假天数
	@Select("select * from t_leave_day")
	public ArrayList<LeaveDay> selectLeaveDay();
	
	//查询某一个请假天数
	@Select("select * from t_leave_day where leave_day_id = #{leave_day_id}")
	public LeaveDay selectOneLeaveDay(int leave_day_id);
			
	//修改某一个请假天数
	@Update("update t_leave_day set leave_day_type=#{leave_day_type},leave_day_number=#{leave_day_number} where leave_day_id=#{leave_day_id}")
	public void updateLeaveDay(LeaveDay leaveDay);
	
	//查询差旅报销
	@Select("select * from t_clbx")
	public ArrayList<UserClbx> selectUserClbx();
	
	//查询日常报销
	@Select("select * from t_rcbx")
	public ArrayList<UserRcbx> selectUserRcbx();
	
	//查询出差申请
	@Select("select * from t_ccsq")
	public ArrayList<UserCcsq> selectUserCcsq();
	
	//查询借款
	@Select("select * from t_jk")
	public ArrayList<UserJk> selectUserJk();

	//查询还款
	@Select("select * from t_hk")
	public ArrayList<UserHk> selectUserHk();
	
	//查询请假
	@Select("select * from t_qj")
	public ArrayList<UserQj> selectUserQj();
	
	//添加差旅报销
	@Insert("insert into t_clbx(clbx_bxsy,clbx_sqr,clbx_sqlb,clbx_je,clbx_date,clbx_fp,clbx_bz,clbx_spr,clbx_state,clbx_tjtime,clbx_delete) values (#{clbx_bxsy},#{clbx_sqr},#{clbx_sqlb},#{clbx_je},#{clbx_date},#{clbx_fp},#{clbx_bz},#{clbx_spr},#{clbx_state},#{clbx_tjtime},#{clbx_delete})")
	public void AdminAddClbx(UserClbx userClbx);
	
	//查询某一条差旅报销
	@Select("select * from t_clbx where clbx_id = #{clbx_id}")
	public UserClbx AdminSelectOneClbx(int clbx_id);
	
	//删除本条差旅报销
	@Delete("delete from t_clbx where clbx_id=#{clbx_id}")
	public boolean AdminDeleteOneClbx(int clbx_id);
	
	 //添加日常报销
	@Insert("insert into t_rcbx(rcbx_bxsy,rcbx_sqr,rcbx_sqlb,rcbx_je,rcbx_date,rcbx_fp,rcbx_bz,rcbx_spr,rcbx_state,rcbx_tjtime,rcbx_delete) values (#{rcbx_bxsy},#{rcbx_sqr},#{rcbx_sqlb},#{rcbx_je},#{rcbx_date},#{rcbx_fp},#{rcbx_bz},#{rcbx_spr},#{rcbx_state},#{rcbx_tjtime},#{rcbx_delete})")
	public void AdminAddRcbx(UserRcbx userRcbx);
	
	//查询某一条日常报销
	@Select("select * from t_rcbx where rcbx_id = #{rcbx_id}")
	public UserRcbx AdminSelectOneRcbx(int rcbx_id);
	
	//删除本条日常报销
    @Delete("delete from t_rcbx where rcbx_id=#{rcbx_id}")
	public boolean AdminDeleteOneRcbx(int rcbx_id);
    
    //添加借款
  	@Insert("insert into t_jk(jk_jkr,jk_jksy,jk_jkje,jk_spr,jk_state,jk_tjtime,jk_delete) values (#{jk_jkr},#{jk_jksy},#{jk_jkje},#{jk_spr},#{jk_state},#{jk_tjtime},#{jk_delete})")
  	public void AdminAddJk(UserJk userJk);
  	
    //查询某一条借款
  	@Select("select * from t_jk where jk_id = #{jk_id}")
  	public UserJk AdminSelectOneJk(int jk_id);
  	
    //删除本条借款
  	@Delete("delete from t_jk where jk_id=#{jk_id}")
  	public boolean AdminDeleteOneJk(int jk_id);
  	
    //添加还款
  	@Insert("insert into t_hk(hk_hkr,hk_sqrq,hk_sy,hk_hkje,hk_bz,hk_fj,hk_spr,hk_state,hk_tjtime,hk_delete) values (#{hk_hkr},#{hk_sqrq},#{hk_sy},#{hk_hkje},#{hk_bz},#{hk_fj},#{hk_spr},#{hk_state},#{hk_tjtime},#{hk_delete})")
  	public void AdminAddHk(UserHk userHk);
  	
    //查询某一条还款
  	@Select("select * from t_hk where hk_id = #{hk_id}")
  	public UserHk AdminSelectOneHk(int hk_id);
  	
    //删除本条还款
  	@Delete("delete from t_hk where hk_id=#{hk_id}")
  	public boolean AdminDeleteOneHk(int hk_id);
  	
  	//添加出差申请
	@Insert("insert into t_ccsq(ccsq_ccsy,ccsq_sqr,ccsq_cfrq,ccsq_fhrq,ccsq_cfd_province,ccsq_cfd_city,ccsq_cfd_district,ccsq_mdd_province,ccsq_mdd_city,ccsq_mdd_district,ccsq_ccry,ccsq_fylb,ccsq_jkje,ccsq_bz,ccsq_spr,ccsq_state,ccsq_tjtime,ccsq_delete) values (#{ccsq_ccsy},#{ccsq_sqr},#{ccsq_cfrq},#{ccsq_fhrq},#{ccsq_cfd_province},#{ccsq_cfd_city},#{ccsq_cfd_district},#{ccsq_mdd_province},#{ccsq_mdd_city},#{ccsq_mdd_district},#{ccsq_ccry},#{ccsq_fylb},#{ccsq_jkje},#{ccsq_bz},#{ccsq_spr},#{ccsq_state},#{ccsq_tjtime},#{ccsq_delete})")
	public void AdminAddCcsq(UserCcsq userCcsq);
	
	//删除本条出差申请
	@Delete("delete from t_ccsq where ccsq_id=#{ccsq_id}")
	public boolean AdminDeleteOneCcsq(int ccsq_id);
	
	//查询某一条差旅报销
	@Select("select * from t_ccsq where ccsq_id = #{ccsq_id}")
	public UserCcsq AdminSelectOneCcsq(int ccsq_id);
	
	 //添加请假
	@Insert("insert into t_qj(qj_qjlx,qj_sqr,qj_ks,qj_js,qj_qjts,qj_qjsy,qj_fj,qj_spr,qj_state,qj_tjtime,qj_delete) values (#{qj_qjlx},#{qj_sqr},#{qj_ks},#{qj_js},#{qj_qjts},#{qj_qjsy},#{qj_fj},#{qj_spr},#{qj_state},#{qj_tjtime},#{qj_delete})")
	public void AdminAddQj(UserQj userQj);
	
	//查询某一条差旅报销
	@Select("select * from t_qj where qj_id = #{qj_id}")
	public UserQj AdminSelectOneQj(int qj_id);
  	
	//删除本条请假
	@Delete("delete from t_qj where qj_id=#{qj_id}")
	public boolean AdminDeleteOneQj(int qj_id);
	
	
	
	 //查询差旅报销金额总和
	   @Select("select ifnull(SUM(clbx_je),0) from t_clbx")
	   public int AdminSelectClbxSum();
	
	    //查询日常报销金额总和
		@Select("select ifnull(SUM(rcbx_je),0) from t_rcbx")
		public int AdminSelectRcbxSum();
		
		//查询出差申请金额总和
		@Select("select ifnull(SUM(ccsq_jkje),0) from t_ccsq")
		public int AdminSelectCcsqSum();
		
		//查询借款金额总和
		@Select("select ifnull(SUM(jk_jkje),0) from t_jk")
		public int AdminSelectJkSum();
		
		//查询还款金额总和
		@Select("select ifnull(SUM(hk_hkje),0) from t_hk")
		public int AdminSelectHkSum();

//------------------------------------------------------------------------------------		
		
}
package com.bysj.ecs.service.impl;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Service;

import com.bysj.ecs.mapper.AdminMapper;
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
import com.bysj.ecs.service.AdminService;

@Service("adminService")
public class AdminServiceImpl implements AdminService{

    private AdminMapper adminMapper;
    
    @Resource(name="adminMapper")
	public void setAdminMapper(AdminMapper adminMapper) {
		this.adminMapper = adminMapper;
	}

	public ArrayList<User> selectUser() {
		return  adminMapper.selectUser();
	}

	public User selectOneUser(int user_id) {
		return adminMapper.selectOneUser(user_id);
	}

	public ArrayList<Position> selectPosition() {
		return adminMapper.selectPosition();
	}

	public ArrayList<Department> selectDepartment() {
		return adminMapper.selectDepartment();
	}

	public ArrayList<UserType> selectType() {
		return adminMapper.selectType();
	}

	public void updateUserMessage(User user) {
		adminMapper.updateUserMessage(user);
		
	}

	public boolean deleteUser(int user_id) {
		return adminMapper.deleteUser(user_id);
	}

	public void insertUser(User user) {
		
		adminMapper.insertUser(user);
	}

	public boolean deleteDepartment(int department_id) {
		
		return adminMapper.deleteDepartment(department_id);
	}

	public boolean deletePosition(int position_id) {
	
		return adminMapper.deletePosition(position_id);
	}

	public void insertPosition(Position position) {
		adminMapper.insertPosition(position);
		
	}

	public void insertDepartment(Department department) {
		adminMapper.insertDepartment(department);
		
	}

	public void updateUserType(User user) {
		adminMapper.updateUserType(user);
		
	}

	public ArrayList<BudgetType> selectBudgetType() {
		// TODO Auto-generated method stub
		return adminMapper.selectBudgetType();
	}

	public BudgetType selectOneBudgetType(int budget_type_id) {
		// TODO Auto-generated method stub
		return adminMapper.selectOneBudgetType(budget_type_id);
	}

	public void updateBudgetTypeQuarter(BudgetType budgetType) {
		adminMapper.updateBudgetTypeQuarter(budgetType);
		
	}

	public void updateBudgetTypeYear(BudgetType budgetType) {
		adminMapper.updateBudgetTypeYear(budgetType);
		
	}

	public Department selectOneDepartmentBudget(int department_id) {
		// TODO Auto-generated method stub
		return adminMapper.selectOneDepartmentBudget(department_id);
	}

	public void updateBudgetDepartmentQuarter(Department department) {
		adminMapper.updateBudgetDepartmentQuarter(department);
		
	}

	public void updateBudgetDepartmentYear(Department department) {
		adminMapper.updateBudgetDepartmentYear(department);
		
	}

	public ArrayList<LeaveDay> selectLeaveDay() {
		return adminMapper.selectLeaveDay();
	}

	public LeaveDay selectOneLeaveDay(int leave_day_id) {
		return adminMapper.selectOneLeaveDay(leave_day_id);
	}

	public void updateLeaveDay(LeaveDay leaveDay) {
		adminMapper.updateLeaveDay(leaveDay);
	}

	public ArrayList<UserClbx> selectUserClbx() {
		return adminMapper.selectUserClbx();
	}

	public ArrayList<UserRcbx> selectUserRcbx() {
		return adminMapper.selectUserRcbx();
	}

	public ArrayList<UserCcsq> selectUserCcsq() {
		return adminMapper.selectUserCcsq();
	}

	public ArrayList<UserJk> selectUserJk() {
		return adminMapper.selectUserJk();
	}

	public ArrayList<UserHk> selectUserHk() {
		return adminMapper.selectUserHk();
	}

	public ArrayList<UserQj> selectUserQj() {
		return adminMapper.selectUserQj();
	}

	public void AdminAddClbx(UserClbx userClbx) {
		adminMapper.AdminAddClbx(userClbx);
		
	}

	public UserClbx AdminSelectOneClbx(int clbx_id) {
		return adminMapper.AdminSelectOneClbx(clbx_id);
	}

	public boolean AdminDeleteOneClbx(int clbx_id) {
		return adminMapper.AdminDeleteOneClbx(clbx_id);
	}

	public void AdminAddRcbx(UserRcbx userRcbx) {
		adminMapper.AdminAddRcbx(userRcbx);
		
	}

	public UserRcbx AdminSelectOneRcbx(int rcbx_id) {
		return adminMapper.AdminSelectOneRcbx(rcbx_id);
	}

	public boolean AdminDeleteOneRcbx(int rcbx_id) {
		return adminMapper.AdminDeleteOneRcbx(rcbx_id);
	}

	public void AdminAddJk(UserJk userJk) {
		adminMapper.AdminAddJk(userJk);
	}

	public UserJk AdminSelectOneJk(int jk_id) {
		return adminMapper.AdminSelectOneJk(jk_id);
	}

	public boolean AdminDeleteOneJk(int jk_id) {
		return adminMapper.AdminDeleteOneJk(jk_id);
	}

	public void AdminAddHk(UserHk userHk) {
		adminMapper.AdminAddHk(userHk);
	}

	public UserHk AdminSelectOneHk(int hk_id) {
		return adminMapper.AdminSelectOneHk(hk_id);
	}

	public boolean AdminDeleteOneHk(int hk_id) {
		return adminMapper.AdminDeleteOneHk(hk_id);
	}

	public void AdminAddCcsq(UserCcsq userCcsq) {
		adminMapper.AdminAddCcsq(userCcsq);
	}

	public boolean AdminDeleteOneCcsq(int ccsq_id) {
		return adminMapper.AdminDeleteOneCcsq(ccsq_id);
	}

	public UserCcsq AdminSelectOneCcsq(int ccsq_id) {
		return adminMapper.AdminSelectOneCcsq(ccsq_id);
	}

	public void AdminAddQj(UserQj userQj) {
		adminMapper.AdminAddQj(userQj);
	}

	public UserQj AdminSelectOneQj(int qj_id) {
		return adminMapper.AdminSelectOneQj(qj_id);
	}

	public boolean AdminDeleteOneQj(int qj_id) {
		return adminMapper.AdminDeleteOneQj(qj_id);
	}

	public int AdminSelectClbxSum() {
		return adminMapper.AdminSelectClbxSum();
	}

	public int AdminSelectRcbxSum() {
		return adminMapper.AdminSelectRcbxSum();
	}

	public int AdminSelectCcsqSum() {
		return adminMapper.AdminSelectCcsqSum();
	}

	public int AdminSelectJkSum() {
		return adminMapper.AdminSelectJkSum();
	}

	public int AdminSelectHkSum() {
		return adminMapper.AdminSelectHkSum();
	}



	
	
}

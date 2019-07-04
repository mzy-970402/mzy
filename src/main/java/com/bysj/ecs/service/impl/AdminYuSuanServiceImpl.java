package com.bysj.ecs.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bysj.ecs.mapper.AdminMapper;
import com.bysj.ecs.mapper.AdminYuSuanMapper;
import com.bysj.ecs.pojo.BudgetType;
import com.bysj.ecs.pojo.Department;
import com.bysj.ecs.service.AdminService;
import com.bysj.ecs.service.AdminYuSuanService;

@Service("adminYuSuanService")
public class AdminYuSuanServiceImpl implements AdminYuSuanService{

private AdminYuSuanMapper adminYuSuanMapper;
    
    @Resource(name="adminYuSuanMapper")
	public void setAdminYuSuanMapper(AdminYuSuanMapper adminYuSuanMapper) {
		this.adminYuSuanMapper = adminYuSuanMapper;
	}

	public long SelectQuarterOneClbxFjSum() {
		return adminYuSuanMapper.SelectQuarterOneClbxFjSum();
	}

	public long SelectQuarterOneRcbxFjSum() {
		return adminYuSuanMapper.SelectQuarterOneRcbxFjSum();
	}

	public long SelectQuarterOneCcsqFjSum() {
		return adminYuSuanMapper.SelectQuarterOneCcsqFjSum();
	}

	public long SelectQuarterTwoClbxFjSum() {
		return adminYuSuanMapper.SelectQuarterTwoClbxFjSum();
	}

	public long SelectQuarterTwoRcbxFjSum() {
		return adminYuSuanMapper.SelectQuarterTwoRcbxFjSum();
	}

	public long SelectQuarterTwoCcsqFjSum() {
		return adminYuSuanMapper.SelectQuarterTwoCcsqFjSum();
	}

	public long SelectQuarterThreeClbxFjSum() {
		return adminYuSuanMapper.SelectQuarterThreeClbxFjSum();
	}

	public long SelectQuarterThreeRcbxFjSum() {
		return adminYuSuanMapper.SelectQuarterThreeRcbxFjSum();
	}

	public long SelectQuarterThreeCcsqFjSum() {
		return adminYuSuanMapper.SelectQuarterThreeCcsqFjSum();
	}

	public long SelectQuarterFourClbxFjSum() {
		return adminYuSuanMapper.SelectQuarterFourClbxFjSum();
	}

	public long SelectQuarterFourRcbxFjSum() {
		return adminYuSuanMapper.SelectQuarterFourRcbxFjSum();
	}

	public long SelectQuarterFourCcsqFjSum() {
		return adminYuSuanMapper.SelectQuarterFourCcsqFjSum();
	}

	public long SelectQuarterClbxSum(String clbx_sqlb) {
		return adminYuSuanMapper.SelectQuarterClbxSum(clbx_sqlb);
	}

	public long SelectQuarterRcbxSum(String rcbx_sqlb) {
		return adminYuSuanMapper.SelectQuarterRcbxSum(rcbx_sqlb);
	}

	public long SelectQuarterCcsqSum(String ccsq_fylb) {
		return adminYuSuanMapper.SelectQuarterCcsqSum(ccsq_fylb);
	}

	public BudgetType selectBudgetType(String budget_type_name) {
		return adminYuSuanMapper.selectBudgetType(budget_type_name);
	}

	public long SelectYearClbxSum(String clbx_sqlb) {
		return adminYuSuanMapper.SelectYearClbxSum(clbx_sqlb);
	}

	public long SelectYearRcbxSum(String rcbx_sqlb) {
		return adminYuSuanMapper.SelectYearRcbxSum(rcbx_sqlb);
	}

	public long SelectYearCcsqSum(String ccsq_fylb) {
		return adminYuSuanMapper.SelectYearCcsqSum(ccsq_fylb);
	}

	public long SelectQuarterJkSum() {
		return adminYuSuanMapper.SelectQuarterJkSum();
	}

	public long SelectQuarterDeClbxSum(String user_department) {
		return adminYuSuanMapper.SelectQuarterDeClbxSum(user_department);
	}

	public long SelectQuarterDeRcbxSum(String user_department) {
		return adminYuSuanMapper.SelectQuarterDeRcbxSum(user_department);
	}

	public long SelectQuarterDeCcsqSum(String user_department) {
		return adminYuSuanMapper.SelectQuarterDeCcsqSum(user_department);
	}

	public long SelectQuarterDeJkSum(String user_department) {
		return adminYuSuanMapper.SelectQuarterDeJkSum(user_department);
	}

	public Department selectDepartmentType(String department_type) {
		return adminYuSuanMapper.selectDepartmentType(department_type);
	}

	public long SelectYearDeClbxSum(String user_department) {
		return adminYuSuanMapper.SelectYearDeClbxSum(user_department);
	}

	public long SelectYearDeRcbxSum(String user_department) {
		return adminYuSuanMapper.SelectYearDeRcbxSum(user_department);
	}

	public long SelectYearDeCcsqSum(String user_department) {
		return adminYuSuanMapper.SelectYearDeCcsqSum(user_department);
	}

	public long SelectYearDeJkSum(String user_department) {
		return adminYuSuanMapper.SelectYearDeJkSum(user_department);
	}

	

}

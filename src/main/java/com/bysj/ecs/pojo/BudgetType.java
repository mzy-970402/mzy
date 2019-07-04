package com.bysj.ecs.pojo;

public class BudgetType {

	private int budget_type_id;
	private String budget_type_name;
	private long budget_type_one;
	private long budget_type_two;
	private long budget_type_three;
	private long budget_type_four;
	private long budget_type_year;
	public int getBudget_type_id() {
		return budget_type_id;
	}
	public void setBudget_type_id(int budget_type_id) {
		this.budget_type_id = budget_type_id;
	}
	
	public String getBudget_type_name() {
		return budget_type_name;
	}
	public void setBudget_type_name(String budget_type_name) {
		this.budget_type_name = budget_type_name;
	}
	public long getBudget_type_one() {
		return budget_type_one;
	}
	public void setBudget_type_one(long budget_type_one) {
		this.budget_type_one = budget_type_one;
	}
	public long getBudget_type_two() {
		return budget_type_two;
	}
	public void setBudget_type_two(long budget_type_two) {
		this.budget_type_two = budget_type_two;
	}
	public long getBudget_type_three() {
		return budget_type_three;
	}
	public void setBudget_type_three(long budget_type_three) {
		this.budget_type_three = budget_type_three;
	}
	public long getBudget_type_four() {
		return budget_type_four;
	}
	public void setBudget_type_four(long budget_type_four) {
		this.budget_type_four = budget_type_four;
	}
	public long getBudget_type_year() {
		return budget_type_year;
	}
	public void setBudget_type_year(long budget_type_year) {
		this.budget_type_year = budget_type_year;
	}
	
	public BudgetType(int budget_type_id, String budget_type_name, long budget_type_one, long budget_type_two,
			long budget_type_three, long budget_type_four, long budget_type_year) {
		this.budget_type_id = budget_type_id;
		this.budget_type_name = budget_type_name;
		this.budget_type_one = budget_type_one;
		this.budget_type_two = budget_type_two;
		this.budget_type_three = budget_type_three;
		this.budget_type_four = budget_type_four;
		this.budget_type_year = budget_type_year;
	}
	public BudgetType() {
	}
	
	
	
	
	
	
	

}

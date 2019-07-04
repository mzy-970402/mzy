package com.bysj.ecs.pojo;

public class Department {

    private int	department_id;
    private String department_type;
    private long department_budget_one;
    private long department_budget_two;
    private long department_budget_three;
    private long department_budget_four;
    private long department_budget_year;
    
   
	public int getDepartment_id() {
		return department_id;
	}


	public void setDepartment_id(int department_id) {
		this.department_id = department_id;
	}


	public String getDepartment_type() {
		return department_type;
	}


	public void setDepartment_type(String department_type) {
		this.department_type = department_type;
	}


	public long getDepartment_budget_one() {
		return department_budget_one;
	}


	public void setDepartment_budget_one(long department_budget_one) {
		this.department_budget_one = department_budget_one;
	}


	public long getDepartment_budget_two() {
		return department_budget_two;
	}


	public void setDepartment_budget_two(long department_budget_two) {
		this.department_budget_two = department_budget_two;
	}


	public long getDepartment_budget_three() {
		return department_budget_three;
	}


	public void setDepartment_budget_three(long department_budget_three) {
		this.department_budget_three = department_budget_three;
	}


	public long getDepartment_budget_four() {
		return department_budget_four;
	}


	public void setDepartment_budget_four(long department_budget_four) {
		this.department_budget_four = department_budget_four;
	}


	public long getDepartment_budget_year() {
		return department_budget_year;
	}


	public void setDepartment_budget_year(long department_budget_year) {
		this.department_budget_year = department_budget_year;
	}


	public Department(int department_id, String department_type, long department_budget_one, long department_budget_two,
			long department_budget_three, long department_budget_four, long department_budget_year) {
		this.department_id = department_id;
		this.department_type = department_type;
		this.department_budget_one = department_budget_one;
		this.department_budget_two = department_budget_two;
		this.department_budget_three = department_budget_three;
		this.department_budget_four = department_budget_four;
		this.department_budget_year = department_budget_year;
	}


	public Department() {
	}


	
	
}

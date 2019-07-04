package com.bysj.ecs.pojo;

public class LeaveDay {

	private int leave_day_id;
	private String leave_day_type;
	private String leave_day_number;
	
	
	public String getLeave_day_type() {
		return leave_day_type;
	}
	public void setLeave_day_type(String leave_day_type) {
		this.leave_day_type = leave_day_type;
	}
	public int getLeave_day_id() {
		return leave_day_id;
	}
	public void setLeave_day_id(int leave_day_id) {
		this.leave_day_id = leave_day_id;
	}
	public String getLeave_day_number() {
		return leave_day_number;
	}
	public void setLeave_day_number(String leave_day_number) {
		this.leave_day_number = leave_day_number;
	}
	
	public LeaveDay(int leave_day_id, String leave_day_type, String leave_day_number) {
		this.leave_day_id = leave_day_id;
		this.leave_day_type = leave_day_type;
		this.leave_day_number = leave_day_number;
	}
	public LeaveDay() {
	}
	
	

}

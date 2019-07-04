package com.bysj.ecs.pojo;

public class Position {

	private int position_id;
	private String position_type;
	public int getPosition_id() {
		return position_id;
	}
	public void setPosition_id(int position_id) {
		this.position_id = position_id;
	}
	public String getPosition_type() {
		return position_type;
	}
	public void setPosition_type(String position_type) {
		this.position_type = position_type;
	}
	public Position(int position_id, String position_type) {
		this.position_id = position_id;
		this.position_type = position_type;
	}
	public Position() {
	}
	
	

}

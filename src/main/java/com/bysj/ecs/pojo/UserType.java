package com.bysj.ecs.pojo;

import java.io.Serializable;

public class UserType implements Serializable{

	private int id;
	private String typeName;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	public UserType(int id, String typeName) {
		super();
		this.id = id;
		this.typeName = typeName;
	}
	public UserType() {
	}
	
	
	

}

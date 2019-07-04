package com.bysj.ecs.pojo;

import java.sql.Timestamp;

public class User {

	private int user_id;
	private String user_name;
	private String user_psw;
	private int user_type_id;
	private Timestamp user_time;
	private UserType type;
	private String user_image;
	private String user_sex;
	private int user_age;
	private String user_phone;
	private String user_birthday;
	private String user_number;
	private String user_department;
	private String user_position;
	private String user_card;
	private String user_address;
	
	
	public String getUser_image() {
		return user_image;
	}
	public void setUser_image(String user_image) {
		this.user_image = user_image;
	}
	public String getUser_sex() {
		return user_sex;
	}
	public void setUser_sex(String user_sex) {
		this.user_sex = user_sex;
	}
	public int getUser_age() {
		return user_age;
	}
	public void setUser_age(int user_age) {
		this.user_age = user_age;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public String getUser_birthday() {
		return user_birthday;
	}
	public void setUser_birthday(String user_birthday) {
		this.user_birthday = user_birthday;
	}
	public String getUser_number() {
		return user_number;
	}
	public void setUser_number(String user_number) {
		this.user_number = user_number;
	}
	public String getUser_department() {
		return user_department;
	}
	public void setUser_department(String user_department) {
		this.user_department = user_department;
	}
	public String getUser_position() {
		return user_position;
	}
	public void setUser_position(String user_position) {
		this.user_position = user_position;
	}
	public String getUser_card() {
		return user_card;
	}
	public void setUser_card(String user_card) {
		this.user_card = user_card;
	}
	public String getUser_address() {
		return user_address;
	}
	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}
	public UserType getType() {
		return type;
	}
	public void setType(UserType type) {
		this.type = type;
	}
	public Timestamp getUser_time() {
		return user_time;
	}
	public void setUser_time(Timestamp user_time) {
		this.user_time = user_time;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getUser_psw() {
		return user_psw;
	}
	public void setUser_psw(String user_psw) {
		this.user_psw = user_psw;
	}
	
	

	public int getUser_type_id() {
		return user_type_id;
	}
	public void setUser_type_id(int user_type_id) {
		this.user_type_id = user_type_id;
	}
	public User() {
	}
	public User(int user_id, String user_name, String user_psw, int user_type_id, Timestamp user_time, UserType type,
			String user_image, String user_sex, int user_age, String user_phone, String user_birthday,
			String user_number, String user_department, String user_position, String user_card, String user_address) {
		this.user_id = user_id;
		this.user_name = user_name;
		this.user_psw = user_psw;
		this.user_type_id = user_type_id;
		this.user_time = user_time;
		this.type = type;
		this.user_image = user_image;
		this.user_sex = user_sex;
		this.user_age = user_age;
		this.user_phone = user_phone;
		this.user_birthday = user_birthday;
		this.user_number = user_number;
		this.user_department = user_department;
		this.user_position = user_position;
		this.user_card = user_card;
		this.user_address = user_address;
	}
	
	
	
	
	
	
	
	

}

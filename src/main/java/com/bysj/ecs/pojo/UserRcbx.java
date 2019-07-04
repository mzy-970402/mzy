package com.bysj.ecs.pojo;

import java.sql.Timestamp;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class UserRcbx {

	private int rcbx_id;
	private String rcbx_bxsy;
	private String rcbx_sqr;
	private String rcbx_sqlb;
	private String rcbx_je;
	private String rcbx_date;
	private String rcbx_fp;
	private String rcbx_bz;
	private String rcbx_spr;
	private String rcbx_state;
	private String rcbx_advice;
	private Timestamp rcbx_tjtime;
	private Timestamp rcbx_sptime;
	private String rcbx_delete;
	
	
	
	
	


	public String getRcbx_delete() {
		return rcbx_delete;
	}



	public void setRcbx_delete(String rcbx_delete) {
		this.rcbx_delete = rcbx_delete;
	}



	public Timestamp getRcbx_tjtime() {
		return rcbx_tjtime;
	}



	public void setRcbx_tjtime(Timestamp rcbx_tjtime) {
		this.rcbx_tjtime = rcbx_tjtime;
	}



	public Timestamp getRcbx_sptime() {
		return rcbx_sptime;
	}



	public void setRcbx_sptime(Timestamp rcbx_sptime) {
		this.rcbx_sptime = rcbx_sptime;
	}



	



	public String getRcbx_advice() {
		return rcbx_advice;
	}



	public void setRcbx_advice(String rcbx_advice) {
		this.rcbx_advice = rcbx_advice;
	}



	public String getRcbx_state() {
		return rcbx_state;
	}



	public void setRcbx_state(String rcbx_state) {
		this.rcbx_state = rcbx_state;
	}



	public int getRcbx_id() {
		return rcbx_id;
	}



	public void setRcbx_id(int rcbx_id) {
		this.rcbx_id = rcbx_id;
	}



	public String getRcbx_bxsy() {
		return rcbx_bxsy;
	}



	public void setRcbx_bxsy(String rcbx_bxsy) {
		this.rcbx_bxsy = rcbx_bxsy;
	}



	public String getRcbx_sqr() {
		return rcbx_sqr;
	}



	public void setRcbx_sqr(String rcbx_sqr) {
		this.rcbx_sqr = rcbx_sqr;
	}



	public String getRcbx_sqlb() {
		return rcbx_sqlb;
	}



	public void setRcbx_sqlb(String rcbx_sqlb) {
		this.rcbx_sqlb = rcbx_sqlb;
	}



	public String getRcbx_je() {
		return rcbx_je;
	}



	public void setRcbx_je(String rcbx_je) {
		this.rcbx_je = rcbx_je;
	}






	public String getRcbx_date() {
		return rcbx_date;
	}



	public void setRcbx_date(String rcbx_date) {
		this.rcbx_date = rcbx_date;
	}



	public String getRcbx_fp() {
		return rcbx_fp;
	}



	public void setRcbx_fp(String rcbx_fp) {
		this.rcbx_fp = rcbx_fp;
	}



	public String getRcbx_bz() {
		return rcbx_bz;
	}



	public void setRcbx_bz(String rcbx_bz) {
		this.rcbx_bz = rcbx_bz;
	}



	public String getRcbx_spr() {
		return rcbx_spr;
	}



	public void setRcbx_spr(String rcbx_spr) {
		this.rcbx_spr = rcbx_spr;
	}

    
	

	



	




	public UserRcbx(int rcbx_id, String rcbx_bxsy, String rcbx_sqr, String rcbx_sqlb, String rcbx_je, String rcbx_date,
			String rcbx_fp, String rcbx_bz, String rcbx_spr, String rcbx_state, String rcbx_advice,
			Timestamp rcbx_tjtime, Timestamp rcbx_sptime, String rcbx_delete) {
		this.rcbx_id = rcbx_id;
		this.rcbx_bxsy = rcbx_bxsy;
		this.rcbx_sqr = rcbx_sqr;
		this.rcbx_sqlb = rcbx_sqlb;
		this.rcbx_je = rcbx_je;
		this.rcbx_date = rcbx_date;
		this.rcbx_fp = rcbx_fp;
		this.rcbx_bz = rcbx_bz;
		this.rcbx_spr = rcbx_spr;
		this.rcbx_state = rcbx_state;
		this.rcbx_advice = rcbx_advice;
		this.rcbx_tjtime = rcbx_tjtime;
		this.rcbx_sptime = rcbx_sptime;
		this.rcbx_delete = rcbx_delete;
	}



	public UserRcbx() {
		
	}

}

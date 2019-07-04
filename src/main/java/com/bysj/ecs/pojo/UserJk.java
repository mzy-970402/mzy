package com.bysj.ecs.pojo;

import java.sql.Timestamp;

public class UserJk {
	private int jk_id;
	private String jk_jkr;
	private String jk_jksy;
	private String jk_jkje;
	private String jk_spr;
	private String jk_state;
    private String jk_advice;
    private Timestamp jk_tjtime;
    private Timestamp jk_sptime;
    private String jk_delete;
    
	

	public String getJk_delete() {
		return jk_delete;
	}

	public void setJk_delete(String jk_delete) {
		this.jk_delete = jk_delete;
	}

	public Timestamp getJk_tjtime() {
		return jk_tjtime;
	}

	public void setJk_tjtime(Timestamp jk_tjtime) {
		this.jk_tjtime = jk_tjtime;
	}

	public Timestamp getJk_sptime() {
		return jk_sptime;
	}

	public void setJk_sptime(Timestamp jk_sptime) {
		this.jk_sptime = jk_sptime;
	}

	public String getJk_advice() {
		return jk_advice;
	}

	public void setJk_advice(String jk_advice) {
		this.jk_advice = jk_advice;
	}

	public int getJk_id() {
		return jk_id;
	}

	public void setJk_id(int jk_id) {
		this.jk_id = jk_id;
	}

	public String getJk_jkr() {
		return jk_jkr;
	}

	public void setJk_jkr(String jk_jkr) {
		this.jk_jkr = jk_jkr;
	}

	public String getJk_jksy() {
		return jk_jksy;
	}

	public void setJk_jksy(String jk_jksy) {
		this.jk_jksy = jk_jksy;
	}

	public String getJk_jkje() {
		return jk_jkje;
	}

	public void setJk_jkje(String jk_jkje) {
		this.jk_jkje = jk_jkje;
	}

	public String getJk_spr() {
		return jk_spr;
	}

	public void setJk_spr(String jk_spr) {
		this.jk_spr = jk_spr;
	}

	public String getJk_state() {
		return jk_state;
	}

	public void setJk_state(String jk_state) {
		this.jk_state = jk_state;
	}

	public UserJk() {
	}

	public UserJk(int jk_id, String jk_jkr, String jk_jksy, String jk_jkje, String jk_spr, String jk_state,
			String jk_advice, Timestamp jk_tjtime, Timestamp jk_sptime, String jk_delete) {
		this.jk_id = jk_id;
		this.jk_jkr = jk_jkr;
		this.jk_jksy = jk_jksy;
		this.jk_jkje = jk_jkje;
		this.jk_spr = jk_spr;
		this.jk_state = jk_state;
		this.jk_advice = jk_advice;
		this.jk_tjtime = jk_tjtime;
		this.jk_sptime = jk_sptime;
		this.jk_delete = jk_delete;
	}

	

	
	

}

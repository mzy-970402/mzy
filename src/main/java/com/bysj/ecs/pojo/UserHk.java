package com.bysj.ecs.pojo;

import java.sql.Timestamp;

public class UserHk {

	private int hk_id;
	private String hk_hkr;
	private String hk_sqrq;
	private String hk_sy;
	private String hk_hkje;
	private String hk_bz;
	private String hk_fj;
	private String hk_spr;
	private String hk_state;
	private String hk_advice;
	private Timestamp hk_tjtime;
	private Timestamp hk_sptime;
	private String hk_delete;
	
	
	
	public String getHk_delete() {
		return hk_delete;
	}
	public void setHk_delete(String hk_delete) {
		this.hk_delete = hk_delete;
	}
	public String getHk_advice() {
		return hk_advice;
	}
	public void setHk_advice(String hk_advice) {
		this.hk_advice = hk_advice;
	}
	public String getHk_hkr() {
		return hk_hkr;
	}
	public void setHk_hkr(String hk_hkr) {
		this.hk_hkr = hk_hkr;
	}
	public int getHk_id() {
		return hk_id;
	}
	public void setHk_id(int hk_id) {
		this.hk_id = hk_id;
	}
	public String getHk_sqrq() {
		return hk_sqrq;
	}
	public void setHk_sqrq(String hk_sqrq) {
		this.hk_sqrq = hk_sqrq;
	}
	public String getHk_sy() {
		return hk_sy;
	}
	public void setHk_sy(String hk_sy) {
		this.hk_sy = hk_sy;
	}
	public String getHk_hkje() {
		return hk_hkje;
	}
	public void setHk_hkje(String hk_hkje) {
		this.hk_hkje = hk_hkje;
	}
	public String getHk_bz() {
		return hk_bz;
	}
	public void setHk_bz(String hk_bz) {
		this.hk_bz = hk_bz;
	}
	public String getHk_fj() {
		return hk_fj;
	}
	public void setHk_fj(String hk_fj) {
		this.hk_fj = hk_fj;
	}
	public String getHk_spr() {
		return hk_spr;
	}
	public void setHk_spr(String hk_spr) {
		this.hk_spr = hk_spr;
	}
	public String getHk_state() {
		return hk_state;
	}
	public void setHk_state(String hk_state) {
		this.hk_state = hk_state;
	}
	
	
	
	public Timestamp getHk_tjtime() {
		return hk_tjtime;
	}
	public void setHk_tjtime(Timestamp hk_tjtime) {
		this.hk_tjtime = hk_tjtime;
	}
	public Timestamp getHk_sptime() {
		return hk_sptime;
	}
	public void setHk_sptime(Timestamp hk_sptime) {
		this.hk_sptime = hk_sptime;
	}
	public UserHk() {
	}
	public UserHk(int hk_id, String hk_hkr, String hk_sqrq, String hk_sy, String hk_hkje, String hk_bz, String hk_fj,
			String hk_spr, String hk_state, String hk_advice, Timestamp hk_tjtime, Timestamp hk_sptime,
			String hk_delete) {
		this.hk_id = hk_id;
		this.hk_hkr = hk_hkr;
		this.hk_sqrq = hk_sqrq;
		this.hk_sy = hk_sy;
		this.hk_hkje = hk_hkje;
		this.hk_bz = hk_bz;
		this.hk_fj = hk_fj;
		this.hk_spr = hk_spr;
		this.hk_state = hk_state;
		this.hk_advice = hk_advice;
		this.hk_tjtime = hk_tjtime;
		this.hk_sptime = hk_sptime;
		this.hk_delete = hk_delete;
	}
	
	

}

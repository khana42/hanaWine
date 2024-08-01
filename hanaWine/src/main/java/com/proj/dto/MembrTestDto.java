package com.proj.dto;

import java.sql.Timestamp;

public class MembrTestDto {

	private int idx;
	private String uid;
	private String upw;
	private String uname;
	private String uidemail;
	private Timestamp joinTM;
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getUpw() {
		return upw;
	}
	public void setUpw(String upw) {
		this.upw = upw;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUidemail() {
		return uidemail;
	}
	public void setUidemail(String uidemail) {
		this.uidemail = uidemail;
	}
	public Timestamp getJoinTM() {
		return joinTM;
	}
	public void setJoinTM(Timestamp joinTM) {
		this.joinTM = joinTM;
	}
	
}

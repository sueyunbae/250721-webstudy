package com.sist.vo;

import lombok.Data;

@Data
public class Member {
	private int mno;
	private String name;
	private String address;
	private String phone;
	public Member(int mno, String name, String address, String phone) {
		super();
		this.mno = mno;
		this.name = name;
		this.address = address;
		this.phone = phone;
	}
	
	public Member() {}	
}

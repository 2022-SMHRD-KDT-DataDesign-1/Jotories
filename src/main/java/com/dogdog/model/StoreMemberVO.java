package com.dogdog.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@AllArgsConstructor
public class StoreMemberVO {
	private int member_no;
	private int store_id;
	private String user_id;
	private int dog_no;
	private String member_from;
	private String member_to;
	private String member_note;
	private String member_enroll;
	private String member_name;
	private String user_phone;
	
	
	
	public StoreMemberVO(int dog_no) {
		super();
		this.dog_no = dog_no;
	}
	
	public StoreMemberVO(int store_id, String user_id, String member_from, String member_to, String member_enroll,
			String member_name, String user_phone) {
		this.store_id = store_id;
		this.user_id = user_id;
		this.member_from = member_from;
		this.member_to = member_to;
		this.member_enroll = member_enroll;
		this.member_name = member_name;
		this.user_phone = user_phone;
	}

	public StoreMemberVO(int store_id, String user_id, int dog_no, String member_from, String member_to,
			 String member_enroll, String member_name, String user_phone) {
		this.store_id = store_id;
		this.user_id = user_id;
		this.dog_no = dog_no;
		this.member_from = member_from;
		this.member_to = member_to;
		this.member_enroll = member_enroll;
		this.member_name = member_name;
		this.user_phone = user_phone;
	}
	
	




	
	
	
}

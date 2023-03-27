package com.dogdog.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@AllArgsConstructor
@RequiredArgsConstructor
public class StoreMemberVO {
	private int member_no;
	@NonNull private int store_id;
	private String user_id;
	@NonNull private int dog_no;
	@NonNull private String member_from;
	@NonNull private String member_to;
	@NonNull private String member_note;
	@NonNull private String member_enroll;
}

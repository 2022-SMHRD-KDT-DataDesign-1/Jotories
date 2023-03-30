package com.dogdog.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@AllArgsConstructor
@RequiredArgsConstructor
@NoArgsConstructor
public class StoreMemberVO {
	private int member_no;
	@NonNull private int store_id;
	@NonNull private String user_id;
	@NonNull private int dog_no;
	@NonNull private String member_from;
	@NonNull private String member_to;
	@NonNull private String member_note;
	private String member_enroll;
}

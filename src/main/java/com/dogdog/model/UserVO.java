package com.dogdog.model;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@RequiredArgsConstructor
@NoArgsConstructor
public class UserVO {
	
	@NonNull private String user_id;
	@NonNull private String user_pw;
	@NonNull private String user_nick;
	@NonNull private String user_phone;
	@NonNull private String user_email;
	@NonNull private String user_addr;
	
	public UserVO(@NonNull String user_id, @NonNull String user_pw) {
		this.user_id = user_id;
		this.user_pw = user_pw;
	}
	
	
	
	
	
	
}

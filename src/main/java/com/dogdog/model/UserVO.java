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
	private String user_profile;
	
	public UserVO(@NonNull String user_id, @NonNull String user_pw) {
		this.user_id = user_id;
		this.user_pw = user_pw;
	}
	
	public UserVO(@NonNull String user_id, @NonNull String user_nick, @NonNull String user_phone) {
		this.user_id = user_id;
		this.user_nick = user_nick;
		this.user_phone = user_phone;
	}
	
}

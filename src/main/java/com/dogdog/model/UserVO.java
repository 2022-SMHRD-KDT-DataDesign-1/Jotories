package com.dogdog.model;

import lombok.Data;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@RequiredArgsConstructor
public class UserVO {
	
	@NonNull private String user_id;
	@NonNull private String user_pw;
	@NonNull private String user_nick;
	@NonNull private String user_ownercheck;
	@NonNull private String user_phone;
	@NonNull private String user_email;
	@NonNull private String user_addr;
}

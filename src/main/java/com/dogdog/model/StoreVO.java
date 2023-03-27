package com.dogdog.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@AllArgsConstructor
@RequiredArgsConstructor
public class StoreVO {
	private int store_id;
	@NonNull private String store_name;
	@NonNull private String store_addr;
	@NonNull private String store_tel;
	@NonNull private String store_owner;
	private String user_id;
	@NonNull private int store_like;
	@NonNull private String store_type;
}

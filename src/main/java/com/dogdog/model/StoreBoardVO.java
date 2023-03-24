package com.dogdog.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@AllArgsConstructor
@RequiredArgsConstructor
public class StoreBoardVO {
	private int storeboard_no;
	private String store_name;
	private int store_id;
	@NonNull private String store_title;
	@NonNull private String store_content;
	@NonNull private String store_date;
}

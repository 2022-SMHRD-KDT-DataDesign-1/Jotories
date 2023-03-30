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
public class StoreBoardVO {
	private int storeboard_no;
	private String store_name;
	@NonNull private int store_id;
	@NonNull private String store_title;
	@NonNull private String store_content;
	private String store_date;
}

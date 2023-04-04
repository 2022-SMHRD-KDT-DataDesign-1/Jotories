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
	@NonNull private String storeboard_title;
	@NonNull private String storeboard_content;
	private String storeboard_date;
	@NonNull private String storeboard_comment;
	private String storeboard_pic;
}

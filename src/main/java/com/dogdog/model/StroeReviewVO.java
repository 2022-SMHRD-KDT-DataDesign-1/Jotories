package com.dogdog.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@AllArgsConstructor
@RequiredArgsConstructor
public class StroeReviewVO {
	private int review_no;
	@NonNull private String user_id;
	@NonNull private int store_id;
	@NonNull private String review_content;
	@NonNull private String review_likecheck;
	@NonNull private String review_date;
}

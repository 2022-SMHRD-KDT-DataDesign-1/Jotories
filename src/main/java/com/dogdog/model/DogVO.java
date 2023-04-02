package com.dogdog.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@AllArgsConstructor
@RequiredArgsConstructor
public class DogVO {
	private int dog_no;
	@NonNull private String dog_name;
	@NonNull private String dog_gen;
	@NonNull private String dog_neutcheck;
	@NonNull private int dog_age;
	private int dog_month;
	@NonNull private String dog_birth;
	@NonNull private String dog_enroll; //등록번호
	@NonNull private String dog_weight;
	@NonNull private String dog_memo;
	@NonNull private String user_id;
}

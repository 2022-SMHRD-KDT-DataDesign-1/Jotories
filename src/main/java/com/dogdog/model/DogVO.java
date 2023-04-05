package com.dogdog.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@RequiredArgsConstructor
@NoArgsConstructor
public class DogVO {
	private int dog_no;
	private String dog_name;
	private String dog_gen;
	private String dog_neutcheck;
	private int dog_age;
	private int dog_month;
	private String dog_birth;
	private String dog_enroll; //등록번호
	private String dog_weight;
	private String dog_memo;
	@NonNull private String user_id;
	
	
	public DogVO(String dog_name, String dog_gen, String dog_neutcheck, int dog_age, String dog_birth,
			String dog_enroll, String dog_weight, String user_id) {
		this.dog_name = dog_name;
		this.dog_gen = dog_gen;
		this.dog_neutcheck = dog_neutcheck;
		this.dog_age = dog_age;
		this.dog_birth = dog_birth;
		this.dog_enroll = dog_enroll;
		this.dog_weight = dog_weight;
		this.user_id = user_id;
	}
	
	public DogVO(String dog_name, String dog_gen, String dog_neutcheck, int dog_age,
			String dog_birth, String dog_enroll, String dog_weight, String dog_memo, String user_id) {
		this.dog_name = dog_name;
		this.dog_gen = dog_gen;
		this.dog_neutcheck = dog_neutcheck;
		this.dog_age = dog_age;
		this.dog_birth = dog_birth;
		this.dog_enroll = dog_enroll;
		this.dog_weight = dog_weight;
		this.dog_memo = dog_memo;
		this.user_id = user_id;
	}


	public DogVO(int dog_no, String dog_name, String dog_gen, String dog_neutcheck, int dog_age, int dog_month,
			String dog_birth, String dog_enroll, String dog_weight, String dog_memo, String user_id) {
		this.dog_no = dog_no;
		this.dog_name = dog_name;
		this.dog_gen = dog_gen;
		this.dog_neutcheck = dog_neutcheck;
		this.dog_age = dog_age;
		this.dog_month = dog_month;
		this.dog_birth = dog_birth;
		this.dog_enroll = dog_enroll;
		this.dog_weight = dog_weight;
		this.dog_memo = dog_memo;
		this.user_id = user_id;
	}

	
	
	
	
	}
	
	
	
	
	

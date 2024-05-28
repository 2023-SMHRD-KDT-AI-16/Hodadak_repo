package com.Laform.entity;

import java.time.LocalDate;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class tb_corperation {

	private String corp_key; //기업 인증키
	private String corp_name; //기업명
	private String corp_tel; //기업 전화번호
	private String corp_addr; //기업 주소 
	private String corp_email; //기업 이메일 
	private LocalDate joined_at; //가입일자
}

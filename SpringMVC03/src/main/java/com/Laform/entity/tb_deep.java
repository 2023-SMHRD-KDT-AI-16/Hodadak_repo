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
public class tb_deep {

	//키워드 분석 결과
	private int deep_idx;
	private String deep_result;
	private LocalDate created_at;
	private int deep_sum;
	private String deep_source;
	private int deep_rank;
	private boolean label;
	private int deep_age;
	
}

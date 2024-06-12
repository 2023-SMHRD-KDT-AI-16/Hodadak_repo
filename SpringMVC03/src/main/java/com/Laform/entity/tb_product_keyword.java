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
public class tb_product_keyword {
	//제품별 키워드
	private int pr_idx;
	private String pr_keyword;
	private int pr_sum;
	private LocalDate created_at;
	private String pr_category;
	private int prod_idx;
	
}

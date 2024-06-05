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
public class tb_trend {
	private int trend_idx;
	private String trend_keyword;
	private String trend_source;
	private LocalDate created_at;
	private int trend_rank;
	private int trend_sum;
	private int trend_age;

}

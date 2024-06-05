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
public class naverResult {
	 private String title;
	    private String url;
	    private String date;
	    private String category;
	    private String description;

}

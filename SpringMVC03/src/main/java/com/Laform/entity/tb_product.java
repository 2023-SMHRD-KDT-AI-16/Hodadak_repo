package com.Laform.entity;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class tb_product {
	
	private int prod_idx; 
	private String corp_key;
	private String prod_name;
	private int prod_price;
	private String prod_img;
	private String prod_detail;
}

package com.Laform.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Criteria {
	//페이징에 필요한 파라미터
	private int pageNum;
	private int amount;
	
	public Criteria() {
		this(1,10); //기본값 1페이지, 출력 10개씩
	}
	
	public Criteria(int pageNum, int amount) {
		this.pageNum=pageNum;
		this.amount=amount;
	}
	
}

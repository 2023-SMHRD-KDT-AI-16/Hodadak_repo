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
public class tb_review {

    private int review_idx;
    private int prod_idx;
    private String review_content;
    private boolean review_rating;
    private LocalDate created_at;
    private String review_name;
    private String review_origin;
    private String review_oriDate;
}
package com.Laform.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.Laform.mapper.ReviewMapper;

@RestController
public class ReviewRestController {
	
	@Autowired
	private ReviewMapper reviewMapper;
	
	
}

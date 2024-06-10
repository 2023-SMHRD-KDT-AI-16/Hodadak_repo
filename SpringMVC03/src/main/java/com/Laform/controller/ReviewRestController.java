package com.Laform.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.Laform.entity.tb_review;
import com.Laform.mapper.ReviewMapper;

@RestController
public class ReviewRestController {
	//기업 데이터의 리뷰
	
	@Autowired
	private ReviewMapper reviewMapper;
	
	@GetMapping("getReviewP.do")
	public List<tb_review> getReviewP(int prod_idx){
		List<tb_review> list = reviewMapper.getReviewP(prod_idx);
		return list;
		
	}
	
	@GetMapping("getReviewN.do")
	public List<tb_review> getReviewN(int prod_idx){
		List<tb_review> list = reviewMapper.getReviewN(prod_idx);
		return list;
		
	}
	
	@GetMapping("getReview.do")
    public Map<String, Object> getReview(@RequestParam("prod_idx") int prod_idx) {
        List<tb_review> list = reviewMapper.getReview(prod_idx);

        // 날짜별 긍정 및 부정 리뷰 수를 저장할 맵
        Map<String, Map<String, Integer>> groupedData = new LinkedHashMap<>();

        // 리뷰 데이터를 순회하며 날짜별 긍정 및 부정 리뷰 수를 계산
        for (tb_review review : list) {
            String dateString = review.getReview_oriDate(); // 문자열로 된 날짜
            boolean isPositive = review.isReview_rating();
            
            // SimpleDateFormat을 사용하여 문자열을 Date 객체로 변환
            SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
            Date date;
            try {
                date = format.parse(dateString);
            } catch (ParseException e) {
                e.printStackTrace();
                continue; // 날짜를 파싱할 수 없으면 다음 리뷰로 넘어감
            }

            Calendar cal = Calendar.getInstance();
            cal.setTime(date);
            String monthYear = (cal.get(Calendar.MONTH) + 1) + "-" + cal.get(Calendar.YEAR);

            // 해당 날짜에 해당하는 맵이 없으면 새로 생성
            if (!groupedData.containsKey(monthYear)) {
                groupedData.put(monthYear, new HashMap<>());
            }

            Map<String, Integer> counts = groupedData.get(monthYear);
            counts.put("positive", counts.getOrDefault("positive", 0) + (isPositive ? 1 : 0));
            counts.put("negative", counts.getOrDefault("negative", 0) + (isPositive ? 0 : 1));
        }

        // 클라이언트로 전송할 데이터 구성
        Map<String, Object> responseData = new HashMap<>();
        List<String> labels = new ArrayList<>();
        List<Integer> positiveData = new ArrayList<>();
        List<Integer> negativeData = new ArrayList<>();

        for (String monthYear : groupedData.keySet()) {
            Map<String, Integer> counts = groupedData.get(monthYear);
            labels.add(monthYear);
            positiveData.add(counts.getOrDefault("positive", 0));
            negativeData.add(counts.getOrDefault("negative", 0));
        }

        responseData.put("labels", labels);
        responseData.put("positiveData", positiveData);
        responseData.put("negativeData", negativeData);

        System.out.println("responseData : "+responseData);
        return responseData;
    }
	
}

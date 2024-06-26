package com.Laform.controller;

import java.net.URI;
import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.RequestEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import com.Laform.entity.naverResult;


@RestController // @Controller 대신 @RestController 사용
public class NaverController {

    private static final Logger log = LoggerFactory.getLogger(NaverController.class);

    @GetMapping(value = "/naver", produces = "text/plain; charset=UTF-8")
    public ResponseEntity<String> naver(@RequestParam String query) { // 메서드 반환 타입을 ResponseEntity<String>으로 명시

        URI uri = UriComponentsBuilder
                .fromUriString("https://openapi.naver.com")
                .path("/v1/search/blog.json")
                .queryParam("query", query)
                .build()
                .encode()
                .toUri();
        
        URI uri2 = UriComponentsBuilder
                .fromUriString("https://openapi.naver.com")
                .path("/v1/search/news.json")
                .queryParam("query", query)
                .build()
                .encode()
                .toUri();

        RestTemplate restTemplate = new RestTemplate();
        
        // 헤더 추가
        RequestEntity<Void> req = RequestEntity
                .get(uri)
                .header("X-Naver-Client-Id", "FAb4bunxl3DNMBTgbAkh")
                .header("X-Naver-Client-Secret", "yTxKC3XSAN")
                .build();
        
        RequestEntity<Void> req2 = RequestEntity
                .get(uri2)
                .header("X-Naver-Client-Id", "FAb4bunxl3DNMBTgbAkh")
                .header("X-Naver-Client-Secret", "yTxKC3XSAN")
                .build();

        ResponseEntity<String> result = restTemplate.exchange(req, String.class);
        ResponseEntity<String> result2 = restTemplate.exchange(req2, String.class);
        
        ArrayList<naverResult> n_result =new ArrayList<naverResult>();
       
        return result; // 결과를 ResponseEntity 객체로 반환
    }
}
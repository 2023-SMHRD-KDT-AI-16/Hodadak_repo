package com.Laform.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.springframework.http.*;

@Service
public class ChatGptService {
    private final RestTemplate restTemplate;
    private String apiKey;

    @Autowired
    public ChatGptService(RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }

    // 세터 메소드 추가
    public void setApiKey(String apiKey) {
        this.apiKey = apiKey;
    }

    public String getResponse(String prompt) {
        String url = "https://api.openai.com/v1/chat/completions";
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);
        headers.add("Authorization", "Bearer " + apiKey);
        HttpEntity<String> entity = new HttpEntity<>(String.format("{\"prompt\":\"%s\", \"max_tokens\":150}", prompt), headers);

        ResponseEntity<String> response = restTemplate.postForEntity(url, entity, String.class);
        return response.getBody();
    }
}
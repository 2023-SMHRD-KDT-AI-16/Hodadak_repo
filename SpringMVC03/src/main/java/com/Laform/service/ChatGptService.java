package com.Laform.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

@Service
public class ChatGptService {
    private final RestTemplate restTemplate;
    private String apiKey;

    @Autowired
    public ChatGptService(RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }

    @Value("${chatgpt.api.key}")
    public void setApiKey(String apiKey) {
        this.apiKey = apiKey;
    }

    public String getResponse(String prompt) {
        String url = "https://api.openai.com/v1/chat/completions";
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);
        headers.add("Authorization", "Bearer " + apiKey);

        String requestBody = String.format(
            "{\"model\": \"gpt-3.5-turbo\", \"messages\": [{\"role\": \"user\", \"content\": \"%s\"}], \"max_tokens\": 150}",
            prompt
        );
        HttpEntity<String> entity = new HttpEntity<>(requestBody, headers);

        try {
            ResponseEntity<String> response = restTemplate.postForEntity(url, entity, String.class);
            return response.getBody();
        } catch (HttpClientErrorException e) {
            // 400 Bad Request 또는 기타 클라이언트 오류에 대한 추가 디버깅 정보 출력
            System.err.println("HTTP Error: " + e.getStatusCode());
            System.err.println("Response Body: " + e.getResponseBodyAsString());
            return "Error: " + e.getMessage();
        } catch (RestClientException e) {
            e.printStackTrace();
            return "Error: " + e.getMessage();
        }
    }
}
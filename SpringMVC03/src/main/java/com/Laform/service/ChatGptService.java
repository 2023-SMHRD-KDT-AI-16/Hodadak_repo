package com.Laform.service;

import java.nio.charset.StandardCharsets;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.stereotype.Service;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

@Service
public class ChatGptService {
    private RestTemplate restTemplate;
    private String apiKey;
    private ObjectMapper objectMapper; // JSON 처리를 위한 ObjectMapper 추가

    // RestTemplate을 인자로 받는 생성자
    public ChatGptService(RestTemplate restTemplate) {
        restTemplate.getMessageConverters().add(0, new StringHttpMessageConverter(StandardCharsets.UTF_8));
        this.restTemplate = restTemplate;
        this.objectMapper = new ObjectMapper(); // ObjectMapper 인스턴스화
    }

    // apiKey 세터
    public void setApiKey(String apiKey) {
        this.apiKey = apiKey;
    }

    public String getResponse(String prompt) {
        String url = "https://api.openai.com/v1/chat/completions";
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(new MediaType("application", "json", StandardCharsets.UTF_8));  // 인코딩 추가
        headers.add("Authorization", "Bearer " + apiKey);

        String requestBody = String.format(
            "{\"model\": \"gpt-3.5-turbo\", \"messages\": [{\"role\": \"user\", \"content\": \"%s\"}], \"max_tokens\": 200}",
            prompt
        );
        HttpEntity<String> entity = new HttpEntity<>(requestBody, headers);
        System.out.println(entity);
        try {
            ResponseEntity<String> response = restTemplate.postForEntity(url, entity, String.class);
            JsonNode rootNode = objectMapper.readTree(response.getBody());
            String content = rootNode.path("choices").get(0).path("message").path("content").asText();
            return content; // content 값만 추출하여 리턴
        } catch (HttpClientErrorException e) {
            System.err.println("HTTP Error: " + e.getStatusCode());
            System.err.println("Response Body: " + e.getResponseBodyAsString());
            return "Error: " + e.getMessage();
        } catch (RestClientException e) {
            e.printStackTrace();
            return "Error: " + e.getMessage();
        } catch (Exception e) { // JSON 처리 중 예외 처리
            e.printStackTrace();
            return "Error parsing JSON response: " + e.getMessage();
        }
    }
}
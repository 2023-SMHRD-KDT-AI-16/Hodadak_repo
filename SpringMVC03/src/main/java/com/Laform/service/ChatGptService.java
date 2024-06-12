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

import com.fasterxml.jackson.core.JsonProcessingException;
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
    
    public String getLdaResponse(String prompt) {
        try {
            // Prompt 데이터를 JSON 형식의 문자열로 포맷팅
            String requestBody = objectMapper.writeValueAsString(prompt);
            
            String url = "https://api.openai.com/v1/chat/completions";
            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(new MediaType("application", "json", StandardCharsets.UTF_8));  // 인코딩 추가
            headers.add("Authorization", "Bearer " + apiKey);
            //System.out.println("프롬프트"+prompt);
            
            String systemContent="약사 2명의 대표가 건강기능식품을 판매하는 기업의 리뷰 데이터로 lda분석을 실시한 결과야.  신메뉴 제안을 위한 키워드조합은 밀레니얼 세대 트렌드랑 lda결과랑 같이 분석해서 5가지만 출력해줘";
            // 요청 생성
            String requestBody1 = String.format(
            	    "{\"model\": \"gpt-3.5-turbo\", \"messages\": [{\"role\": \"user\", \"content\": %s}, {\"role\": \"system\", \"content\": \"%s\"}], \"max_tokens\": 1000, \"temperature\": 0}",
            	    prompt,systemContent
            	);
            HttpEntity<String> entity = new HttpEntity<>(requestBody1, headers);
            //System.out.println(requestBody1);
            
            // 요청 전송 및 응답 처리
            ResponseEntity<String> response = restTemplate.postForEntity(url, entity, String.class);
            JsonNode rootNode = objectMapper.readTree(response.getBody());
            String content = rootNode.path("choices").get(0).path("message").path("content").asText();
            
            // content 값 반환
            return content;
        } catch (JsonProcessingException e) {
            e.printStackTrace();
            return "Error processing JSON: " + e.getMessage();
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
    
    
    public String getLdaStrong(String prompt) {
        try {
            // Prompt 데이터를 JSON 형식의 문자열로 포맷팅
            String requestBody = objectMapper.writeValueAsString(prompt);
            
            String url = "https://api.openai.com/v1/chat/completions";
            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(new MediaType("application", "json", StandardCharsets.UTF_8));  // 인코딩 추가
            headers.add("Authorization", "Bearer " + apiKey);
            //System.out.println("프롬프트"+prompt);
            
            String systemContent="약사 2명의 대표가 건강기능식품을 판매하는 기업의 리뷰 데이터로 lda분석을 실시한 결과야. 이걸 가지고 기업의 강점 3가지 출력해줘";
            // 요청 생성
            String requestBody1 = String.format(
            	    "{\"model\": \"gpt-3.5-turbo\", \"messages\": [{\"role\": \"user\", \"content\": %s}, {\"role\": \"system\", \"content\": \"%s\"}], \"max_tokens\": 1000, \"temperature\": 0}",
            	    prompt,systemContent
            	);
            HttpEntity<String> entity = new HttpEntity<>(requestBody1, headers);
            //System.out.println(requestBody1);
            
            // 요청 전송 및 응답 처리
            ResponseEntity<String> response = restTemplate.postForEntity(url, entity, String.class);
            JsonNode rootNode = objectMapper.readTree(response.getBody());
            String content = rootNode.path("choices").get(0).path("message").path("content").asText();
            
            // content 값 반환
            return content;
        } catch (JsonProcessingException e) {
            e.printStackTrace();
            return "Error processing JSON: " + e.getMessage();
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
    
    public String getLdaWeak(String prompt) {
        try {
            // Prompt 데이터를 JSON 형식의 문자열로 포맷팅
            String requestBody = objectMapper.writeValueAsString(prompt);
            
            String url = "https://api.openai.com/v1/chat/completions";
            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(new MediaType("application", "json", StandardCharsets.UTF_8));  // 인코딩 추가
            headers.add("Authorization", "Bearer " + apiKey);
            //System.out.println("프롬프트"+prompt);
            
            String systemContent="약사 2명의 대표가 건강기능식품을 판매하는 기업의 리뷰 데이터로 lda분석을 실시한 결과야. 이걸 가지고 기업의 취약점  3가지 출력해줘";
            // 요청 생성
            String requestBody1 = String.format(
            	    "{\"model\": \"gpt-3.5-turbo\", \"messages\": [{\"role\": \"user\", \"content\": %s}, {\"role\": \"system\", \"content\": \"%s\"}], \"max_tokens\": 1000, \"temperature\": 0}",
            	    prompt,systemContent
            	);
            HttpEntity<String> entity = new HttpEntity<>(requestBody1, headers);
            //System.out.println(requestBody1);
            
            // 요청 전송 및 응답 처리
            ResponseEntity<String> response = restTemplate.postForEntity(url, entity, String.class);
            JsonNode rootNode = objectMapper.readTree(response.getBody());
            String content = rootNode.path("choices").get(0).path("message").path("content").asText();
            
            // content 값 반환
            return content;
        } catch (JsonProcessingException e) {
            e.printStackTrace();
            return "Error processing JSON: " + e.getMessage();
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
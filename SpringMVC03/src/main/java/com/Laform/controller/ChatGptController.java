package com.Laform.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.Laform.entity.PromptRequest;
import com.Laform.entity.tb_corperation;
import com.Laform.mapper.CorperationMapper;
import com.Laform.service.ChatGptService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@RestController()
public class ChatGptController {
	 
    private final ChatGptService chatGptService;
    private final ObjectMapper objectMapper = new ObjectMapper();

    @Autowired
    public ChatGptController(ChatGptService chatGptService) {
        this.chatGptService = chatGptService;
    }


    @PostMapping(value = "/chat", produces = "text/plain; charset=UTF-8")
    public ResponseEntity<String> chat(@RequestBody PromptRequest request,HttpServletResponse hresponse) {
        String prompt = request.getPrompt();
        //System.out.println(prompt);
        String response = chatGptService.getResponse(prompt);
        System.out.println("response :"+response);
        hresponse.setCharacterEncoding("UTF-8");
    
        return ResponseEntity.ok(response);
    }
    
    @PostMapping(value = "/chatLda", produces = "text/plain; charset=UTF-8")
    public ResponseEntity<String> chatLda(@RequestBody PromptRequest request, HttpServletResponse hresponse) {
        try {
            // PromptRequest 객체를 JSON 문자열로 변환
            String promptJson = objectMapper.writeValueAsString(request.getPrompt());
            System.out.println("prompt JSON: " + promptJson);
            
            // chatGptService.getLdaResponse()를 사용하여 응답 얻기
            String response = chatGptService.getLdaResponse(promptJson);
            System.out.println("response :" + response);
            
            hresponse.setCharacterEncoding("UTF-8");

            // ResponseEntity로 응답 반환
            return ResponseEntity.ok(response);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
            // 예외 발생 시 ResponseEntity로 오류 응답 반환
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error processing JSON");
        }
    }

}

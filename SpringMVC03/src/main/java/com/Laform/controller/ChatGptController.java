package com.Laform.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.Laform.entity.PromptRequest;
import com.Laform.entity.tb_corperation;
import com.Laform.mapper.CorperationMapper;
import com.Laform.service.ChatGptService;

@RestController
public class ChatGptController {
	 
    private final ChatGptService chatGptService;

    @Autowired
    public ChatGptController(ChatGptService chatGptService) {
        this.chatGptService = chatGptService;
    }

    @PostMapping("/chat")
    public ResponseEntity<String> chat(@RequestBody PromptRequest request) {
        String prompt = request.getPrompt();
        System.out.println(prompt);
        String response = chatGptService.getResponse(prompt);
        return ResponseEntity.ok(response);
    }

}

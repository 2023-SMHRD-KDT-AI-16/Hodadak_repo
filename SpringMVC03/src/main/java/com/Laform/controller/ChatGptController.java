package com.Laform.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.Laform.service.ChatGptService;

@RestController
@RequestMapping("/chat")
public class ChatGptController {
    private final ChatGptService chatGptService;

    @Autowired
    public ChatGptController(ChatGptService chatGptService) {
        this.chatGptService = chatGptService;
    }

    @PostMapping
    public ResponseEntity<String> chat(@RequestBody String prompt) {
    	System.out.println("지피티");
        String response = chatGptService.getResponse(prompt);
        return ResponseEntity.ok(response);
    }
}
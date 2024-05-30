package com.Laform.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

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

@RestController()
public class ChatGptController {
	 
    private final ChatGptService chatGptService;

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

}

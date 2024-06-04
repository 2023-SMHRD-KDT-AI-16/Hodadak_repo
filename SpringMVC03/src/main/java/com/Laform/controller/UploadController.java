package com.Laform.controller;

import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileSystemUtils;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.client.RestTemplate;
import org.springframework.core.io.FileSystemResource;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

@Controller
public class UploadController {


	@PostMapping("/upload")
	public String handleFileUpload(@RequestParam("file") MultipartFile file, Model model) {
	    if (file.isEmpty()) {
	        model.addAttribute("message", "Please select a file to upload.");
	        return "test";
	    }

	    try {
	        // Save the uploaded file to a temporary directory
	        Path tempDir = Files.createTempDirectory("");
	        Path tempFile = tempDir.resolve(file.getOriginalFilename());
	        Files.copy(file.getInputStream(), tempFile, StandardCopyOption.REPLACE_EXISTING);

	        // Print the uploaded file name to console
	        System.out.println("Uploaded file name: " + file.getOriginalFilename());

	        // Clean up temporary files
	        FileSystemUtils.deleteRecursively(tempDir);

	        model.addAttribute("message", "File uploaded successfully.");
	    } catch (IOException e) {
	        e.printStackTrace();
	        model.addAttribute("message", "Failed to upload file: " + e.getMessage());
	    }

	    return "test";
	}
}
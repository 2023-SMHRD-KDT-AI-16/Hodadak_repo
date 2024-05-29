<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Chat with GPT</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(document).ready(function() {
    $("#submitButton").click(function() {
        var myData = $("#promptInput").val();
        $.ajax({
            url: '/chat',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify({ data: myData }),
            success: function(response) {
                console.log("서버로부터의 응답:", response);
            },
            error: function(xhr, status, error) {
                console.error("에러 발생:", error);
            }
        });
    });
});
</script>
</head>
<body>
    <h1>Chat with GPT</h1>
    <input type="text" id="promptInput" placeholder="Enter your prompt" />
    <button id="submitButton">Send</button>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Chat with GPT</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script>
$(document).ready(function() { 
	//ChatGPT API
    $("#submitButton").click(function() {
        var myData = $("#promptInput").val();
        $.ajax({
            url: 'chat',
            type: 'POST',
            contentType: 'application/json;charset:UTF-8',
            data: JSON.stringify({ prompt: myData }),
            success: function(response) {
                console.log("서버로부터의 응답:", response);
            },
            error: function(xhr, status, error) {
                console.error("에러 발생:", error);
            }
        });
    });
});

//네이버검색 API 
function naverSearch(query){
	$.ajax({
        url: 'naver',  // 백엔드의 /naver 엔드포인트 호출
        type: 'GET',    // HTTP 메소드
        contentType: 'application/json;charset:UTF-8', // 반환받을 데이터의 타입
        data: { query: query },  // 서버로 보낼 데이터
        success: function(response) {
            console.log("서버로부터의 응답:", response);
            innerHtml=""
            for(let i = 0; i<response.items.length;i++){
            	var url = ensureCompleteUrl(response.items[i].link);
            	innerHtml += "<h3><a onclick='modalOpen(\"" + url + "\")'>" + response.items[i].title + "</a></h3><br>";
            }
            $("#searchResult").html(innerHtml)
        },
        error: function(xhr, status, error) {
            console.error("에러 발생:", error);
        }
    });
}


function ensureCompleteUrl(url) { //네이버 검색으로 받아온 link 변환
	  if (!url.startsWith('http://') && !url.startsWith('https://')) {
	    return 'https://' + url; // 기본적으로 https를 사용하거나 필요에 따라 조정
	  }
	  return url;
	}


function modalOpen(link){ //제목클릭시 해당 페이지 
	window.open(link)
}
</script>
</head>
<body>
    <h1>Chat with GPT</h1>
    <input type="text" id="promptInput" placeholder="Enter your prompt" />
    <button id="submitButton">Send</button>
    <br>
    
    
<button onclick="naverSearch('갓생')">갓생</button>
<button onclick="naverSearch('스트레스')">스트레스</button>
<button onclick="naverSearch('혈당')">혈당</button>
<br>
<span id="searchResult"></span>

</body>
</html>
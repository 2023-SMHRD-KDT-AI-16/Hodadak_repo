<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript">
  

	$(document).ready(function(){
  		if(${not empty msgType}){
  			if(${msgType eq "실패 메세지"}){
  				$("#messageType").attr("class", "modal-content panel-warning");
  			}
  			$("#myMessage").modal("show");
  		}
  	});
  
	
  function handleKeyPress(event) {
      if (event.keyCode === 13) { // 만약 누른 키가 엔터 키라면
    	  $("#corp_login").trigger("click"); // 코드 확인 함수 호출
      }
  }
  
  
</script>


</head>
<body>


	
	
  <h3>Spring MVC03</h3>
  
  <div class="panel panel-default">

	  <div class="panel-body">
	  
	  		<ul class="nav nav-tabs">
			    <li class="active"><a data-toggle="tab" href="#home">Home</a></li>
			    <li><a data-toggle="tab" href="#menu1">게시판</a></li>
			  </ul>
			
			  <div class="tab-content">
			    <div id="home" class="tab-pane fade in active">
			      <h3>HOME</h3>
			        
			         <div class="input-wrapper">
			         <form action="login.do" method="post">
        <input type="password" id="input-code" name="corp_key" placeholder="코드를 입력하세요." onkeypress="handleKeyPress(event)">
        <button type="submit" id="corp_login" style="visibility: hidden"></button>
    	</form>
    </div>

			    </div>
			    <div id="menu1" class="tab-pane fade">
			      <h3>게시판</h3>
			      <div class="panel-heading">기업목록</div>
				    <div class="panel-body" id="view">
							<table class = "table table-hover">
		<thead>
			<tr class="success">
				<th>번호</th>
				<th>기업명</th>
				<th>전화번호</th>
				<th>주소</th>
				<th>이메일</th>
				<th>가입일자</th>
			</tr>

		
		</thead>
		<tbody>
			<!-- 기업 리스트 출력  -->
			
			<c:forEach var="vo" items="${list}"  varStatus="status"> 
				<tr>
					<td>${status.index+1}</td>
					<td><a href = "#"><c:out value ="${vo.corp_name}"></c:out></a></td>
					<td>${vo.corp_tel}</td>
					<td>${vo.corp_addr}</td>
					<td>${vo.corp_email}</td>
					<td>${vo.joined_at}</td>
				</tr>
			</c:forEach>

		
		</tbody>
	</table>
					</div>
			

</div>





<!-- 다이얼로그창(모달) -->
	<!-- 회원가입 실패시 나오게될 모달창 -->
	<!-- Modal -->
	  <div class="modal fade" id="myMessage" role="dialog">
	    <div class="modal-dialog">
	    
	      <!-- Modal content-->
	      <div id="messageType" class="modal-content panel-info">
	        <div class="modal-header panel-heading">
	          <button type="button" class="close" data-dismiss="modal">&times;</button>
	          <h4 class="modal-title">${msgType}</h4>
	        </div>
	        <div class="modal-body">
	          <p id="">${msg}</p>
	        </div>
	        <div class="modal-footer">
	          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	        </div>
	      </div>
	    </div>
	  </div>

</body>
</html>









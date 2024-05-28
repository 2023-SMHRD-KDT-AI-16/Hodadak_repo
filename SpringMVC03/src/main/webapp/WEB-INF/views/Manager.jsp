<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE HTML>
<html>

<head>
<title>La Form</title>
<link href="${pageContext.request.contextPath}/resources/img/프리지아.png"
	rel="icon" type="image/png">
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/main1.css" />
<noscript>
	<link rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/noscript.css" />
</noscript>
</head>

<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<header id="header">
			<div class="logo">
				<span class="icon fa-gem"></span>
			</div>
			<div class="content">
				<div class="inner">
					<h1>manager</h1>
					<p>
						Su su su Supernova Nova Can't stop hyperstellar <br /> Bring the
						light of a dying star Supernova <br /> for free under the
						Creative Commons
					</p>
				</div>
			</div>
			<nav>
				<ul>
					<li><a href="#contact">회원추가</a></li>
					<li><a href="#elements">기업목록</a></li>
					<li><a href="${pageContext.request.contextPath}/logout.do">로그아웃</a></li>
				</ul>
			</nav>
		</header>

		<!-- Main -->
		<div id="main">

			<!-- 회원추가 -->
			<article id="contact">
				<h2 class="major">회원추가</h2>
				<form method="post" action="corpInsert">
					<div class="fields">
						<div class="field half">
							<label for="name">기업명</label> <input type="text" name="corp_name"
								id="name" />
						</div>
						<div class="field half">
							<label for="phone">전화번호</label> <input type="text"
								name="corp_tel" id="phone" />
						</div>
						<div class="field half">
							<label for="email">이메일</label> <input type="text"
								name="corp_email" id="email" />
						</div>
						<div class="field half">
							<label for="addres">주소</label> <input type="text"
								name="corp_addr" id="addres" />
						</div>
					</div>
					<ul class="actions">
						<li><input type="submit" value="회원 등록" class="primary" /></li>
						<li><input type="reset" value="취소" /></li>
					</ul>
				</form>
				<ul class="icons">
					<li><a href="#" class="icon brands fa-twitter"><span
							class="label">Twitter</span></a></li>
					<li><a href="#" class="icon brands fa-facebook-f"><span
							class="label">Facebook</span></a></li>
					<li><a href="#" class="icon brands fa-instagram"><span
							class="label">Instagram</span></a></li>
					<li><a href="#" class="icon brands fa-github"><span
							class="label">GitHub</span></a></li>
				</ul>
			</article>


			<!-- 기업목록 -->
			<article id="elements">
				<h2 class="major">기업목록</h2>

				<section>
					<h3 class="major">목록</h3>



					<section>
						<div class="table-wrapper" id="view"></div>


					</section>
			</article>

		</div>

		<!-- Footer -->
		<footer id="footer"> </footer>

	</div>

	<!-- BG -->
	<div id="bg"></div>

	<!-- Scripts -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.min2.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/browser.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/breakpoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/util2.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/main1.js"></script>
	<script type="text/javascript">
	

	$(document).ready(function(){
		corpList()
	})
	
	function corpList(){
		$.ajax({
			url :"corpList.do",
			type : "get", 
			dataType : "json",
			success: makeView,
			error:function(){
				alert("error")
			}
		})
	}
	
	function makeView(data){ //data = [{key:value},{},{},...]
		console.log(data)
		var listHtml = "<table>"
			listHtml +="<thead>"
			listHtml +="<tr>"
			listHtml +="<th>번호</th>"
			listHtml +="<th>기업코드</th>"
			listHtml +="<th>기업명</th>"
			listHtml +="<th>전화번호</th>"
			listHtml +="<th>이메일</th>"
			listHtml +="<th>주소</th>"
			listHtml +="<th>수정</th>"
			listHtml +="<th>삭제</th>"
			listHtml +="</tr>"
			listHtml +="</thead>"
			
			listHtml +="</tbody>"
		$.each(data,function(index,obj){
			listHtml +="<tr>"
			listHtml+= "<td>"+(index+1)+"</td>";
			listHtml +="<td>"+obj.corp_key+"</td>"
			listHtml +="<td id='t"+obj.corp_key+"'>"+obj.corp_name+"</td>"
			listHtml +="<td>"+obj.corp_tel+"</td>"
			listHtml +="<td>"+obj.corp_addr+"</td>"
			listHtml +="<td>"+obj.corp_email+"</td>"
			listHtml +="<td><button class='btn btn-sm' onclick='goUpdateForm("+obj.corp_tel+")'>수정</button></td>"
			listHtml +="<td><button class='btn btn-sm' onclick='goDelete("+obj.corp_key+")'>삭제</button></td>"
			listHtml +="</tr>"
	})
			listHtml +="</tbody>"
			listHtml += "</table>"
			

		//view라는 id값을 가진 요소를 가지고 온 다음에 
		//그 태그 안쪽에 html형식으로 뿌려주겠다 
		$("#view").html(listHtml);
		
	}
	
	
	function goList(){
		$("#view").css("display","block");
	}
	
	
	//게시글 수정하는 화면 (Form) 만들어주는 함수 
	function goUpdateForm(key){
		console.log(key)	
	}
	
	</script>
</body>

</html>
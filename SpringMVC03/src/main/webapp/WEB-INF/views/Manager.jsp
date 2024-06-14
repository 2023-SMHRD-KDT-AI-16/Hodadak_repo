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

<style>
body {
	background-image:
		url('${pageContext.request.contextPath}/resources/img/pic03.jpg');
	background-size: cover;
	background-position: center;
	background-repeat: no-repeat;
}

.page-link {
	padding: 5px 10px;
	margin-right: 10px;
	color: white;
	text-decoration: none;
}

.page-link:hover {
	background-color: #e9ecef;
	border-radius: 5px; /* 모서리를 둥글게 */
}

.page-link.active {
	font-weight: bold;
	background-color: whitesmoke;
	color: black;
	border-radius: 5px; /* 모서리를 둥글게 */
}
</style>
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
			<article id="elements" style="width: 1300px">
				<h2 class="major">기업목록</h2>

				<section>
					<section>
						<div class="table-wrapper" id="view"></div>
					</section>
					<div id="pagination"></div>
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
$(document).ready(function() {
    corpList(1); // 페이지 로드 시 첫 번째 페이지 데이터 로드
});

function corpList(pageNumber) {
    currentPage = pageNumber;
    $.ajax({
        url: "corpList.do",
        type: "get",
        dataType: "json",
        data: {
            pageNum: (currentPage - 1) * 5,
        },
        success: function(response) {
            var data = response.list;
            var totalRecords = response.total;
            makeView(data,pageNumber);
            updatePaginationControls(totalRecords, currentPage);
        },
        error: function() {
            alert("Error fetching data.");
        }
    });
}


function updatePaginationControls(totalRecords, currentPage) {
    var recordsPerPage = 5;
    var totalPages = Math.ceil(totalRecords / recordsPerPage);
    var pageGroupSize = 5; // 한 번에 보여줄 페이지 번호의 수
    var currentPageGroup = Math.ceil(currentPage / pageGroupSize); // 현재 페이지 그룹
    var startPage = (currentPageGroup - 1) * pageGroupSize + 1; // 그룹의 시작 페이지
    var endPage = Math.min(totalPages, startPage + pageGroupSize - 1); // 그룹의 끝 페이지

    var paginationHtml = '<div style="display: flex; justify-content: center; margin-top: 20px;">';

    // 이전 페이지 그룹 링크
    if (currentPageGroup > 1) {
        paginationHtml += '<a  onclick="event.preventDefault(); corpList(' + (startPage - 1) + ');" class="page-link"><<</a>';
    }

    // 페이지 번호 링크 (선택적으로 표시, 필요에 따라 제거 가능)
    for (var i = startPage; i <= endPage; i++) {
        paginationHtml += '<a onclick="event.preventDefault(); corpList(' + i + ');" class="page-link ' + (i === currentPage ? 'active' : '') + '">' + i + '</a>';
    }

    // 다음 페이지 그룹 링크
    if (endPage < totalPages) {
        paginationHtml += '<a  onclick="event.preventDefault(); corpList(' + (endPage + 1) + ');" class="page-link">>></a>';
    }

    paginationHtml += '</div>';
    $('#pagination').html(paginationHtml);
}

function makeView(data, pageNumber) {
    var listHtml = "<table class='table'>";
    listHtml += "<thead><tr><th>기업코드</th><th>기업명</th><th>전화번호</th><th>이메일</th><th>주소</th><th>수정</th><th>삭제</th></tr></thead><tbody>";
   
    $.each(data, function(index, obj) {
        listHtml += "<tr><td>" + obj.corp_key + "</td><td  id=n"+obj.corp_key+">" + obj.corp_name + "</td>";
        listHtml += "<td  id=t"+obj.corp_key+">" + obj.corp_tel + "</td><td id=e"+obj.corp_key+">" + obj.corp_email + "</td><td id=a"+obj.corp_key+">" + obj.corp_addr + "</td>";
        listHtml += "<td id=ud"+obj.corp_key+"><button  onclick='goUpdateForm(\"" + obj.corp_key + "\", " + pageNumber + ")'>수정</button></td>";
        listHtml += "<td><button onclick='goDelete(\"" + obj.corp_key + "\", " + pageNumber + ")'>삭제</button></td></tr>";
    });

    listHtml += "</tbody></table>";
    $('#view').html(listHtml);
}
	
	function goList(){
		$("#view").css("display","block");
	}
	
	
	//게시글 수정하는 화면 (Form) 만들어주는 함수 
	function goUpdateForm(key,pageNumber){
		var name=$("#n"+key).text();
		var tell=$("#t"+key).text();
		var email=$("#e"+key).text();
		var addr=$("#a"+key).text();

		console.log(key,pageNumber,name,tell,email,addr)
		
		var nameInput ="<input type='text' id ='ni"+key+"' value='"+name+"'> "
		$("#n"+key).html(nameInput)
		var tellInput ="<input type='text' id ='ti"+key+"' value='"+tell+"'> "
		$("#t"+key).html(tellInput)
		var emailInput ="<input type='text' id ='ei"+key+"' value='"+email+"'> "
		$("#e"+key).html(emailInput)
		var addrInput ="<input type='text' id ='ai"+key+"' value='"+addr+"'> "
		$("#a"+key).html(addrInput)
		
		   var newButton = "<button class='btn btn-sm' onclick='goUpdate(\"" + key + "\", " + pageNumber + ")'>수정하기</button>";
	    $("#ud" + key).html(newButton);
	}
	
	
	function goUpdate(key,pageNumber){
		var corp_name = $("#ni"+key).val();
		var corp_tel = $("#ti"+key).val();
		var corp_email = $("#ei"+key).val();
		var corp_addr = $("#ai"+key).val();
		console.log(corp_name,corp_tel,corp_email,corp_addr)
		
		$.ajax({
			url: "update",
			type:"put",
			contentType: "application/json; charset=UTF-8",
			data:JSON.stringify({"corp_name":corp_name,"corp_tel":corp_tel, "corp_email":corp_email, "corp_addr":corp_addr,"corp_key":key}),
			success:function(){
				alert("수정되었습니다")
				corpList(pageNumber)
			},
			error:function(){
				alert("error")
			}
		})
	}
	
	
	function goDelete(corp_key,pageNumber){
		//console.log(corp_key)
		$.ajax({
			url: corp_key,
			type:"delete",
			success:function(){
				alert("삭제되었습니다")
				corpList(pageNumber)
			},
			error:function(){
				alert("error")
				}
		})
	}
	</script>
</body>

</html>
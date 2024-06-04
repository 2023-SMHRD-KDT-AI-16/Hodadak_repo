<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>La Form</title>
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/gh/bmabey/pyLDAvis@3.4.0/pyLDAvis/js/ldavis.v1.0.0.css">
<!-- Favicon -->
<link href="${pageContext.request.contextPath}/resources/img/프리지아.png"
	rel="icon" type="image/png">
<!-- Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
	rel="stylesheet">
<!-- Icons -->
<link
	href="${pageContext.request.contextPath}/resources/js/plugins/nucleo/css/nucleo.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/js/plugins/@fortawesome/fontawesome-free/css/all.min.css"
	rel="stylesheet" />
<!-- CSS Files -->
<link
	href="${pageContext.request.contextPath}/resources/css/argon-dashboard.css?v=1.1.2"
	rel="stylesheet" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/sakura.css" />
<style type="text/css">

</style>
</head>

<!-- body -->

<body>
	<div id="particle-1"></div>
	<nav
		class="navbar navbar-vertical fixed-left navbar-expand-md navbar-light bg-white"
		id="sidenav-main" style="padding: 1;">
		<div class="container-fluid">

			<!-- Toggler -->
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#sidenav-collapse-main" aria-controls="sidenav-main"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<!-- Brand -->
			<a class="navbar-brand pt-0" href="dashboard.do"> <img
				src="${pageContext.request.contextPath}/resources/img/𝑳𝒂 𝑭𝒐𝒓𝒎_newtitle1.png"
				class="navbar-brand-img" alt="...">
			</a>

			<!-- User -->
			<ul class="nav align-items-center d-md-none">
				<li class="nav-item dropdown"><a class="nav-link nav-link-icon"
					href="#" role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"></li>
				<li class="nav-item dropdown"><a class="nav-link" href="#"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false">
						<div class="media align-items-center">
							<span class="avatar avatar-sm rounded-circle"> <img
								alt="Image placeholder"
								src="${pageContext.request.contextPath}/resources/img/프리지아.png">
							</span>
						</div>
				</a>
					<div class="dropdown-menu dropdown-menu-arrow dropdown-menu-right">
						<div class=" dropdown-header noti-title">
							<h6 class="text-overflow m-0">Welcome!</h6>
						</div>
						<div class="dropdown-divider"></div>
						<a href="Main.do" class="dropdown-item"> <i
							class="ni ni-user-run"></i> <span>Logout</span>
						</a>
					</div></li>
			</ul>

			<!-- Collapse -->
			<div class="collapse navbar-collapse" id="sidenav-collapse-main"
				style="background: linear-gradient(30deg, #feb47b, #815EE4, #ffffff, #ffffff);">

				<!-- 이미지 배경 -->
				<div class="collapse navbar-collapse" id="sidenav-collapse-main"
					style="background-color: #ffffff; background-size: cover;">

					<!-- Collapse header -->
					<div class="navbar-collapse-header d-md-none">
						<div class="row">
							<div class="col-6 collapse-brand">
								<a href="dashboard.do"> <img
									src="assets/img/𝑳𝒂 𝑭𝒐𝒓𝒎_newtitle1.png">
								</a>
							</div>
							<div class="col-6 collapse-close">
								<button type="button" class="navbar-toggler"
									data-toggle="collapse" data-target="#sidenav-collapse-main"
									aria-controls="sidenav-main" aria-expanded="false"
									aria-label="Toggle sidenav" style="background-color: black;"></button>
							</div>
						</div>
					</div>

					<!-- Form -->
					<form class="mt-4 mb-3 d-md-none">
						<div class="input-group input-group-rounded input-group-merge">
							<!-- 챗GPT API 들어갈 input 태그-->
							<input type="text" 
								class="form-control form-control-rounded form-control-prepended"
								placeholder="ChatGPT에게 물어보세요!" aria-label="Search">
							<div class="input-group-prepend">
								<div class="input-group-text">
									<span class="fa fa-search"></span>
								</div>
							</div>
						</div>
					</form>

					<!-- Navigation -->
					<ul class="navbar-nav">
						<li class="nav-item  active"><a
							class="nav-link  active hover12" href="dashboard.do"> <i
								class="ni ni-chart-bar-32 text-red "></i> Dashboard
						</a></li>
						<li class="nav-item"><a class="nav-link hover12"
							href="#"> <i class="ni ni-check-bold text-black"></i>
								Check'O
						</a></li>
						<li class="nav-item"><a class="nav-link hover12"
							href="#"> <i class="ni ni-basket text-orange"></i>
								Suggest
						</a></li>
					</ul>

				</div>
			</div>
	</nav>
	<div class="main-content">

		<!-- Navbar -->
		<nav class="navbar navbar-top navbar-expand-md navbar-dark"
			id="navbar-main">
			<div class="container-fluid">

				<!-- Brand -->
				<a
					class="h1 mb-0 text-black text-uppercase d-none d-lg-inline-block"
					href="dashboard.do">Dashboard</a>

				<!-- Form -->
				<form
					class="navbar-search navbar-search-dark form-inline mr-3 d-none d-md-flex ml-lg-auto">
					<div class="form-group mb-0">
						<div class="input-group input-group-alternative">
							<div class="input-group-prepend">
								<span class="input-group-text"> <i class="fas fa-search"
									style="color: black;"></i>
								</span>
							</div>
							<!-- 챗GPT API 들어갈 input 태그-->
							<input class="form-control" placeholder="Search" type="text" id="promptInput" 
								style="width: 850px;" onkeypress="if(event.keyCode=='13'){event.preventDefault(); gptSearch();}">
							<button type="submit" id="submitButton" style="visibility: hidden"></button>
						</div>
					</div>
				</form>

				<!-- User -->
				<ul class="navbar-nav align-items-center d-none d-md-flex">
					<li class="nav-item dropdown"><a class="nav-link pr-0"
						href="#" role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">
							<div class="media align-items-center">
								<div class="media-body ml-2 d-none d-lg-block">
									<span class="mb-0 text-sm  font-weight-bold"> <i
										class="fas fa-bars" style="color: black;"></i>
									</span>
								</div>
							</div>
					</a>
						<div class="dropdown-menu dropdown-menu-arrow dropdown-menu-right">
							<div class=" dropdown-header noti-title">
								<h6 class="text-overflow m-0">Welcome!</h6>
							</div>
							<div class="dropdown-divider"></div>
							<a href="Main.do" class="dropdown-item"> <i
								class="ni ni-user-run"></i> <span>Logout</span>
							</a>
						</div></li>
				</ul>
			</div>
		</nav>

		<!-- Header -->
		<div
			class="header bg-gradient-primary2 pb-8 pt-5 pt-md-8 position-relative">



			<div class="container-fluid">
				<div class="header-body">
					<!-- Card stats -->

				</div>
			</div>
		</div>

		<!-- Page content -->
		<div class="container-fluid mt--7">
		
		
			<!-- file upload Start Line -->
			<div>
				<div class="row">
						<div class="col-xl-12  mb-5 mb-xl-0">
							<div class="card shadow">
								<div class="card-header bg-transparent hover12">
									<div class="row align-items-center ">
		
										<div class="col">
											<h6 class="text-uppercase text-black ls-1 mb-1">CSV File Upload</h6>
											<h2 class="text-black mb-0">CSV 파일을 선택해주세요</h2>
										</div>
											
										<div class="col"></div>
									</div>
								</div>
								<div class="card-body " style="background-color: #ffffff;">
		
									<!-- 파일 업로드 하기위한 div 태그 -->
									<div class="chart" style="display: block;height: 355px;width: 1550px;">
										<form id="testForm" enctype="multipart/form-data">
											<input type="text" id="name"/>
											<input type="file" id="file"/>
											<button id="button1">submit</button>
										</form>
									</div>
		
								</div>
							</div>
						</div>
					</div>
				 	
				 	
				 	
				 
					<!-- <table>
						<tr>
							<th>File_Upload</th>
						</tr>
					</table> -->
				</form>
			</div>
			<!-----------------------footer----------------------------------------------------------------------->
			<footer class="footer">
				<div class="row align-items-center justify-content-xl-between">
					<div class="col-xl-6">
						<div class="copyright text-center text-xl-left text-muted">
							&copy; 2024 <a href="https://www.naver.com"
								class="font-weight-bold ml-1" target="_blank">관리자 요청하기</a>
						</div>
					</div>
					<div class="col-xl-6">
						<ul
							class="nav nav-footer justify-content-center justify-content-xl-end">
							<li class="nav-item"><a href="https://www.naver.com"
								class="nav-link" target="_blank">관리자 요청하기</a></li>
							<li class="nav-item"><a href="https://checko.kr"
								class="nav-link" target="_blank">체크오</a></li>
							<li class="nav-item"><a href="https://grandalphakhk.com"
								class="nav-link" target="_blank">그랑알파</a></li>
							<li class="nav-item"><a href="https://smhrd.or.kr/"
								class="nav-link" target="_blank">SMHRD</a></li>
						</ul>
					</div>
				</div>
			</footer>
			<!-----------------------footer----------------------------------------------------------------------->

		</div>
	</div>
	<!--   Core   -->
	<script
		src="${pageContext.request.contextPath}/resources/js/plugins/jquery/dist/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/plugins/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<!--   Optional JS   -->
	<script
		src="${pageContext.request.contextPath}/resources/js/plugins/chart.js/dist/Chart.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/plugins/chart.js/dist/Chart.extension.js"></script>
	<!--차트-->
	<script src="node_modules/chart.js/dist/chart.umd.js"></script>
	<!--   Argon JS   -->
	<script
		src="${pageContext.request.contextPath}/resourcesjs/argon-dashboard.min.js?v=1.1.2"></script>
	<script src="https://cdn.trackjs.com/agent/v3/latest/t.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/sakura.js" text="text/javascript"></script>
	<script>




    //---------------------------------------------------------------------------------------
    document.addEventListener("DOMContentLoaded", function () {
      const container = document.getElementById("particle-1");
      const texts = [" ", "La form", "Dashboard"];
      const gap = 1;
      function createParticles() {
        for (let i = 0; i < 3; i++) {
          const particle = document.createElement("div");
          particle.classList.add("particle");
          particle.textContent = texts[i];
          particle.style.left = i * gap + "px";
          container.appendChild(particle);
        }
      }
      createParticles();
      document.addEventListener("mousemove", function (event) {
        const particles = document.querySelectorAll(".particle");
        particles.forEach((particle, index) => {
          const newPositionX = event.clientX + index * 20;
          const newPositionY = event.clientY + index * 20;
          particle.style.left = newPositionX + "px";
          particle.style.top = newPositionY + "px";
        });
      });
    });

    //---------------------------------------------------------------------------------------
    var sakura = new Sakura('body', {
      colors: [
        {
          gradientColorStart: 'rgba(255, 183, 197, 0.9)',
          gradientColorEnd: 'rgba(255, 197, 208, 0.9)',
          gradientColorDegree: 120,
        },
        {
          gradientColorStart: 'rgba(255,189,189)',
          gradientColorEnd: 'rgba(227,170,181)',
          gradientColorDegree: 120,
        },
        {
          gradientColorStart: 'rgba(212,152,163)',
          gradientColorEnd: 'rgba(242,185,196)',
          gradientColorDegree: 120,
        },
      ],
      delay: 600,
    });
    
    //------------------------------------------------------------------------
   	//html이 로드 됐을때 
   $(document).ready(function() { 
	   changeBoard('갓생')
   });

	//대시보드 값 DB연결
	function changeBoard(request){
		naverSearch(request)
		
		$.ajax({
			url:'trendList',
			type:'GET',
			success: function(response) {
				 let tList = JSON.stringify(response, null, 2)
				 barChart(JSON.parse(tList))
				
			},
			error:function(xhr, status, error) {
	            console.error("에러 발생:", error);
	        }
		})
	}
	
	
//---------------------------------------------------------------------------------------------
    
   	//네이버 api 
    function naverSearch(query){
	$.ajax({
        url: 'naver',  // 백엔드의 /naver 엔드포인트 호출
        type: 'GET',    // HTTP 메소드
        contentType: 'application/json;charset:UTF-8', // 반환받을 데이터의 타입
        data: { query: query },  // 서버로 보낼 데이터
        success: function(response) {
          //  console.log("서버로부터의 응답:", response);
            innerHtml=""
            	
            for(let i = 0; i<response.items.length;i++){
            	var url = ensureCompleteUrl(response.items[i].link);
            	innerHtml +="<tr>"
            	innerHtml += "<td><h3><a onclick='modalOpen(\"" + url + "\")'>" + response.items[i].title + "</a></h3>";
            	innerHtml += "<a onclick='modalOpen(\"" + url + "\")'>" + response.items[i].description + "</a></td>";
            	innerHtml +="<tr>"
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

//-------------------------------------------------------------------------------------------
 //GPT API 실행 
 function gptSearch(){
		var myData =$("#promptInput").val()
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
		
		$("#promptInput").val()=""
}
  

  </script>
  <!-- 파일 업로드 하기위한 스크립트 -->
	<script>
		$(document).ready(function(){
			$("#button1").click(function(event){
				// event.preventDefault();
				var form = $("#testForm");
				var formData = new FormData(form);
				formData.append("file", $("#file")[0].files[0]);
				debugger
				$.ajax({
					url: 'csv_upload.do',
					processData: false,
					contentType: false,
					data: formData,
					type: 'POST',
					success: function(data){
						console.log(data);
					}
				});
			});
		});
	</script>
</body>
</html>
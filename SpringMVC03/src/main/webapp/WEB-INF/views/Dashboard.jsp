<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

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
.table-responsive {
	max-height: 300px;
	overflow-y: auto;
}
</style>
</head>

<!-- body -->

<body class="scrollbar">
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
				src="${pageContext.request.contextPath}/resources/img/배너2.png"
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
						<a href="logout.do" class="dropdown-item"> <i
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
						<li class="nav-item active"><a
							class="nav-link hover12 active" href="dashboard.do"> <i
								class="ni ni-chart-bar-32 text-red "></i> La Form 트렌드 분석
						</a></li>
						<li class="nav-item"><a class="nav-link hover12"
							href="productAnalysis.do"> <i
								class="ni ni-check-bold text-black"></i> Check'O 제품 분석
						</a></li>
						<li class="nav-item"><a class="nav-link hover12"
							href="suggest.do"> <i class="ni ni-basket text-orange"></i>
								La Form 제안서 <span class="badge badge-pill badge-dark"
								style="background-color: #4B0082; color: #FFD700; border: 2px solid #FFD700;">AI</span>
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
					href="dashboard.do">TREND ANALYSIS</a>

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
							<input class="form-control" placeholder="CahtGPT에게 질문하기"
								type="text" id="promptInput" style="width: 850px;"
								onkeypress="if(event.keyCode=='13'){event.preventDefault(); gptSearch();}">
							<button type="submit" id="submitButton"
								style="visibility: hidden"></button>
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
							<a href="logout.do" class="dropdown-item"> <i
								class="ni ni-user-run"></i> <span>Logout</span>
							</a>
						</div></li>
				</ul>
			</div>
		</nav>

		<!-- Header -->
		<div
			class="header bg-gradient-primary2 pb-8 pt-5 pt-md-8 position-relative">

			<!-- 위쪽 버튼------------------------------------------------------------------------------------------------------>
			<div class="col" style="padding-left: 45px;">
				<ul class="nav nav-pills justify-content-start">
					<li class="nav-item mr-2 mr-md-0" data-toggle="chart"
						data-target="#chart-sales"
						data-update='{"data":{"datasets":[{"data":[0, 20, 10, 30, 15, 40, 20, 60, 60]}]}}'
						data-prefix="$" data-suffix="k"><a
						onclick="changeBoard('갓생살기')" class="nav-link py-2 px-3 active"
						data-toggle="tab"> <span class="d-none d-md-block">갓생</span> <span
							class="d-md-none">갓생</span>
					</a></li>
					<li class="nav-item" data-toggle="chart" data-target="#chart-sales"
						data-update='{"data":{"datasets":[{"data":[0, 20, 5, 25, 10, 30, 15, 40, 40]}]}}'
						data-prefix="$" data-suffix="k"><a
						onclick="changeBoard('스트레스')" class="nav-link py-2 px-3"
						data-toggle="tab"> <span class="d-none d-md-block">스트레스</span>
							<span class="d-md-none">스트레스</span>
					</a></li>
					<li class="nav-item" data-toggle="chart" data-target="#chart-sales"
						data-update='{"data":{"datasets":[{"data":[0, 20, 5, 25, 10, 30, 15, 40, 40]}]}}'
						data-prefix="$" data-suffix="k"><a
						onclick="changeBoard('혈당')" class="nav-link py-2 px-3"
						data-toggle="tab"> <span class="d-none d-md-block">혈당</span> <span
							class="d-md-none">혈당</span>
					</a></li>
				</ul>
			</div>
			<!-- 위쪽 버튼------------------------------------------------------------------------------------------------------>


			<div class="container-fluid">
				<div class="header-body">
					<!-- Card stats -->

				</div>
			</div>
		</div>

		<!-- Page content -->
		<div class="container-fluid mt--7">
			<div class="row">
				<div class="col-xl-12  mb-5 mb-xl-0">
					<div class="card shadow">
						<div class="card-header bg-transparent hover12">
							<div class="row align-items-center ">

								<div class="col">
									<h6 class="text-uppercase text-black ls-1 mb-1">Keyword
										TOP 10</h6>
									<h2 class="text-black mb-0">키워드 TOP 10</h2>
								</div>

								<div class="col"></div>
							</div>
						</div>
						<div class="card-body " style="background-color: #ffffff;">

							<!-- Chart -->
							<div class="chart" id="divBarChart">
								<canvas id="011"
									style="display: block; height: 355px; width: 1550px;"></canvas>
							</div>

						</div>
					</div>
				</div>
			</div>

			<!--행복하다-------------------------------------------------------------------------------------------->
			<div class="row">
				<div class="col-xl-4 col-lg-6 "
					style="padding-top: 20px; padding-bottom: 20px;">
					<div class="card card-stats mb-4 mb-xl-0 ">
						<div class="card-body">
							<div class="row">
								<div class="col">
									<h5 class="card-title text-uppercase text-muted mb-0">긍정</h5>
									<span class="h2 font-weight-bold mb-0 hover12"
										id="positiveWord">행복하다</span>
								</div>
								<div class="col-auto">
									<div
										class="icon icon-shape bg-green text-white rounded-circle shadow">
										<i class="fas fa-smile"></i>
									</div>
								</div>
							</div>
							<p class="mt-3 mb-0 text-muted text-sm">
								<span class="text-success mr-2"><i class="fa fa-arrow-up"></i>
									TOP1</span> <span class="text-nowrap">트렌드 키워드</span>
							</p>

						</div>
					</div>
				</div>

				<!--불행하다----------------------------------------------------------------------------------------->
				<div class="col-xl-4 col-lg-6 "
					style="padding-top: 20px; padding-bottom: 20px;">
					<div class="card card-stats mb-4 mb-xl-0 ">
						<div class="card-body">
							<div class="row">
								<div class="col">
									<h5 class="card-title text-uppercase text-muted mb-0">부정</h5>
									<span class="h2 font-weight-bold mb-0 hover12"
										id="negativeWord">불행하다</span>
								</div>
								<div class="col-auto">
									<div
										class="icon icon-shape bg-red text-white rounded-circle shadow">
										<i class="fas fa-frown"></i>
									</div>
								</div>
							</div>
							<p class="mt-3 mb-0 text-muted text-sm">
								<span class="text-danger mr-2"><i
									class="fas fa-arrow-down"></i> TOP1</span> <span class="text-nowrap">트렌드
									키워드</span>
							</p>
						</div>
					</div>
				</div>

				<!--test------------------------------------------------------------------------------------------>
				<div class="col-xl-4 col-lg-6"
					style="padding-top: 20px; padding-bottom: 20px;">
					<div class="card card-stats mb-4 mb-xl-0">
						<div class="card-body">
							<div class="row">
								<div class="col">
									<h5 class="card-title text-uppercase text-muted mb-0">추출된
										단어의 갯수</h5>
									<span class="h2 font-weight-bold mb-0 hover12" id="dataSize"></span>
								</div>
								<div class="col-auto">
									<div
										class="icon icon-shape bg-yellow text-white rounded-circle shadow">
										<i class="fas fa-users"></i>
									</div>
								</div>
							</div>
							<p class="mt-3 mb-0 text-muted text-sm">
								<span class="text-warning mr-2"></span> <span
									class="text-nowrap"></span>
							</p>
						</div>
					</div>
				</div>

			</div>


			<!---------------------------워드클라우드------------------------------------------------------------------------------->
			<div class="row">
				<div class="col-xl-8  mb-5 mb-xl-0">
					<div class="card shadow">
						<div class="card-header bg-transparent hover12">
							<div class="row align-items-center">
								<div class="col">
									<h6 class="text-uppercase text-black ls-1 mb-1">Wordcloud</h6>
									<h2 class="text-black mb-0">워드클라우드</h2>
								</div>
							</div>
						</div>
						<div class="card-body"
							style="background-color: #ffffff; padding: 0px;" padding
							id="wordCloud">
							<img
								src="${pageContext.request.contextPath}/resources/img/갓생살기.png"
								alt=""
								style="max-height: 420px; object-fit: cover; padding: 1.5rem; margin-left: 100px">
						</div>
					</div>
				</div>



				<!------------------------------------긍정, 부정 그래프------------------------------------------------------------------------->
				<div class="col-xl-4">
					<div class="card shadow">

						<div
							class="card-header bg-gradient-default1  bg-transparent hover12">
							<div class="row align-items-center">

								<div class="col">
									<h6 class="text-uppercase text-black ls-1 mb-1">Positive,
										Negative</h6>
									<h2 class="mb-0">긍정, 부정</h2>
								</div>

							</div>
						</div>
						<div class="card-body" style="padding-bottom: 50px;">



							<!-- Chart -->
							<div class="chart" id="divDonutChart">
								<canvas id="010"></canvas>
							</div>
						</div>
					</div>
				</div>
			</div>


			<!-----------------------------블로그 뉴스 등----------------------------------------------------------------------------->
			<div class="col-xl-81 mb-5 mb-xl-0"></div>
			<div class="card shadow">
				<div class="card-header bg-gradient-default1 border-0 hover12">
					<div class="row align-items-center">
						<div class="col">
							<h3 class="mb-0">블로그</h3>
						</div>
					</div>
				</div>
				<div class="table-responsive scrollbar">

					<table class="table align-items-center table-flush">

						<thead class="thead-light">

						</thead>


						<tbody id="searchResult">
						</tbody>
					</table>


				</div>
			</div>



			<!-- Modal -->
			<div id="naverModal" class="modal fade" role="dialog">
				<div class="modal-dialog" style="width: 80%; max-width: 1200px;">
					<!-- 스타일 추가 -->
					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>
						<div class="modal-body" style="height: 700px;">
							<!-- 스타일 추가 -->
							<iframe id="naverIframe"
								style="width: 100%; height: 100%; border: none;"></iframe>
						</div>
					</div>
				</div>
			</div>

			<div class="modal fade" id="gptModal" role="dialog">
				<div class="modal-dialog modal-sm">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title">ChatGPT</h4>
							<button type="button" class="close" data-dismiss="modal">&times;</button>

						</div>
						<div class="modal-body" id="gptResponse"></div>
					</div>
				</div>
			</div>
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
	<script src="${pageContext.request.contextPath}/resources/js/sakura.js"
		text="text/javascript"></script>
	<script>

    //---------------------------------------------------------------------------------------
    
    // 긍정 부정
    // 도넛차트
    window.TrackJS && // TrackJS가 정의되어 있으면
      TrackJS.install({ // TrackJS를 설치
        token: "ee6fab19c5a04ac1a32a645abde4613a", // 추적 토큰 설정
        application: "argon-dashboard-free" // 애플리케이션 이름 설정
      });

    function donutChart(request) { 
    	$.ajax({
    		url: "getDeepPN",
    		data: {deep_source: request},
    		success: function(data){
    			//console.log(data);
    
      $('#010').remove();
    $('#divDonutChart').append('<canvas id="010"></canvas>');

    	
      var ctx = document.getElementById('010').getContext('2d'); // id가 '010'인 캔버스 요소를 가져와 2D 컨텍스트 얻기
      var myChart = new Chart(ctx, { // 새로운 Chart 객체 생성
        type: 'doughnut', // 차트 유형을 '도넛형'으로 설정
        data: {
          labels: ['부정', '긍정'], // 도넛 차트의 레이블
          datasets: [{
            label: 'Market Share', // 데이터셋의 레이블
            data: data, // 각 레이블에 해당하는 데이터 값
            backgroundColor: ['#F5365C', '#2DCC70'], // 각 데이터 조각의 배경색 설정
            borderColor: [], // 각 데이터 조각의 테두리 색상 설정 (현재 없음)
            borderWidth: 10 // 데이터 조각의 테두리 너비 설정
          }]
        },
        options: {
          responsive: true,
          maintainAspectRatio: false,
          plugins: {
            legend: {
              display: true,
              position: 'chartArea',
              align: 'center'
            },
            tooltip: {
              enabled: true,
              backgroundColor: 'rgba(0, 0, 0, 0.7)',
              titleColor: '#ffffff',
              bodyColor: '#ffffff', 
              borderWidth: 1, 
              borderColor: '#ddd', 
            }
          },
          cutoutPercentage: 50
        }
      });
      
    		},
    		error: function(){
    			alert("연결 실패 ㅜㅜ");
    		}
    	});
    }

    //---------------------------------------------------------------------------------------

    // 키워드 탑10
    // 바차트
  function barChart(list, request) {

    const rList = list.filter(item => item.trend_source === request);
    const groupedTrends = {};

    rList.forEach(trend => {
        const key = trend.trend_keyword;
        if (!groupedTrends[key]) {
            groupedTrends[key] = { trend_keyword: key, trend_sum: 0 };
        }
        groupedTrends[key].trend_sum += trend.trend_sum; // 키워드가 같을 때 빈도수를 누적
    });

    // trend_sum을 기준으로 내림차순으로 정렬하고 상위 10개를 선택합니다.
    const top10Trends = Object.values(groupedTrends)
        .sort((a, b) => b.trend_sum - a.trend_sum)
        .slice(0, 10);

    const labels = top10Trends.map(trend => trend.trend_keyword);
    const data = top10Trends.map(trend => trend.trend_sum);

    $('#011').remove();
    $('#divBarChart').append('<canvas id="011" style="display: block;height: 355px;width: 1550px;"></canvas>');

    let canvas = document.getElementById('011');
    let ctx = canvas.getContext('2d');

    let chart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: labels,
            datasets: [{
                label: 'Trend Sum',
                data: data,
                backgroundColor: '#8467D7',
            }]
        },
        options: {
            responsive: true,
            indexAxis: 'y',
            plugins: {
                legend: {
                    display: true,
                    position: 'top'
                },
                title: {
                    display: true,
                    text: 'Top 10 Trends'
                },
            },
            scales: {
                x: {
                    title: {
                        display: true,
                        text: 'Trend Sum'
                    },
                    beginAtZero: true
                },
                y: {
                    title: {
                        display: true,
                        text: 'Keyword'
                    },
                    ticks: {
                        autoSkip: false
                    }
                }
            }
        }
    });
}

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
	   changeBoard('갓생살기')
	  
   });

	//대시보드 값 DB연결
	function changeBoard(request){
		naverSearch(request)
		donutChart(request)
		ChangeWordCloud(request)
		positiveWord(request)
		negativeWord(request)
		dataSize(request)
		
		$.ajax({
			url:'trendList',
			type:'GET',
			success: function(response) {
				 let tList = JSON.stringify(response, null, 2)
				 barChart(JSON.parse(tList),request)
				
			},
			error:function(xhr, status, error) {
	            console.error("에러 발생:", error);
	        }
		})
	}
	
//-----------------------------------------------------------------------------------
	//워드클라우드 
	var contextPath = "${pageContext.request.contextPath}";
	function ChangeWordCloud(request){
	//console.log("워드클라우드"+request)
		// wordCloud 요소를 선택
	    var wordCloudElement = document.getElementById('wordCloud');
	    
	    // wordCloud 요소 안의 img 태그를 선택
	    var imgElement = wordCloudElement.querySelector('img');
	    
	    // img 태그의 src 속성을 변경
	    imgElement.src = contextPath + '/resources/img/' + request + '.png';
}


//------------------------------------------------------------------------------------------
	
	//긍정 top1
	function positiveWord(request){
	//console.log(request)
    	$.ajax({
    		url: "getBest",
    		data: {deep_source: request},
    		success: function(data){
    			//console.log(data);
    			$("#positiveWord").text(data.deep_result)
				
			},
			error:function(xhr, status, error) {
	            console.error("에러 발생:", error);
	        }
		})
	}
	
	//부정 top1
		function negativeWord(request){
			$.ajax({
	    		url: "getWorst",
	    		data: {deep_source: request},
	    		success: function(data){
	    			//console.log(data);
	    			$("#negativeWord").text(data.deep_result)
					
				},
				error:function(xhr, status, error) {
		            console.error("에러 발생:", error);
		        }
			})
	
	}
	
	
	//추출된 키워드량
	 function dataSize(request){
		 $.ajax({
	    		url: "getDataSize",
	    		data: {deep_source: request},
	    		success: function(data){
	    			console.log(data);
	    			let formattedData = data.toLocaleString();
	    			$("#dataSize").text(formattedData)
					
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


function modalOpen(link) {
    $('#naverModal').modal("show");
    $('#naverIframe').attr('src', link); // iFrame의 src 속성 설정
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
            $("#gptResponse").html(response)
            $('#gptModal').modal("show");
        },
        error: function(xhr, status, error) {
            console.error("에러 발생:", error);
        }
    });
		
		$("#promptInput").val("")
}
  

  </script>

</body>

</html>
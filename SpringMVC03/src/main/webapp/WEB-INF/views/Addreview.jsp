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
  <nav class="navbar navbar-vertical fixed-left navbar-expand-md navbar-light bg-white" id="sidenav-main"
    style="padding: 1;">
    <div class="container-fluid">

      <!-- Toggler -->
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#sidenav-collapse-main"
        aria-controls="sidenav-main" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <!-- Brand -->
    	<a class="navbar-brand pt-0" href="dashboard.do"> <img
			src="${pageContext.request.contextPath}/resources/img/𝑳𝒂 𝑭𝒐𝒓𝒎_newtitle1.png"
			class="navbar-brand-img" alt="...">
		</a>

      <!-- User -->
      <ul class="nav align-items-center d-md-none">
        <li class="nav-item dropdown">
          <a class="nav-link nav-link-icon" href="#" role="button" data-toggle="dropdown" aria-haspopup="true"
            aria-expanded="false">
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <div class="media align-items-center">
              <span class="avatar avatar-sm rounded-circle">
                <img alt="Image placeholder" src="./assets/img/프리지아.png">
              </span>
            </div>
          </a>
          <div class="dropdown-menu dropdown-menu-arrow dropdown-menu-right">
            <div class=" dropdown-header noti-title">
              <h6 class="text-overflow m-0">Welcome!</h6>
            </div>
            <div class="dropdown-divider"></div>
            <a href="Main.html" class="dropdown-item">
              <i class="ni ni-user-run"></i>
              <span>Logout</span>
            </a>
          </div>
        </li>
      </ul>

      <!-- Collapse -->
      <div class="collapse navbar-collapse" id="sidenav-collapse-main"
        style="background: linear-gradient(30deg, #feb47b, #815EE4,#ffffff, #ffffff);">

        <!-- 이미지 배경 -->
        <div class="collapse navbar-collapse" id="sidenav-collapse-main" style="background-color: #ffffff;
               background-size: cover;">

          <!-- Collapse header -->
          <div class="navbar-collapse-header d-md-none">
            <div class="row">
              <div class="col-6 collapse-brand">
                <a href="./Addreview.html">
                  <img src="assets/img/배너2.png">
                </a>
              </div>
              <div class="col-6 collapse-close">
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#sidenav-collapse-main"
                  aria-controls="sidenav-main" aria-expanded="false" aria-label="Toggle sidenav"
                  style="background-color: black;"></button>
              </div>
            </div>
          </div>

          <!-- Form -->
          <form class="mt-4 mb-3 d-md-none">
            <div class="input-group input-group-rounded input-group-merge">
              <!-- 챗GPT API 들어갈 input 태그-->
              <input type="search" class="form-control form-control-rounded form-control-prepended" placeholder="Search"
                aria-label="Search">
              <div class="input-group-prepend">
                <div class="input-group-text">
                  <span class="fa fa-search"></span>
                </div>
              </div>
            </div>
          </form>

          <!-- Navigation -->
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link hover12" href="./Dashboard.html">
                <i class="ni ni-chart-bar-32 text-red "></i> La Form 트렌드 분석
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link hover12" href="./Check'O.html">
                <i class="ni ni-check-bold text-black"></i> Check'O 제품 분석
              </a>
            </li>
            <li class="nav-item active">
              <a class="nav-link hover12 active" href="./Suggest.html">
                <i class="ni ni-basket text-orange"></i> La Form 제안서 (AI배찌달기)
              </a>
            </li>
          </ul>

        </div>
      </div>
  </nav>
  <div class="main-content">

    <!-- Navbar -->
    <nav class="navbar navbar-top navbar-expand-md navbar-dark" id="navbar-main">
      <div class="container-fluid">

        <!-- Brand -->
        <a class="h1 mb-0 text-black text-uppercase d-none d-lg-inline-block" href="./Addreview.html">File Upload</a>

        <!-- Form -->
        <form class="navbar-search navbar-search-dark form-inline mr-3 d-none d-md-flex ml-lg-auto">
          <div class="form-group mb-0">
            <div class="input-group input-group-alternative">
              <div class="input-group-prepend">
                <span class="input-group-text">
                  <i class="fas fa-search" style="color: black;"></i>
                </span>
              </div>
              <!-- 챗GPT API 들어갈 input 태그-->
              <input class="form-control" placeholder="Search" type="text" style="width: 850px;">
            </div>
          </div>
        </form>

        <!-- User -->
        <ul class="navbar-nav align-items-center d-none d-md-flex">
          <li class="nav-item dropdown">
            <a class="nav-link pr-0" href="#" role="button" data-toggle="dropdown" aria-haspopup="true"
              aria-expanded="false">
              <div class="media align-items-center">
                <div class="media-body ml-2 d-none d-lg-block">
                  <span class="mb-0 text-sm  font-weight-bold">
                    <i class="fas fa-bars" style="color: black;"></i>
                  </span>
                </div>
              </div>
            </a>
            <div class="dropdown-menu dropdown-menu-arrow dropdown-menu-right">
              <div class=" dropdown-header noti-title">
                <h6 class="text-overflow m-0">Welcome!</h6>
              </div>
              <div class="dropdown-divider"></div>
              <a href="Main.html" class="dropdown-item">
                <i class="ni ni-user-run"></i>
                <span>Logout</span>
              </a>
            </div>
          </li>
        </ul>
      </div>
    </nav>
    <div class="header bg-gradient-primary2 pb-8 pt-5 pt-md-8 position-relative"></div>
    <div class="container-fluid mt--7">














      <!----------------------------- 안에 들어갈 컨텐츠 ↓↓↓↓↓↓↓↓↓↓↓↓↓↓ ----------------------------------------------------------------------------->
      <div class="card shadow">
        <div class="card-header bg-gradient-default2 border-0 hover12">
          <div class="row align-items-center">
            <div class="col">
              <h3 class="mb-0">File Upload</h3>
            </div>
          </div>
        </div>
        <div class="table-responsive">
          <form id="SendFileForm" enctype="multipart/form-data">
          <table class="table align-items-center table-flush">
            
            <thead class="thead-light">
              <tr>
                <th scope="col">Input File</th>
              </tr>
            </thead>

            <tbody>
              <tr>
                <td id="uploadFile_td">
                  <input type="file" name="files" id="files" multiple >
                </td>
              </tr>
              <tr>
                <th scope="row" colspan="2" style="text-align: center;">
                  <button id="btn_1">전송</button>
                </th>
              </tr>
            </tbody>
          </table>
        </form>
        </div>
      </div>
      <!----------------------------- 안에 들어갈 컨텐츠 ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑ ----------------------------------------------------------------------------->




<!-- test -->
<!-- test -->
<!-- test -->












      <!-----------------------footer----------------------------------------------------------------------->
      <footer class="footer">
        <div class="row align-items-center justify-content-xl-between">
          <div class="col-xl-6">
            <div class="copyright text-center text-xl-left text-muted">
              &copy; 2024 <a href="https://www.naver.com" class="font-weight-bold ml-1" target="_blank">관리자 요청하기</a>
            </div>
          </div>
          <div class="col-xl-6">
            <ul class="nav nav-footer justify-content-center justify-content-xl-end">
              <li class="nav-item">
                <a href="https://www.naver.com" class="nav-link" target="_blank">관리자 요청하기</a>
              </li>
              <li class="nav-item">
                <a href="https://checko.kr" class="nav-link" target="_blank">체크오</a>
              </li>
              <li class="nav-item">
                <a href="https://grandalphakhk.com" class="nav-link" target="_blank">그랑알파</a>
              </li>
              <li class="nav-item">
                <a href="https://smhrd.or.kr/" class="nav-link" target="_blank">SMHRD</a>
              </li>
            </ul>
          </div>
        </div>
      </footer>
      <!-----------------------footer----------------------------------------------------------------------->

    </div>
  </div>
  <!--   Core   -->
  <script src="./assets/js/plugins/jquery/dist/jquery.min.js"></script>
  <script src="./assets/js/plugins/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <!--   Optional JS   -->
  <script src="./assets/js/plugins/chart.js/dist/Chart.min.js"></script>
  <script src="./assets/js/plugins/chart.js/dist/Chart.extension.js"></script><!--차트-->
  <!--   Argon JS   -->
  <script src="./assets/js/argon-dashboard.min.js?v=1.1.2"></script>
  <script src="https://cdn.trackjs.com/agent/v3/latest/t.js"></script>
  <script src="assets/js/sakura.js" text="text/javascript"></script>
  <script>
    //---------------------------------------------------------------------------------------
    document.addEventListener("DOMContentLoaded", function () {
      const container = document.getElementById("particle-1");
      const texts = [" ", "La form", "Suggest"];
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
    
    //---------------------------------------------------------------------------------------
  
  </script>
  <!-- 파일 업로드 하기위한 스크립트 -->
	<script>
		$(document).ready(function(){
			$("#btn_1").click(function(event){
				// event.preventDefault();
				var form = $("#SendFileForm");
				var formData = new FormData(form);
				formData.append("files", $("#files")[0].files[0]);
				debugger
				$.ajax({
					url: 'uploadFile',
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
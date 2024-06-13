<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>
    La Form
  </title>
  <link rel="stylesheet" type="text/css"
    href="https://cdn.jsdelivr.net/gh/bmabey/pyLDAvis@3.4.0/pyLDAvis/js/ldavis.v1.0.0.css">
  <!-- Favicon -->
  <link href="${pageContext.request.contextPath}/resources/img/프리지아.png" rel="icon" type="image/png">
  <!-- Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
  <!-- Icons -->
  <link href="${pageContext.request.contextPath}/resources/js/plugins/nucleo/css/nucleo.css" rel="stylesheet" />
  <link href="${pageContext.request.contextPath}/resources/js/plugins/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet" />
  <!-- CSS Files -->
  <link href="${pageContext.request.contextPath}/resources/css/argon-dashboard.css?v=1.1.2" rel="stylesheet" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/sakura.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/icons.css"/>

</head>

<!-- body -->

<body class="scrollbar">
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
      <a class="navbar-brand pt-0" href="dashboard.do">
        <img src="${pageContext.request.contextPath}/resources/img/배너2.png" class="navbar-brand-img" alt="...">
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
                <img alt="Image placeholder" src="${pageContext.request.contextPath}/resources/img/íë¦¬ì§ì.png">
              </span>
            </div>
          </a>
          <div class="dropdown-menu dropdown-menu-arrow dropdown-menu-right">
            <div class=" dropdown-header noti-title">
              <h6 class="text-overflow m-0">Welcome!</h6>
            </div>
            <div class="dropdown-divider"></div>
            <a href="logout.do" class="dropdown-item">
              <i class="ni ni-user-run"></i>
              <span>Logout</span>
            </a>
          </div>
        </li>
      </ul>

      <!-- Collapse -->
      <div class="collapse navbar-collapse" id="sidenav-collapse-main"
        style="background: linear-gradient(30deg, #feb47b, #815EE4,#ffffff, #ffffff);">

        <!-- ì´ë¯¸ì§ ë°°ê²½ -->
        <div class="collapse navbar-collapse" id="sidenav-collapse-main" style="background-color: #ffffff;
               background-size: cover;">

          <!-- Collapse header -->
          <div class="navbar-collapse-header d-md-none">
            <div class="row">
              <div class="col-6 collapse-brand">
                <a href="Addreview.do">
                  <img src="${pageContext.request.contextPath}/resources/img/ë°°ë2.png">
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
              <!-- ì±GPT API ë¤ì´ê° input íê·¸-->
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
              <a class="nav-link hover12" href="dashboard.do">
                <i class="ni ni-chart-bar-32 text-red "></i> La Form 대시보드
              </a>
            </li>
            <li class="nav-item active">
              <a class="nav-link hover12 active" href="productAnalysis.do">
                <i class="ni ni-check-bold text-black"></i> Check'O 제품 분석
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link hover12" href="suggest.do">
                <i class="ni ni-basket text-orange"></i> La Form 제안서
                <span class="badge badge-pill badge-dark"
                  style="background-color: #4B0082; color: #FFD700; border: 2px solid #FFD700;">AI</span>
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
        <a class="h1 mb-0 text-black text-uppercase d-none d-lg-inline-block" href="Addreview.do">리뷰 추가</a>


        <!-- ììª½ ë²í¼------------------------------------------------------------------------------------------------------>
        <div class="col" style="padding-left: 45px;">
          <ul class="nav nav-pills justify-content-start">
            <li class="nav-item">
              <a href="Addproduct.do" class="nav-link we12 py-2 px-3">
                <span class="d-none d-md-block">제품 추가</span>
                <span class="d-md-none">제품 추가</span>
              </a>
            </li>
            <li>
              <div></div>
            </li>
            <li class="nav-item">
              <a href="Addreview.do" class="nav-link we12 py-2 px-3">
                <span class="d-none d-md-block">리뷰 추가</span>
                <span class="d-md-none">리뷰 추가</span>
              </a>
            </li>
          </ul>
        </div>
        <!-- 위쪽 버튼------------------------------------------------------------------------------------------------------>


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
							<input class="form-control" placeholder="Search" type="text"
								id="promptInput" style="width: 850px;"
								onkeypress="if(event.keyCode=='13'){event.preventDefault(); gptSearch();}">
							<button type="submit" id="submitButton"
								style="visibility: hidden"></button>
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
              <a href="Main.do" class="dropdown-item">
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
      <!----------------------------- 안에 들어갈 컨텐츠 ----------------------------------------------------------------------------->


          <div class="uploadForm" style="width: 1500px;">
        <h2 class="formTitle">리뷰데이터 파일을 올려주세요.</h2>
        <form id="productForm" enctype="multipart/form-data">
          <input type="file" id="productFileInput" class="fileInput" accept=".csv" onchange="previewFile(event)"
            required>
            <div>
	            <select name="productName" id="select_product" class="pl">
	           <c:forEach var="product" items="${prodList}" begin="1">
                <option value="${product.prod_name}">${product.prod_name}</option>
            </c:forEach>
	            </select>
	            
            </div>
            
            
       
          <br>
          <label for="productFileInput" class="fileLabel">리뷰데이터 파일을 선택하세요. (CSV)</label>
          <div class="filePreview" style="margin-bottom: 10px;"></div>
          <button type="button" onclick="upload()" class="submitButton">제출</button>
        </form>
        <h1 style="text-align: center;">파일 선택 후 제출 버튼을 눌러주세요</h1>
      </div>
      <div class="productList"></div>



      <!----------------------------- 안에 들어갈 컨텐츠 ----------------------------------------------------------------------------->




<div class="modal fade" id="gptModal" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
                  <h4 class="modal-title">ChatGPT</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>

        </div>
        <div class="modal-body" id="gptResponse">
        </div>
      </div>
    </div>
  </div>
</div>












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
  <script src="${pageContext.request.contextPath}/resources/js/plugins/jquery/dist/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/plugins/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <!--   Optional JS   -->
  <script src="${pageContext.request.contextPath}/resources/js/plugins/chart.js/dist/Chart.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/plugins/chart.js/dist/Chart.extension.js"></script><!--차트-->
  <!--   Argon JS   -->
  <script src="${pageContext.request.contextPath}/resources/js/argon-dashboard.min.js?v=1.1.2"></script>
  <script src="https://cdn.trackjs.com/agent/v3/latest/t.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/sakura.js" text="text/javascript"></script>
 <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/loadingoverlay.min.js"></script>
  
  <script>
    //---------------------------------------------------------------------------------------
    document.addEventListener("DOMContentLoaded", function () {
      const container = document.getElementById("particle-1");
      const texts = [" ", "La form", "Addreview"];
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
    function addImage() {
      var imageDiv = document.getElementById("imageDiv");
      var imageInput = document.createElement("input");
      imageInput.type = "file";
      imageInput.accept = "image/*";

      imageInput.onchange = function (event) {
        var file = event.target.files[0];
        var reader = new FileReader();

        reader.onload = function () {
          var image = document.createElement("img");
          image.src = reader.result;
          imageDiv.innerHTML = "";
          imageDiv.appendChild(image);
        }
        reader.readAsDataURL(file);
      };
      imageInput.click();
    }


    //---------------------------------------------------------------------------------------
    function previewFile(event) {
      var file = event.target.files[0];
      if (file && file.type === "text/csv") {
        var reader = new FileReader();
        reader.onload = function () {
          var filePreview = document.createElement("pre");
          filePreview.textContent = reader.result;
          filePreview.style.maxHeight = "200px"; // 정해진 크기로 설정
          filePreview.style.overflowY = "auto"; // 세로 스크롤 바 표시
          document.querySelector(".filePreview").innerHTML = "";
          document.querySelector(".filePreview").appendChild(filePreview);
        };
        reader.readAsText(file);
      } else {
        alert("CSV 파일만 업로드 가능합니다.");
        document.getElementById("productFileInput").value = "";
      }
    }
    
    
    function upload() {

    		var productName = $("#select_product option:selected").val()
    		//console.log(productName)
    	    var fileInput = document.getElementById('productFileInput');
            var file = fileInput.files[0];
            var formData = new FormData();
            formData.append('file', file);
            formData.append('productName',productName)
            console.log(formData)
          
               $.ajax({
                url: 'http://180.68.91.152:5000/upload',
                type: 'POST',
                data: formData,
                processData: false,
                contentType: false,
                success: function(response) {
                    alert(response);
                },
                beforeSend:function(){
                	$.LoadingOverlay("show", {
                		background       : "rgba(0, 0, 0, 0.5)",
                		image            : "",
                		maxSize          : 60,
                		fontawesome      : "fa fa-spinner fa-pulse fa-fw",
                		fontawesomeColor : "#FFFFFF",
                	});

                },
                error: function(xhr, status, error) {
                    alert('파일 업로드 실패');
                },
                complete:function(){
                	$.LoadingOverlay("hide");
                }
            });
            
       
      fileInput.value = ""; // 파일 선택 input 초기화
      document.querySelector(".filePreview").innerHTML = "";
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
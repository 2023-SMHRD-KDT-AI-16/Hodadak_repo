<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
      <a class="navbar-brand pt-0" href="./Addreview.html">
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

        <!-- ì´ë¯¸ì§ ë°°ê²½ -->
        <div class="collapse navbar-collapse" id="sidenav-collapse-main" style="background-color: #ffffff;
               background-size: cover;">

          <!-- Collapse header -->
          <div class="navbar-collapse-header d-md-none">
            <div class="row">
              <div class="col-6 collapse-brand">
                <a href="./Addreview.html">
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
              <a class="nav-link hover12" href="./Dashboard.html">
                <i class="ni ni-chart-bar-32 text-red "></i> La Form 대시보드
              </a>
            </li>
            <li class="nav-item active">
              <a class="nav-link hover12 active" href="./Check'O.html">
                <i class="ni ni-check-bold text-black"></i> Check'O 제품 분석
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link hover12" href="./Suggest.html">
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
        <a class="h1 mb-0 text-black text-uppercase d-none d-lg-inline-block" href="./Addreview.html">리뷰 추가</a>


        <!-- ììª½ ë²í¼------------------------------------------------------------------------------------------------------>
        <div class="col" style="padding-left: 45px;">
          <ul class="nav nav-pills justify-content-start">
            <li class="nav-item">
              <a href="Addproduct.html" class="nav-link we12 py-2 px-3">
                <span class="d-none d-md-block">제품 추가</span>
                <span class="d-md-none">제품 추가</span>
              </a>
            </li>
            <li>
              <div></div>
            </li>
            <li class="nav-item">
              <a href="Addreview.html" class="nav-link we12 py-2 px-3">
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
              <!-- 챗GPT API 들어갈 input 태그 -->
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
      <!----------------------------- 안에 들어갈 컨텐츠 ----------------------------------------------------------------------------->


          <div class="uploadForm" style="width: 1500px;">
        <h2 class="formTitle">리뷰데이터 파일을 올려주세요.</h2>
        <form id="productForm" enctype="multipart/form-data">
          <input type="file" id="productFileInput" class="fileInput" accept=".csv" onchange="previewFile(event)"
            required>
            <select name="productName" id="select_product" class="pl">
            	<option value="추가한 제품 명 1">추가한 제품 명 1</option>
            	<option value="추가한 제품 명 2">추가한 제품 명 2</option>
            	<option value="추가한 제품 명 3">추가한 제품 명 3</option>
            </select>
          <button type="submit" class="submitFormButton">제출</button>
          <br>
          <label for="productFileInput" class="fileLabel">리뷰데이터 파일을 선택하세요. (CSV)</label>
          <div class="filePreview" style="margin-bottom: 10px;"></div>
          <button type="button" onclick="upload()" class="submitButton">추가</button>
        </form>
        <h1 style="text-align: center;">파일을 추가하고 제출을 눌러주세요</h1>
      </div>
      <div class="productList"></div>



      <!----------------------------- 안에 들어갈 컨텐츠 ----------------------------------------------------------------------------->

















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
        alert("CSV íì¼ë§ ìë¡ë ê°ë¥í©ëë¤.");
        document.getElementById("productFileInput").value = "";
      }
    }
    function upload() {
      var productList = document.querySelector(".productList");

      var productItem = document.createElement("div");
      productItem.classList.add("productItem");

      var fileNameInput = document.getElementById("productFileInput");
      var fileName = document.createElement("p");
      var fileNameText = fileNameInput.files[0].name;
      fileName.textContent = fileNameText; // 파일 이름 표시
      fileName.addEventListener("click", function () {
        var inputField = document.createElement("input");
        inputField.type = "text";
        inputField.value = fileNameText;
        inputField.addEventListener("keypress", function (e) {
          if (e.key === "Enter") {
            fileName.textContent = this.value;
            this.blur(); //입력 필드 포커스 해제 
          }
        });
        inputField.addEventListener("blur", function () {
          fileNameText = this.value;
          this.parentNode.replaceChild(fileName, this); // 입력 필드를 텍스트 요소로 교체
        });
        this.parentNode.replaceChild(inputField, this); // 텍스트 요소를 입력 필드로 교체
        inputField.focus(); // 입력 필드에 포커스 설정
      });
      productItem.appendChild(fileName);

      var deleteButton = document.createElement("button");
      deleteButton.textContent = "삭제";
      deleteButton.classList.add("deleteButton");
      deleteButton.onclick = function () {
        productItem.remove();
      };
      productItem.appendChild(deleteButton);
      productList.appendChild(productItem);
      fileNameInput.value = ""; // 파일 선택 input 초기화
      document.querySelector(".filePreview").innerHTML = "";
    }


    // 제출 버튼 클릭 시 파일을 서버로 전홍하는 기능을 추가
    document.querySelector(".submitFormButton").addEventListener("click", submitForm);
    function submitForm(event) {
      event.preventDefault();
      var formData = new FormData(document.getElementById("productForm"));
      // 파일 업로드를 위한 서버 엔드포인트 URL
      var uploadUrl = "YOUR_SERVER_UPLOAD_URL";
      fetch(uploadUrl, {
        method: 'POST',
        body: formData
      })
        .then(response => response.json())
        .then(data => {
          console.log('Success:', data);
          alert("파일이 성공적으로 업로드 되었습니다.");
          // 업로드 후 폼을 초기화
          document.getElementById("productForm").reset();
          document.querySelector(".productList").innerHTML = "";
        })
        .catch((error) => {
          console.error('Error:', error);
          alert("파일 업로드에 실패했습니다.");
        });
    }


  </script>

</body>

</html>
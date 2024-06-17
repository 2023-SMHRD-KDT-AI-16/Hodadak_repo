<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %> <!-- 파일 업로드 처리를 위한 MultipartRequest 객체를 임포트 -->
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %> <!-- 파일 중복처리 객체 임포트 -->
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
        <img src="/controller/resources/img/배너2.png" class="navbar-brand-img" alt="...">
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

        <!-- 이미지 배경 -->
        <div class="collapse navbar-collapse" id="sidenav-collapse-main" style="background-color: #ffffff;
               background-size: cover;">

          <!-- Collapse header -->
          <div class="navbar-collapse-header d-md-none">
            <div class="row">
              <div class="col-6 collapse-brand">
                <a href="dashboard.do">
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
              <a class="nav-link hover12" href="dashboard.do">
                <i class="ni ni-chart-bar-32 text-red "></i> La Form 트렌드 분석
              </a>
            </li>
            <li class="nav-item active">
              <a class="nav-link hover12 active" href="productAnalysis.do">
                <i class="ni ni-check-bold text-black"></i> Check'O 제품 분석
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link hover12" href="suggest.do">
                <i class="ni ni-basket text-orange"></i> La Form 제안서
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
        <a class="h1 mb-0 text-black text-uppercase d-none d-lg-inline-block" href="Addproduct.do">제품 추가</a>


        <!-- 위쪽 버튼------------------------------------------------------------------------------------------------------>
        <div class="col" style="padding-left: 45px;">
          <ul class="nav nav-pills justify-content-start">
            <li class="nav-item">
              <a href="Addproduct.do" class="nav-link we12 py-2 px-3">
                <span class="d-none d-md-block">제품 추가</span>
                <span class="d-md-none">제품 추가</span>
              </a>
            </li>
            <li>
              <div></div>
            </li>
            <li class="nav-item">
              <a href="Addreview.do" class="nav-link we12 py-2 px-3">
                <span class="d-none d-md-block">리뷰 추가</span>
                <span class="d-md-none">리뷰 추가</span>
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
              <a href="logout.do" class="dropdown-item">
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


      <div class="uploadForm" style="width: 1500px;">
        <h2 class="formTitle">제품 사진과 정보를 입력해주세요.</h2>
        <form id="productForm" enctype="multipart/form-data">
          <input type="file" id="productImageInput" class="fileInput" accept="image/*" onchange="previewImage(event)"
            required>
          <button type="button" class="submitFormButton" onclick = "uploadvv()" style="width: 200px; top: 50px;">제출</button>
          <br>
          <label for="productImageInput" class="fileLabel">제품의 이미지 파일을 선택하세요. (JPG)</label>
          <div class="imagePreview"></div>
          <span>제품명 </span>
          <input type="text" id="productNameInput" class="textInput" placeholder="제품명을 입력하세요" required><br>
          <br>
          <span>가격 </span>
          <input type="text" id="productPriceInput" class="textInput" placeholder="가격을 입력하세요" required><br>
          <br>
          <span>성분 </span>
          <textarea id="productDescriptionInput" class="textareaInput" placeholder="성분을 입력하세요" rows="4" cols="30"
            required></textarea><br>
          <button type="button" onclick="upload()" class="submitButton">추가</button>
          <h1 style="text-align: center;">파일을 추가하고 제출을 눌러주세요</h1>
        </form>
      </div>
      <div class="productList"></div>



      <!----------------------------- 안에 들어갈 컨텐츠 ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑ ----------------------------------------------------------------------------->

















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
  <script src="http://code.jquery.com/jquery-latest.js"></script>
  <script>
    //---------------------------------------------------------------------------------------
    document.addEventListener("DOMContentLoaded", function () {
      const container = document.getElementById("particle-1");
      const texts = [" ", "La form", "Addproduct"];
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
    function previewImage(event) {
      var imageFile = event.target.files[0];
      var reader = new FileReader();

      reader.onload = function () {
        var imagePreview = document.createElement("img");
        imagePreview.src = reader.result;
        imagePreview.width = 100;
        imagePreview.style.borderRadius = "5px";
        document.querySelector(".imagePreview").innerHTML = "";
        document.querySelector(".imagePreview").appendChild(imagePreview);
      }

      reader.readAsDataURL(imageFile);
    }

    function upload() {
      var productList = document.querySelector(".productList");

      var productItem = document.createElement("div");
      productItem.classList.add("productItem");

      var productImage = document.createElement("img");
      productImage.src = URL.createObjectURL(document.getElementById("productImageInput").files[0]);
      productImage.style.width = "100px";
      productImage.style.height = "100px";
      productImage.style.borderRadius = "5px";
      productItem.appendChild(productImage);

      var productInfo = document.createElement("div");
      productInfo.classList.add("productInfo");

      var productName = document.createElement("p");
      productName.textContent = "제품명: " + document.getElementById("productNameInput").value;
      productInfo.appendChild(productName);

      var productPrice = document.createElement("p");
      productPrice.textContent = "가격: " + numberWithCommas(document.getElementById("productPriceInput").value) + "원";
      productInfo.appendChild(productPrice);

      var productDescription = document.createElement("p");
      productDescription.textContent = "성분: " + document.getElementById("productDescriptionInput").value;
      productInfo.appendChild(productDescription);

      productItem.appendChild(productInfo);

      productList.appendChild(productItem);

      var deleteButton = document.createElement("button");
      deleteButton.textContent = "삭제";
      deleteButton.classList.add("deleteButton");
      deleteButton.onclick = function () {
        productItem.remove();
      };
      productItem.appendChild(deleteButton);

      productList.appendChild(productItem);

      /*document.getElementById("productImageInput").value = "";
      document.getElementById("productNameInput").value = "";
      document.getElementById("productPriceInput").value = "";
      document.getElementById("productDescriptionInput").value = "";
      document.querySelector(".imagePreview").innerHTML = "";*/
    }

    function numberWithCommas(x) {
      return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    }
    document.getElementById("productPriceInput").addEventListener("keyup", function (event) {
      var priceWithoutCommas = this.value.replace(/,/g, "");
      var formattedPrice = Number(priceWithoutCommas).toLocaleString();
      this.value = formattedPrice;
    });
    document.getElementById("productPriceInput").addEventListener("input", function (event) {
      var inputValue = this.value;
      var sanitizedInput = inputValue.replace(/\D/g, "");
      if (sanitizedInput !== inputValue) {
        this.value = sanitizedInput;
        showModal("숫자만 입력해주세요.");
      }
    });

    function showModal(message) {
      var modal = document.createElement("div");
      modal.classList.add("modal");
      modal.textContent = message;
      document.body.appendChild(modal);
      setTimeout(function () {
        document.body.removeChild(modal);
      }, 2000);
    }
    
    function uploadvv() {
       console.log('테스트테스트가나다라마바사')
      var productName = document.getElementById("productNameInput").value; /* 제품이름 */
      var productPrice = document.getElementById("productPriceInput").value; /* 제품가격*/
      var productDesc = document.getElementById("productDescriptionInput").value;/*제품성분*/
      console.log(productName)
       var fileInput = document.getElementById('productImageInput'); /*이미지정보*/
       var corpkey = "HDDAK-2024-400857923030220807";
        var file = fileInput.files[0];
        var formData = new FormData();
        formData.append('file', file);
        formData.append('productName',productName)
        formData.append('price',productPrice)
        formData.append('prodcomponent',productDesc)
        formData.append('corpkey',corpkey)
        console.log(formData)
      
           $.ajax({
            url: 'http://192.168.0.33:5000/image',
            type: 'POST',
            data: formData,
            processData: false,
            contentType: false,
            success: function(response) {
                alert(response);
            },
            error: function(xhr, status, error) {
                alert('파일 업로드 실패');
            }
        });
        
        
        
        document.getElementById("productImageInput").value = "";
        document.getElementById("productNameInput").value = "";
        document.getElementById("productPriceInput").value = "";
        document.getElementById("productDescriptionInput").value = "";
        document.querySelector(".imagePreview").innerHTML = "";
  		fileInput.value = ""; // 파일 선택 input 초기화

  

}
    
    
  </script>
  

</body>

</html>
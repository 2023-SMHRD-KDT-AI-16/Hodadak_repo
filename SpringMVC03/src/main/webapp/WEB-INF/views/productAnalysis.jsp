<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix = "fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
  <link href="${pageContext.request.contextPath}/resources/img/프리지아.png" rel="icon" type="image/png">
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
      <a class="navbar-brand pt-0" href="./Check'O.html">
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
                <img alt="Image placeholder" src="${pageContext.request.contextPath}/resources/img/프리지아.png">
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
                <a href="./Check'O.html">
                  <img src="${pageContext.request.contextPath}/resources/img/배너2.png">
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
            <li class="nav-item active">
              <a class="nav-link hover12 active" href="./Check'O.html">
                <i class="ni ni-check-bold text-black"></i> Check'O 제품 분석
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link hover12" href="./Suggest.html">
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
        <a class="h1 mb-0 text-black text-uppercase d-none d-lg-inline-block" href="./Check'O.html">Check'O</a>

        <!-- 위쪽 버튼------------------------------------------------------------------------------------------------------>
        <div class="col" style="padding-left: 45px;">
          <ul class="nav nav-pills justify-content-start">
            <li class="nav-item">
              <a href="Addproduct.html" class="nav-link we12 py-2 px-3">
                <span class="d-none d-md-block">제품 추가</span>
                <span class="d-md-none">제품 추가</span>
              </a>
            </li>
            <li>
              <div></div>
            </li>
            <li class="nav-item">
              <a href="Addreview.html" class="nav-link we12 py-2 px-3">
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


      <!-----------------------------컨텐츠----------------------------------------------------------------------------->

      <!-- 제품 버튼 ↓ ------------------------------------------------------------------------------------------------------>
      <div class="col">

        <ul class="nav nav-pills justify-content-xl-between" style="padding-bottom: 130px;">
<c:forEach var="product" items="${prodList}" begin="1">
          <li class="nav-item mr-2 mr-md-0" data-toggle="chart" data-target="#chart-sales"
            data-update='{"data":{"datasets":[{"data":[0, 20, 10, 30, 15, 40, 20, 60, 60]}]}}' data-prefix="$"
            data-suffix="k">
            <a href="#" class="nav-link ar123 py-2 px-3" data-toggle="tab">
              <span class="d-none d-md-block">
                <div class="hover13">
                  <figure style="margin-bottom: 6px; margin-top: 6px;"><img src="${pageContext.request.contextPath}/resources/img/${product.prod_name}.png" alt=""
                      style="width: 450px; height: 450px;">
                  </figure>
                </div>
              </span>
              <span class="d-md-none">${product.prod_name}</span>
              <span class="prod_idx" style="display:none">${product.prod_idx}</span>
            </a>
          </li>
</c:forEach>


        </ul>
      </div>
    </div>
    <!-- 제품 버튼 ↑ ------------------------------------------------------------------------------------------------------>


    <!-- 제품 정보칸 ↓ ------------------------------------------------------------------------------------------------------>
    <div class="container-fluid mt--7">
      <div class="row">
        <div class="col-xl-8 mb-5 mb-xl-0">
          <div class="card shadow">
            <div>
              <div class="card-body" style="background-color: #ffffff; height: 420px;">
                <!-- 내용 -->
                <div>
                  <figure><img src="" alt=""></figure>
                </div>
                <div class="s1" style=" height: 150px; padding-left: 30px;">

                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- 제품 정보칸 ↑ ------------------------------------------------------------------------------------------------------>


        <!-- 키워드 ↓ ------------------------------------------------------------------------------------------------------>
        <div class="col-xl-4 mb-5 mb-xl-0">
          <div class="card shadow">
            <div class="card-header bg-transparent hover12">
              <div class="row align-items-center">
                <div class="col">
                  <h2 class="text-black mb-0">제목생각안남(극지방)</h2>
                </div>
              </div>
            </div>
            <div class="card-body" style="background-color: #ffffff; padding: 0px;">
              <div class="chart">
                <canvas id="011"></canvas>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- 키워드 ↑ ------------------------------------------------------------------------------------------------------>



      <!-- 꺽은선 차트 ↓ ------------------------------------------------------------------------------------------------------>
      <div class="row" style="padding-top: 40px;">
        <div class="col-xl-12  mb-5 mb-xl-0">
          <div class="card shadow">
            <div class="card-header bg-transparent  hover12">
              <div class="row align-items-center">
                <div class="col">
                  <h2 class="text-black mb-0">긍정, 부정</h2>
                </div>
              </div>
            </div>
            <div class="card-body" style="background-color: #ffffff; padding: 0px;">
              <div class="chart" id="divlineChart">
                <canvas id="010"></canvas>
              </div>
            </div>
          </div>
        </div>
        <!-- 꺽은선 차트 ↑ ------------------------------------------------------------------------------------------------------>




        <!-- 긍정 리뷰 ↓ ------------------------------------------------------------------------------------------------------>
        <div class="col-xl-12 mb-5 mb-xl-0" style="padding-top: 40px;">
          <div class="card shadow">
            <div class="card-header bg-gradient-default1 border-0 hover12">
              <div class="row align-items-center">
                <div class="col">
                  <h3 class="mb-0">긍정 리뷰</h3>
                </div>
              </div>
            </div>
            <div class="table-responsive">
              <table class="table align-items-center table-flush">
                <thead class="thead-light">
            <tr>
                      <th scope="col">긍정</th>
            </tr>
                </thead>
                <tbody id="positiveReviewTableBody">
 					 <tr>
                    <th scope="row">!</th>
                  </tr>
                  <tr>
                    <th scope="row">@</th>
                  </tr>
                  <tr>
                    <th scope="row">@</th>
                  </tr>
                  <tr>
                    <th scope="row">@</th>
                  </tr>
                  <tr>
                    <th scope="row">@</th>
                  </tr>

                </tbody>
              </table>
            </div>
          </div>
        </div>
        <!-- 긍정 리뷰 ↑ ------------------------------------------------------------------------------------------------------>


        <!-- 부정 리뷰 ↓ ------------------------------------------------------------------------------------------------------>
        <div class="col-xl-12 mb-5 mb-xl-0" style="padding-top: 40px;">
          <div class="card shadow">
            <div class="card-header bg-gradient-default1 border-0 hover12">
              <div class="row align-items-center">
                <div class="col">
                  <h3 class="mb-0">부정 리뷰</h3>
                </div>
              </div>
            </div>
            <div class="table-responsive">
              <table class="table align-items-center table-flush">
                <thead class="thead-light">
                  <tr>
                    <th scope="col">부정</th>
                  </tr>
                </thead>
                <tbody id="negativeReviewTableBody2">
                  <tr>
                    <th scope="row">!</th>
                  </tr>
                  <tr>
                    <th scope="row">@</th>
                  </tr>
                  <tr>
                    <th scope="row">@</th>
                  </tr>
                  <tr>
                    <th scope="row">@</th>
                  </tr>
                  <tr>
                    <th scope="row">@</th>
                  </tr>

                </tbody>
              </table>
            </div>
          </div>
        </div>
        <!-- 부정 리뷰 ↑ ------------------------------------------------------------------------------------------------------>




      </div><!--00000-->
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
  <script src="${pageContext.request.contextPath}/resources/js/plugins/chart.js/dist/Chart.extension.js"></script>
  <!--   Argon JS   -->
  <script src="${pageContext.request.contextPath}/resources/js/argon-dashboard.min.js?v=1.1.2"></script>
  <script src="https://cdn.trackjs.com/agent/v3/latest/t.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/sakura.js" text="text/javascript"></script>
  <script>


    //---------------------------------------------------------------------------------------
    document.addEventListener("DOMContentLoaded", function () {
      const container = document.getElementById("particle-1");
      const texts = [" ", "La form", "Check'O"];
      const gap = 1;
      function createParticles() {
        for (let i = 0; i < 3; i++) {
          const particle = document.createElement("div"); particle.classList.add("particle");
          particle.textContent = texts[i]; particle.style.left = i * gap + "px"; container.appendChild(particle);
        }
      }
      createParticles(); document.addEventListener("mousemove", function (event) {
        const
          particles = document.querySelectorAll(".particle"); particles.forEach((particle, index) => {
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
      delay: 1200,
    });
    window.TrackJS &&
      TrackJS.install({
        token: "ee6fab19c5a04ac1a32a645abde4613a",
        application: "argon-dashboard-free"
      });


    //---------------------------------------------------------------------------------------
$(document).ready(function () {
  // Line Chart 및 Polar Chart 생성
  var myChart = createLineChart();
  var myPolarChart = createPolarChart();

  // 각 버튼에 클릭 이벤트 리스너 추가
  const buttons = document.querySelectorAll('.ar123');
  buttons.forEach(button => {
    button.addEventListener('click', function (event) {
      event.preventDefault();
      // 모든 버튼에서 active 클래스 제거
      buttons.forEach(btn => btn.classList.remove('active'));
      
      // 현재 클릭한 버튼에 active 클래스 추가
      this.classList.add('active');

      handleButtonClick(this, myChart, myPolarChart);
    });
  });
  
  buttons[0].classList.add('active');
  handleButtonClick(buttons[0]);
});

//Line Chart 생성 함수
function createLineChart(prod_idx) {
    $.ajax({
        url: 'getReview.do',
        contentType: 'application/json;charset:UTF-8',
        data: { "prod_idx": prod_idx },
        success: function(response) {
            console.log("서버로부터의 응답:", response);
            var reviews = []; // 리뷰 데이터를 저장할 배열

            // 서버에서 받은 응답(response)의 각 요소를 순회하면서 리뷰 데이터를 reviews 배열에 추가
            for (var i = 0; i < response.length; i++) {
                reviews.push(response[i]);
            }

            // 날짜와 긍정/부정 여부를 추출하여 새로운 배열에 저장
            var data = reviews.map(review => ({
                date: new Date(review.review_oriDate),
                isPositive: review.review_rating
            }));

            // 날짜를 기준으로 데이터를 그룹화
            var groupedData = {};
            data.forEach(item => {
                var monthYear = item.date.getMonth() + 1 + '-' + item.date.getFullYear(); // 월과 연도를 문자열로 결합하여 키로 사용
                if (!groupedData[monthYear]) {
                    groupedData[monthYear] = { positive: 0, negative: 0 };
                }
                if (item.isPositive) {
                    groupedData[monthYear].positive++;
                } else {
                    groupedData[monthYear].negative++;
                }
            });

            // 그룹화된 데이터를 바탕으로 긍정과 부정 리뷰의 수를 계산
            var chartData = {
                labels: [],
                datasets: [{
                        label: '긍정',
                        data: [],
                        backgroundColor: 'rgba(224, 169, 200, 0.2)',
                        borderColor: '#E0A9C8',
                        borderWidth: 3,
                        fill: true
                    },
                    {
                        label: '부정',
                        data: [],
                        backgroundColor: 'rgba(84, 172, 244, 0.2)',
                        borderColor: '#54ACF4',
                        borderWidth: 3,
                        fill: true
                    }
                ]
            };
            for (var monthYear in groupedData) {
                chartData.labels.push(monthYear);
                chartData.datasets[0].data.push(groupedData[monthYear].positive);
                chartData.datasets[1].data.push(groupedData[monthYear].negative);
            }

            // 차트 생성
            createChart(chartData);
        },
        error: function(xhr, status, error) {
            console.error("에러 발생:", error);
        }
    });
}

// 차트 생성 함수
function createChart(chartData) {
	$('#010').remove();
    $('#divlineChart').append('<canvas id="010"></canvas>');
    var ctx2 = document.getElementById('010').getContext('2d');

    return new Chart(ctx2, {
        type: 'line',
        data: chartData,
        options: {
            responsive: true,
            maintainAspectRatio: false,
            plugins: {
                legend: {
                    display: true,
                    position: 'top',
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
            scales: {
                x: {
                    beginAtZero: true
                },
                y: {
                    beginAtZero: true
                }
            }
        }
    });
}

// Polar Chart 생성 함수
function createPolarChart() {
	 var ctx1 = document.getElementById('011').getContext('2d');
  return new Chart(ctx1, {
    type: 'polarArea',
    data: {
      labels: ['부정', '긍정', '긍정', '긍정', '긍정'],
      datasets: [{
        label: '극지방 차트',
        data: [5, 10, 15, 20, 25],
        backgroundColor: [
          'rgba(255, 99, 132, 0.5)',
          'rgba(54, 162, 235, 0.5)',
          'rgba(255, 206, 86, 0.5)',
          'rgba(75, 192, 192, 0.5)',
          'rgba(153, 102, 255, 0.5)'
        ],
        borderColor: [
          'rgba(255, 99, 132, 1)',
          'rgba(54, 162, 235, 1)',
          'rgba(255, 206, 86, 1)',
          'rgba(75, 192, 192, 1)',
          'rgba(153, 102, 255, 1)'
        ],
        borderWidth: 2
      }]
    },
    options: {
      responsive: true,
      maintainAspectRatio: false,
      plugins: {
        legend: {
          display: true,
          position: 'top',
          align: 'center',
          labels: {
            font: {
              size: 14
            }
          }
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
      scales: {
        angle: {
          display: false
        },
        radius: {
          display: false
        }
      }
    }
  });
}

// 버튼 클릭 시 실행되는 함수
function handleButtonClick(button) {
  const textData = button.querySelector('span.d-md-none').textContent;
  const prod_idx = button.querySelector('span.prod_idx').textContent;
  
  getProductDetail(prod_idx)
  getPositiveReview(prod_idx)
  getNegativeReview(prod_idx)
  createLineChart(prod_idx)
  createPolarChart(prod_idx)
}

//인덱스로 제품 정보 불러오기
function getProductDetail(prod_idx){
    $.ajax({
        url: 'getProductDetail.do',
        contentType: 'application/json;charset:UTF-8',
        data:{ "prod_idx": prod_idx },
        success: function(response) {
           // console.log("서버로부터의 응답:", response);
            const data = getTextData(response);

            if (data) {
              updateImage(data.imageSrc);
              updateText(data.textData);
            }
        },
        error: function(xhr, status, error) {
            console.error("에러 발생:", error);
        }
    });
    
    
}

//선택된 데이터에 맞는 텍스트를 반환하는 함수
function getTextData(response) {
	const formattedPrice = new Intl.NumberFormat('ko-KR', { style: 'decimal', currency: 'KRW' }).format(response.prod_price);
  const chartDataMap = {
      imageSrc: '',
      textData: `
<h1 class="text-black mb-0" style="font-size: 3em; text-align: center;">`+response.prod_name+`</h1>
<h5 class="text-uppercase text-black ls-1 mb-1" style="font-size: 1.6em; text-align: right;">가격 : `+formattedPrice+`원</h5>
<br>
<h5 class="text-uppercase text-black ls-1 mb-1" style="font-size: 1.6em;">성분 : `+response.prod_detail+`</h5>`,
  };
  return chartDataMap;
}


//제품별 긍정리뷰 불러오기 
function getPositiveReview(prod_idx){
	 $.ajax({
	        url: 'getReviewP.do',
	        contentType: 'application/json;charset:UTF-8',
	        data:{ "prod_idx": prod_idx },
	        success: function(response) {
	            //console.log("서버로부터의 응답:", response);

	           // 리뷰 내용을 저장할 배열 초기화
	     	  const reviews = [];
	     	  
	     	  // response 객체를 순회하여 review_content 값을 reviews 배열에 추가
	     	  response.forEach(item => {
	     	    reviews.push(item.review_content);
	     	  });
	              updateTable('.table-responsive tbody', reviews);
	        },
	        error: function(xhr, status, error) {
	            console.error("에러 발생:", error);
	        }
	    });
}

//제품별 부정리뷰 불러오기 
function getNegativeReview(prod_idx){
	 $.ajax({
	        url: 'getReviewN.do',
	        contentType: 'application/json;charset:UTF-8',
	        data:{ "prod_idx": prod_idx },
	        success: function(response) {
	           // console.log("서버로부터의 응답:", response);

	           // 리뷰 내용을 저장할 배열 초기화
	     	  const reviews = [];
	     	  
	     	  // response 객체를 순회하여 review_content 값을 reviews 배열에 추가
	     	  response.forEach(item => {
	     	    reviews.push(item.review_content);
	     	  });

	         
	              updateTable('#negativeReviewTableBody2', reviews);
	        },
	        error: function(xhr, status, error) {
	            console.error("에러 발생:", error);
	        }
	    });
}




// 이미지 업데이트 함수
function updateImage(src) {
  document.querySelector('.card-body img').src = src;
}

// 텍스트 업데이트 함수
function updateText(html) {
  document.querySelector('.s1').innerHTML = html;
}

//테이블 업데이트 함수
function updateTable(selector, data) {
  const tableBody = document.querySelector(selector);
  tableBody.innerHTML = '';
  data.forEach(item => {
    const newRow = document.createElement('tr');
    const newCell = document.createElement('td');
    newCell.textContent = item;
    newRow.appendChild(newCell);
    tableBody.appendChild(newRow);
  });
}



  </script>

</body>

</html>
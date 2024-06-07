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
  <link href="./assets/img/프리지아.png" rel="icon" type="image/png">
  <!-- Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
  <!-- Icons -->
  <link href="./assets/js/plugins/nucleo/css/nucleo.css" rel="stylesheet" />
  <link href="./assets/js/plugins/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet" />
  <!-- CSS Files -->
  <link href="./assets/css/argon-dashboard.css?v=1.1.2" rel="stylesheet" />
  <link rel="stylesheet" href="assets/css/sakura.css" />
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
        <img src="./assets/img/배너2.png" class="navbar-brand-img" alt="...">
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
                <a href="./Check'O.html">
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


      <!-----------------------------컨텐츠----------------------------------------------------------------------------->

      <!-- 제품 버튼 ↓ ------------------------------------------------------------------------------------------------------>
      <div class="col">

        <ul class="nav nav-pills justify-content-xl-between" style="padding-bottom: 130px;">

          <li class="nav-item mr-2 mr-md-0" data-toggle="chart" data-target="#chart-sales"
            data-update='{"data":{"datasets":[{"data":[0, 20, 10, 30, 15, 40, 20, 60, 60]}]}}' data-prefix="$"
            data-suffix="k">
            <a href="#" class="nav-link ar123 py-2 px-3 active" data-toggle="tab">
              <span class="d-none d-md-block">
                <div class="hover13">
                  <figure style="margin-bottom: 6px; margin-top: 6px;"><img src="assets/img/아르타민.png" alt=""
                      style="width: 450px; height: 450px;">
                  </figure>
                </div>
              </span>
              <span class="d-md-none">아르타민</span>
            </a>
          </li>

          <li class="nav-item mr-2 mr-md-0" data-toggle="chart" data-target="#chart-sales"
            data-update='{"data":{"datasets":[{"data":[0, 20, 5, 25, 10, 30, 15, 40, 40]}]}}' data-prefix="$"
            data-suffix="k">
            <a href="#" class="nav-link ar123 py-2 px-3" data-toggle="tab">
              <span class="d-none d-md-block">
                <div class="hover13">
                  <figure style="margin-bottom: 6px; margin-top: 6px;">
                    <img src="assets/img/아르타민레몬.png" alt="" style="width: 450px; height: 450px;">
                  </figure>
                </div>
              </span>
              <span class="d-md-none">아르타민레몬</span>
            </a>
          </li>

          <li class="nav-item mr-2 mr-md-0" data-toggle="chart" data-target="#chart-sales"
            data-update='{"data":{"datasets":[{"data":[0, 20, 5, 25, 10, 30, 15, 40, 40]}]}}' data-prefix="$"
            data-suffix="k">
            <a href="#" class="nav-link ar123 py-2 px-3" data-toggle="tab">
              <span class="d-none d-md-block">
                <div class="hover13">
                  <figure style="margin-bottom: 6px; margin-top: 6px;"><img src="assets/img/베러릴렉스.jpg" alt=""
                      style="width: 450px; height: 450px;"></figure>
                </div>
              </span>
              <span class="d-md-none">베러릴렉스</span>
            </a>
          </li>

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
                  <h1 class="text-black mb-0" style="font-size: 3em; text-align: center;">아르타민</h1>
                  <h5 class="text-uppercase text-black ls-1 mb-1" style="font-size: 1.6em; text-align: right;">
                    가격 : 34,900원</h5>
                  <h5 class="text-uppercase text-black ls-1 mb-1" style="font-size: 1.6em; text-align: left;">
                    성분</h5>
                  <br>
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
              <div class="chart">
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
                    <th scope="row">맛있어요</th>
                  </tr>
                  <tr>
                    <th scope="row">효과도 좋다</th>
                  </tr>
                  <tr>
                    <th scope="row">진심 맛있어요</th>
                  </tr>
                  <tr>
                    <th scope="row">팔팔해진다</th>
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
  <script src="./assets/js/plugins/jquery/dist/jquery.min.js"></script>
  <script src="./assets/js/plugins/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <!--   Optional JS   -->
  <script src="./assets/js/plugins/chart.js/dist/Chart.min.js"></script>
  <script src="./assets/js/plugins/chart.js/dist/Chart.extension.js"></script>
  <!--   Argon JS   -->
  <script src="./assets/js/argon-dashboard.min.js?v=1.1.2"></script>
  <script src="https://cdn.trackjs.com/agent/v3/latest/t.js"></script>
  <script src="assets/js/sakura.js" text="text/javascript"></script>
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
    document.addEventListener("DOMContentLoaded", function () {
      var ctx1 = document.getElementById('011').getContext('2d');
      var ctx2 = document.getElementById('010').getContext('2d');

      var myChart = new Chart(ctx2, {
        type: 'line',
        data: {
          labels: ['1월', '2월', '3월', '4월', '5월'],
          datasets: [{
            label: 'Dataset 1',
            data: [40, 60, 50, 30, 20],
            backgroundColor: 'rgba(224, 169, 200, 0.2)',
            borderColor: '#E0A9C8',
            borderWidth: 3,
            fill: true
          },
          {
            label: 'Dataset 2',
            data: [30, 50, 60, 40, 30],
            backgroundColor: 'rgba(84, 172, 244, 0.2)',
            borderColor: '#54ACF4',
            borderWidth: 3,
            fill: true

          }]
        },
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

      //---------------------------------------------------------------------------------------
      var myPolarChart = new Chart(ctx1, {
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

      //---------------------------------------------------------------------------------------
      const buttons = document.querySelectorAll('.ar123');
      buttons.forEach(button => {
        button.addEventListener('click', function (event) {
          event.preventDefault();
          const textData = this.querySelector('span.d-md-none').textContent;
          let newImageSrc = '';
          let newTextData = '';
          let newChartData1 = [];
          let newChartData2 = [];
          let newReviews = [];
          let newNegativeData = [];
          let newPolarData = [];
          switch (textData) {
            case '아르타민':
              newImageSrc = '';
              newTextData = `
<h1 class="text-black mb-0" style="font-size: 3em; text-align: center;">아르타민</h1>
<h5 class="text-uppercase text-black ls-1 mb-1" style="font-size: 1.6em; text-align: right;">
  가격 : 34,900원</h5>
<br>
<h5 class="text-uppercase text-black ls-1 mb-1" style="font-size: 1.6em;">
성분 : 해야, 해야, 해야
한입에 널 삼킬 때야 (탐이, 탐이 나)
해야, 해야, 해야
이미 내가 이긴 패야 (널 보면 탐이, 탐이 나)</h5>`;
              newChartData1 = [25, 80, 45, 95, 10];
              newChartData2 = [20, 70, 55, 30, 5];
              newPolarData = [25, 15, 30, 20, 25];
              newReviews = ['맛있어요', '효과도 좋다', '진심 맛있어요', '팔팔해진다', '@'];
              newNegativeData = ['ㅁㄴㅇ', 'ㅈㄴㅇ', 'ㅁㅌㅊ', 'ㄴㄷㅈ', 'ㅊㄳㄱㅈㅇㄴㅂㅂ'];
              break;
            case '아르타민레몬':
              newImageSrc = '';
              newTextData = `
<h1 class="text-black mb-0" style="font-size: 3em; text-align: center;">아르타민 레몬</h1>
<h5 class="text-uppercase text-black ls-1 mb-1" style="font-size: 1.6em; text-align: right;">
  가격 : 34,900원</h5>
<br>
<h5 class="text-uppercase text-black ls-1 mb-1" style="font-size: 1.6em;">
성분 : 해야, 해야, 해야
뜨겁게 떠오르는 해야
별안간 홀린 그 순간 bite
단 한 번에 난 널 휘리휘리 catch ya</h5>`;
              newChartData1 = [40, 20, 90, 70, 5];
              newChartData2 = [35, 25, 85, 60, 10];
              newPolarData = [100, 90, 80, 70, 60];
              newReviews = ['상큼해요', '맛있어요', '레몬향 좋아요', '기분 좋아져요', '재구매 의사 있습니다'];
              newNegativeData = ['비싸다', '쓰다', '맛없다', '별로다', '그저그렇다'];
              break;
            case '베러릴렉스':
              newImageSrc = '';
              newTextData = `
<h1 class="text-black mb-0" style="font-size: 3em; text-align: center;">베러릴렉스</h1>
<h5 class="text-uppercase text-black ls-1 mb-1" style="font-size: 1.6em; text-align: right;">
  가격 : 47,900원</h5>
<br>
<h5 class="text-uppercase text-black ls-1 mb-1" style="font-size: 1.6em;">
성분 : 더 높이 keep it up
Uh-huh
Happily ever after? Nope
(Da-da-da-dun-dun)</h5>`;
              newChartData1 = [15, 60, 35, 85, 55];
              newChartData2 = [30, 20, 80, 40, 10];
              newPolarData = [10, 20, 30, 40, 50];
              newReviews = ['편하다', '맛있다', '짱이다', '행복하다', '재구매 의사 있습니다'];
              newNegativeData = ['정말 비싸다', '진짜 쓰다', '완저 맛없다', '그냥 별로다', '그저그렇다'];
              break;
          }

          document.querySelector('.card-body img').src = newImageSrc;
          document.querySelector('.s1').innerHTML = newTextData;

          myChart.data.datasets[0].data = newChartData1;
          myChart.data.datasets[1].data = newChartData2;
          myChart.update();

          myPolarChart.data.datasets[0].data = newPolarData;
          myPolarChart.update();

          const reviewTableBody = document.querySelector('.table-responsive tbody');
          reviewTableBody.innerHTML = '';
          newReviews.forEach(review => {
            const newRow = document.createElement('tr');
            const newCell = document.createElement('th');
            newCell.scope = 'row';
            newCell.textContent = review;
            newRow.appendChild(newCell);
            reviewTableBody.appendChild(newRow);
          });

          const negativeReviewTableBody = document.getElementById('negativeReviewTableBody2');
          negativeReviewTableBody.innerHTML = '';
          newNegativeData.forEach(negativeReview => {
            const newRow = document.createElement('tr');
            const newCell = document.createElement('td');
            newCell.textContent = negativeReview;
            newRow.appendChild(newCell);
            negativeReviewTableBody.appendChild(newRow);
          });

        });
      });
    });


  </script>

</body>

</html>
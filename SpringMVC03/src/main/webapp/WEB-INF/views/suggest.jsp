<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  <link rel="stylesheet" href="assets/css/sakura.css" />
  <!--LDA-->
  <link rel="stylesheet" type="text/css"
    href="https://cdn.jsdelivr.net/gh/bmabey/pyLDAvis@3.4.0/pyLDAvis/js/ldavis.v1.0.0.css">


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
      <a class="navbar-brand pt-0" href="suggest.do">
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
                <a href="suggest.do">
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
              <a class="nav-link hover12" href="dashboard.do">
                <i class="ni ni-chart-bar-32 text-red "></i> La Form 트렌드 분석
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link hover12" href="productAnalysis.do">
                <i class="ni ni-check-bold text-black"></i> Check'O 제품 분석
              </a>
            </li>
            <li class="nav-item active">
              <a class="nav-link hover12 active" href="suggest.do">
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
        <a class="h1 mb-0 text-black text-uppercase d-none d-lg-inline-block" href="suggest.do">La Form</a>

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
							<input class="form-control" placeholder="ChatGPT에게 질문하기" type="text"
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
      <!-- 테이블 섹션 -->
      <div class="row">
        <div class="col-xl-6 mb-5 mb-xl-0 " style="padding-top: 25px;">
          <div class="card shadow " style="height: 230px;">
            <div class="card-header bg-gradient-default2 border-0 hover12">
              <div class="row align-items-center ">
                <div class="col">
                  <h6 class="text-uppercase text-black ls-1 mb-1">Check'O</h6>
                  <h3 class="mb-0">강점</h3>
                </div>
              </div>
            </div>
            <div class="table-responsive scrollbar" id="strongResult">
              
            </div>
          </div>
          <div style="padding-top: 30px;"></div>
          <div class="card shadow " style="height: 230px;">
            <div class="card-header bg-gradient-default2 border-0 hover12">
              <div class="row align-items-center ">
                <div class="col">
                  <h6 class="text-uppercase text-black ls-1 mb-1">Check'O</h6>
                  <h3 class="mb-0">개선점</h3>
                </div>
              </div>
            </div>
            <div class="table-responsive scrollbar" id="weakResult">
              
            </div>
          </div>
        </div>


        <!------------------------------------ API ------------------------------------------------>
        <!-- 카드 섹션 -->
        <div class="col-xl-6" style="padding-top: 25px; height: 493px;">
          <div class="card shadow">


            <div class="card-header bg-gradient-default2 border-0 hover12">
              <div class="row align-items-center">
                <div class="col">
                  <h6 class="text-uppercase text-black ls-1 mb-1">ChatGPT 기반
                  </h6>
                  <h2 class="mb-0">종합 분석 결과</h2>
                </div>
              </div>
            </div>


            <div class="card-body scrollbar"
              style="height: 408.5px; max-height: 408.5px; display: flex; justify-content: center; align-items: center; overflow: auto;">
              <!-- 차트 -->
              <div id="apiResult">
                <h1 style="text-align: center; height: 408.5px; max-height: 408.5px; margin: 0px; padding: 20px;">
                 
                </h1>
              </div>
            </div>


          </div>
        </div>

        <!-----------------------------LDA토픽 -------------------------------------------------------------------------->

        <div class="col-xl-12  mb-5 mb-xl-0  " style="padding-top: 25px;">
          <div class="card shadow">
            <div class="row">
              <div class="card-header bg-gradient-default1 border-0">
                <div class="row align-items-center ">

                  <div class="col">
                    <h6 class="text-uppercase text-black ls-1 mb-1">LDA topic</h6>
                    <h2 class="text-black mb-0">LDA </h2>
                  </div>

                  <div class="col"></div>
                </div>
              </div>
              <div class="card-body" style="background-color: #ffffff;">
                <div id="ldavis_el9244820594679021601244233400" style="padding-left: 150px; padding-top: 50px;"></div>
              </div>
            </div>
          </div>
        </div>


      </div>
    </div>


    <!----------------------------- 안에 들어갈 컨텐츠 ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑ ----------------------------------------------------------------------------->




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
            &copy; 2024 <a href="https://www.naver.com" class="font-weight-bold ml-1" target="_blank">관리자
              요청하기</a>
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



  </script>
  <!------------------------------------------LDA----------------------------------------->
  <script type="text/javascript">

    var ldavis_el9244820594679021601244233400_data = { "mdsDat": { "x": [0.1596380519870115, -0.037602197888892776, -0.09852549013414072, -0.16323990127667873, -0.09148254405580408, -0.15659380411919963, 0.26116931846676483, -0.19269236768678843, 0.0547369401426812, 0.2645919945650465], "y": [0.10073345630691273, 0.22680955484116894, 0.13069399555105612, -0.00562557270664433, 0.2237759869892103, -0.2330274411654768, -0.0856165258782709, -0.16194214451883582, -0.149387936921677, -0.04641337249744329], "topics": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], "cluster": [1, 1, 1, 1, 1, 1, 1, 1, 1, 1], "Freq": [12.672888191273493, 9.865935878288257, 7.627374179904965, 8.841325881745691, 8.781754697004587, 10.913620290976763, 10.949421245025125, 10.170736278681225, 10.61128879590073, 9.565654561199164] }, "tinfo": { "Term": ["\ud6a8\uacfc", "\uc544\uce68", "\uc544\ub974\ud0c0\ubbfc", "\ube44\ud0c0\ubbfc", "\ucee4\ud53c", "\ud53c\ub85c", "\ubcf5\uc6a9", "\uc790\ubabd", "\ubcf4\ud2c0", "\uc2dc\ud5d8", "\uc6b4\ub3d9", "\ud558\ub8e8", "\ucd94\ucc9c", "\uccb4\ub825", "\ud65c\ub825", "\uc120\ubb3c", "\uc2dc\uc791", "\uc74c\ub8cc", "\ud559\uc0dd", "\uce74\ud398\uc778", "\uc601\uc591\uc81c", "\uc0c1\ud07c", "\uc5c4\ub9c8", "\uac00\uaca9", "\ud68c\ubcf5", "\ud3c9\uc774", "\uc218\ud5d8\uc0dd", "\ud53c\uace4", "\uc544\ub974\uae30\ub2cc", "\uad11\uace0", "\uc544\ub974\ud0c0\ubbfc", "\ub3c4\uc6c0", "\uc9d1\uc911", "\uc800\ub141", "\uc785\ub9db", "\ubc18\uc2e0\ubc18\uc758", "\ud559\uc6d0", "\uc0c8\ubcbd", "\uba38\ub9ac", "\ud0c4\uc0b0\uc218", "\uacf5\ubcf5", "\uc5d0\ub108\uc9c0", "\ub538\uc544\uc774", "\ud559\uad50", "\uc54c\uc57d", "\uacf5\ubd80", "\uc74c\ub8cc", "\ud559\uc0dd", "\ub0a8\ud3b8", "\ud3c9\uac00", "\uc544\uce68", "\ud6a8\ub2a5", "\uac10\uae30", "\uc218\ub2a5", "\uc785\uad6c", "\uc624\ud6c4", "\uc57c\uadfc", "\uc878\ub9bc", "\uc0c1\ud488", "\ubcc4\ub85c", "\ud53c\ub85c", "\uc218\ud5d8\uc0dd", "\uc2dc\ud5d8", "\ud68c\ubcf5", "\uc790\ubabd", "\ubcf4\ucda9", "\ucee4\ud53c", "\uad11\uace0", "\ud6a8\uacfc", "\ubcf4\ud2c0", "\uc0c1\ud07c", "\uae30\ub300", "\ubd80\ub2f4", "\uc74c\ub8cc\uc218", "\uc131\ubd84", "\uc138\ucc99", "\ud3ec\uc7a5", "\ub118\uae40", "\uc785\uad6c", "\uc218\ub2a5", "\ub0a8\ud3b8", "\uc74c\ub8cc", "\ud568\ub7c9", "\uac00\ubc29", "\ud6a8\ub2a5", "\uc0ac\uc774\uc988", "\ud3c9\uac00", "\uac10\uae30", "\uc624\ud6c4", "\uc57c\uadfc", "\uc878\ub9bc", "\uc0c1\ud488", "\ud0c4\uc0b0\uc218", "\ubcc4\ub85c", "\uac00\ub8e8", "\uc5ec\ub984", "\uac31\ub144\uae30", "\ud1f4\uadfc", "\ubcf4\ucda9", "\uc544\ub974\ud0c0\ubbfc", "\uc544\ub974\uae30\ub2cc", "\uc6a9\ub7c9", "\ube44\ud0c0\ubbfc", "\uccb4\ub825", "\uacf5\ubd80", "\uc544\uce68", "\uce74\ud398\uc778", "\uc2dc\uc791", "\ucd94\ucc9c", "\uac00\uaca9", "\ubcf5\uc6a9", "\uccb4\ub825", "\uc218\ud5d8\uc0dd", "\uc624\uc804", "\uac01\uc131", "\uc878\uc74c", "\ubcc4\ub85c", "\uc624\ud6c4", "\uace0\ubbfc", "\ub538\uc544\uc774", "\uac00\ubc29", "\uae30\ubd84", "\uacf5\ubd80", "\ud3c9\uac00", "\ud6a8\ub2a5", "\uac10\uae30", "\uc218\ub2a5", "\uc785\uad6c", "\uc57c\uadfc", "\uc0c1\ud488", "\uc878\ub9bc", "\ud0c4\uc0b0\uc218", "\uc5ec\ub984", "\uac00\ub8e8", "\uac31\ub144\uae30", "\ud1f4\uadfc", "\ubcf4\ucda9", "\uba38\ub9ac", "\uc0ac\uc774\uc988", "\uac71\uc815", "\uc5d0\ub108\uc9c0", "\ud53c\ub85c", "\ud6a8\uacfc", "\uc544\ub974\ud0c0\ubbfc", "\uc544\uce68", "\ub808\ubaac", "\uc0c1\ud07c", "\ube44\ud0c0\ubbfc", "\ud65c\ub825", "\uc815\uc2e0", "\ub4f1\uad50", "\uac00\uaca9", "\ubc18\uc2e0\ubc18\uc758", "\uae30\uc6b4", "\ucee4\ud53c", "\uce74\ud398\uc778", "\uc601\uc591\uc81c", "\uae30\uc6b4", "\uac74\uac15", "\ucee8\ub514\uc158", "\uc544\uae30", "\uc57c\uadfc", "\uc218\ubd84", "\uac10\uae30", "\ub4f1\uad50", "\uace0\ubbfc", "\ud6a8\ub2a5", "\ud3c9\uac00", "\uc218\ub2a5", "\uc785\uad6c", "\uc624\ud6c4", "\uc878\ub9bc", "\uc0c1\ud488", "\ud0c4\uc0b0\uc218", "\ubcc4\ub85c", "\uc5ec\ub984", "\uac00\ub8e8", "\uac31\ub144\uae30", "\ud1f4\uadfc", "\ubcf4\ucda9", "\uba38\ub9ac", "\uc0ac\uc774\uc988", "\uac71\uc815", "\uc878\uc74c", "\uc544\ub974\ud0c0\ubbfc", "\ud559\uc0dd", "\uc218\ud5d8\uc0dd", "\uc2dc\uc791", "\uc544\uce68", "\uc2dc\ud5d8", "\ud6a8\uacfc", "\ube48\ub3c4", "\ud559\uad50", "\uc601\uc591", "\uc815\uc2e0", "\ubc18\uc2e0\ubc18\uc758", "\uc54c\uc57d", "\uacf5\ubcf5", "\uae30\ub825", "\uc74c\ub8cc", "\uc790\ubabd", "\uc544\ub974\uae30\ub2cc", "\uac00\uc871", "\uc2e0\ub791", "\ub808\ubaac", "\ucd5c\uace0", "\uc2a4\ud2b8\ub808\uc2a4", "\ud734\ub300\uc131", "\ub0c4\uc0c8", "\uac71\uc815", "\ucda9\uc804", "\uacf5\ubd80", "\ud568\ub7c9", "\ud3c9\uac00", "\ud6a8\ub2a5", "\uc5d0\ub108\uc9c0", "\uac10\uae30", "\uc218\ub2a5", "\uc785\uad6c", "\uc624\ud6c4", "\uc57c\uadfc", "\uc878\ub9bc", "\uc0c1\ud488", "\ud0c4\uc0b0\uc218", "\ubcc4\ub85c", "\uac00\ub8e8", "\uc5ec\ub984", "\uac31\ub144\uae30", "\ud1f4\uadfc", "\ubcf4\ucda9", "\uc544\ub974\ud0c0\ubbfc", "\uc6b4\ub3d9", "\ube44\ud0c0\ubbfc", "\ud65c\ub825", "\uace0\ubbfc", "\ud559\uad50", "\uc74c\ub8cc\uc218", "\uc2dc\ud5d8", "\ud68c\uc0ac", "\uc0c1\ud07c", "\ucee8\ub514\uc158", "\ubcf5\uc6a9", "\uae30\ubd84", "\ud559\uc0dd", "\uc624\ub80c\uc9c0", "\ud53c\ub85c", "\ucd94\ucc9c", "\uac00\uaca9", "\ud68c\ubcf5", "\uc6a9\ub7c9", "\uc601\uc591", "\uc0dd\uc218", "\uae30\ub825", "\uc5ec\ub984", "\uac00\ub8e8", "\uc54c\uc57d", "\uc218\ubd84", "\ubcf4\ucda9", "\uc9c0\uc778", "\uc8fc\uc2a4", "\uc5bc\uc74c", "\ud559\uad50", "\ucda9\uc804", "\ud3c9\uac00", "\ud6a8\ub2a5", "\uac10\uae30", "\uc218\ub2a5", "\uc785\uad6c", "\uc624\ud6c4", "\uc57c\uadfc", "\uc0c1\ud488", "\uc878\ub9bc", "\ud0c4\uc0b0\uc218", "\ubcc4\ub85c", "\uac31\ub144\uae30", "\uc544\ub974\uae30\ub2cc", "\uc601\uc591\uc81c", "\ube44\ud0c0\ubbfc", "\uc544\ub974\ud0c0\ubbfc", "\ud65c\ub825", "\uccb4\ub825", "\uc544\uce68", "\uac00\ubc29", "\ub3c4\uc6c0", "\uc800\ub141", "\ubcf5\uc6a9", "\ud6a8\uacfc", "\uad11\uace0", "\uc7a0", "\ube48\ub3c4", "\uae30\ubd84", "\ud559\uc0dd", "\uc815\uc2e0", "\uc5d0\ub108\uc9c0", "\ud3c9\uac00", "\uc0c8\ubcbd", "\ud6a8\ub2a5", "\uac10\uae30", "\uc218\ub2a5", "\uc785\uad6c", "\uc624\ud6c4", "\uc57c\uadfc", "\uc878\ub9bc", "\uc0c1\ud488", "\ud0c4\uc0b0\uc218", "\ubcc4\ub85c", "\uac00\ub8e8", "\uc5ec\ub984", "\uac31\ub144\uae30", "\ud1f4\uadfc", "\ubcf4\ucda9", "\uba38\ub9ac", "\uc0ac\uc774\uc988", "\uac71\uc815", "\uc878\uc74c", "\uae30\ub825", "\ubcf4\ud2c0", "\ud65c\ub825", "\uc601\uc591\uc81c", "\ub3c4\uc6c0", "\ubc18\uc2e0\ubc18\uc758", "\ucda9\uc804", "\ud53c\ub85c", "\uc2dc\ud5d8", "\ud559\uad50", "\ud3c9\uc774", "\uc57d\uc0ac", "\ube44\ud0c0\ubbfc", "\uacf5\ubcf5", "\ube44\ud0c0\ubbfc", "\uc6b4\ub3d9", "\uc120\ubb3c", "\uc5c4\ub9c8", "\ud1f4\uadfc", "\uc0ac\uc774\uc988", "\uac10\uae30", "\uc9c0\uc778", "\ubcf4\ucda9", "\ub538\uc544\uc774", "\ud3c9\uac00", "\ud6a8\ub2a5", "\uc218\ub2a5", "\uc785\uad6c", "\uc624\ud6c4", "\uc57c\uadfc", "\uc878\ub9bc", "\uc0c1\ud488", "\ud0c4\uc0b0\uc218", "\ubcc4\ub85c", "\uc5ec\ub984", "\uac00\ub8e8", "\uac31\ub144\uae30", "\uba38\ub9ac", "\uac71\uc815", "\uc878\uc74c", "\uae30\ub825", "\uc624\ub80c\uc9c0", "\ub0c4\uc0c8", "\ud68c\uc0ac", "\ud6a8\uacfc", "\uc544\ub974\ud0c0\ubbfc", "\uac00\uaca9", "\uc544\ub974\uae30\ub2cc", "\uccb4\ub825", "\uac00\ubc29", "\uc54c\uc57d", "\uad11\uace0", "\ucd94\ucc9c", "\uc800\ub141", "\ud568\ub7c9", "\uc601\uc591", "\ucda9\uc804", "\uae30\ub300", "\ucee8\ub514\uc158", "\uae30\ubd84", "\uace0\ubbfc", "\ud559\uc0dd", "\uc2dc\ud5d8", "\uc544\uce68", "\uc57d\uc0ac", "\ud68c\uc0ac", "\uc624\ub80c\uc9c0", "\uc0c1\ud488", "\uc878\ub9bc", "\uc5bc\uc74c", "\ub4f1\uad50", "\uc8fc\uc2a4", "\ud6a8\ub2a5", "\uac00\ubc29", "\ud559\uad50", "\uc815\uc2e0", "\ud3c9\uac00", "", "\uae30\ubd84", "\ud559\uc0dd", "\uac10\uae30", "\uc218\ub2a5", "\uc785\uad6c", "\uc624\ud6c4", "\uc57c\uadfc", "\ud0c4\uc0b0\uc218", "\ubcc4\ub85c", "\uc5ec\ub984", "\uac00\ub8e8", "\uac31\ub144\uae30", "\ud1f4\uadfc", "\ubcf4\ucda9", "\uac01\uc131", "\ud558\ub8e8", "\ud6a8\uacfc", "\uc544\ub974\uae30\ub2cc", "\uc74c\ub8cc", "\ub3c4\uc6c0", "\ube44\ud0c0\ubbfc", "\uc2dc\uc791", "\uc800\ub141", "\uba38\ub9ac", "\ubcf5\uc6a9", "\uc54c\uc57d", "\ud558\ub8e8", "\ud65c\ub825", "\uc2dc\uc791", "\ud3c9\uc774", "\ud53c\uace4", "\ud65c\uae30", "\ucd9c\uadfc", "\ub9cc\uc871", "\uac31\ub144\uae30", "", "\uc5d0\ub108\uc9c0", "\ud559\uc0dd", "\uacf5\ubcf5", "\ud3c9\uac00", "\ud6a8\ub2a5", "\uac10\uae30", "\uc218\ub2a5", "\uc785\uad6c", "\uc624\ud6c4", "\uc57c\uadfc", "\uc0c1\ud488", "\uc878\ub9bc", "\ud0c4\uc0b0\uc218", "\ubcc4\ub85c", "\uc5ec\ub984", "\uac00\ub8e8", "\ud1f4\uadfc", "\ubcf4\ucda9", "\uba38\ub9ac", "\uc0ac\uc774\uc988", "\uc544\uce68", "\uc544\ub974\ud0c0\ubbfc", "\uc544\ub974\uae30\ub2cc", "\ud6a8\uacfc", "\uae30\uc6b4", "\uae30\ubd84", "\ud559\uc6d0", "\uc815\uc2e0", "\ubcf4\ud2c0", "\uccb4\ub825", "\uc2a4\ud2b8\ub808\uc2a4", "\uacf5\ubd80", "\uc9c0\uc778", "\ubc18\uc2e0\ubc18\uc758", "\ub4f1\uad50", "\ucd94\ucc9c"], "Freq": [359.0, 273.0, 266.0, 232.0, 194.0, 179.0, 142.0, 148.0, 137.0, 113.0, 102.0, 99.0, 102.0, 86.0, 87.0, 81.0, 78.0, 101.0, 146.0, 69.0, 67.0, 70.0, 68.0, 69.0, 65.0, 56.0, 50.0, 54.0, 52.0, 53.0, 264.956024308895, 51.85218732164292, 36.52496671138768, 23.085441882315656, 21.086391618240672, 16.726813104205537, 13.533891828860224, 22.180278032086413, 10.118374676668209, 9.174407343828728, 40.02329291989344, 45.95136416099829, 17.43635723633506, 15.813674577937856, 6.380075650244409, 19.011955506490647, 25.92164126043289, 20.6117179599195, 8.559367443006233, 0.0949436521100398, 4.864370996417515, 0.09496271204321007, 0.09495187170621948, 0.09495008483748477, 0.09494534963533778, 0.09494600482054051, 0.094949221184263, 0.09494701737949017, 0.09494644161067566, 0.09494375138052506, 0.1058559304212983, 0.09700404081279418, 0.09546203265702843, 0.09503861425624124, 0.09498572294169376, 0.09496878739690809, 0.09496229510717197, 0.09496127262117376, 0.09495777830009255, 136.89499403518502, 69.18254272402076, 35.26098899296045, 27.98503402856529, 20.15941116949933, 18.380712856174448, 16.861215849712806, 13.433225989414202, 12.883506655313884, 7.806366211862812, 7.2566716082574505, 51.49930500633602, 74.64396192023908, 14.32417174683106, 10.255784730403311, 1.7581555567314933, 2.4108955792411617, 0.11057101671561177, 0.11057348976510747, 0.11057287150273354, 0.11057454081114314, 0.1105774389160209, 0.11057677428396893, 0.11057366751553997, 0.11057232279487669, 0.11060057738536497, 0.11057328882983594, 0.11057180500013852, 0.11057265511090267, 0.1107565727105854, 0.1286972252660039, 0.11320993827794724, 0.1114678835717837, 0.11194828889288114, 0.1107788069712076, 0.11075020460813398, 0.11068353273938607, 0.110681021048492, 0.11061394730920104, 0.11059730059478318, 0.11059616453767109, 141.72716255760196, 85.38768934778538, 49.6093487927166, 20.316512513853326, 16.437836875437057, 10.952875182757227, 9.218749787240055, 8.146816134589267, 29.427782606784053, 7.201636617759968, 5.1711537785375645, 7.247820177196465, 9.479423932666668, 0.10794219955344854, 0.10780029928800584, 0.10780700295528275, 0.10780051437893451, 0.10780028733850981, 0.10780051437893451, 0.1078099664303, 0.10780272503570142, 0.1078006338738949, 0.10781264311741236, 0.1078060230966077, 0.107811245026376, 0.10781778140070838, 0.10782662402777597, 0.10781178275369767, 0.10780040683347018, 0.10781486572367528, 0.11548899937176066, 0.1112861106760327, 0.10909975918407583, 0.10908752290013365, 0.10856093250876282, 0.10806611582735512, 0.10792095334949425, 0.10785498018187244, 0.10783725907924915, 0.10783716348328085, 0.1078281057652846, 0.10782174863339276, 0.10782042223933262, 0.1078196455220902, 193.14186625524934, 68.31750903263028, 66.69272192608294, 37.111480008027456, 27.417297536975905, 24.597468716162812, 12.083528343182804, 8.725142398898742, 5.212446269741399, 2.26248838750216, 6.1592014121251415, 12.748811308103253, 0.6466501360888308, 0.10832756436259772, 0.1083304662193032, 0.10832755051125306, 0.1083287902065998, 0.10833449003492586, 0.10833015456404844, 0.10833113800951903, 0.10832755051125306, 0.10833098564472782, 0.10832766824768264, 0.10832978750341504, 0.10833192753616444, 0.10833318800852816, 0.10833795979676225, 0.10832777905843989, 0.10855242709174764, 0.10833768969554144, 0.5424793256292187, 0.16750093120020512, 0.13334084196831889, 0.10954950228548475, 0.10858155646955978, 0.10848727036648453, 0.10840799912101669, 0.10835670066608219, 0.10835127786464925, 0.10834969881135843, 0.10834663073851708, 0.10834536334048103, 0.10834366655076064, 0.1083427731390303, 0.10834253074049882, 0.10834227449062268, 147.3778283655986, 51.43833802712577, 45.024934323479215, 34.32181880910429, 28.109503161139227, 25.274516951110133, 24.063802657827935, 13.23308230705419, 11.608565607670416, 10.397552820453322, 16.610250611096102, 44.01987794877561, 9.647855805771357, 0.10892386396591212, 0.10892446931865621, 1.2681009629716258, 0.10892616843374468, 0.10892990373533597, 0.10892385708690368, 0.10892480639007052, 0.10893039902394476, 0.10892385708690368, 0.10892385708690368, 0.10892964233301466, 0.1089291745604397, 0.10892771621064716, 0.10892676690748031, 0.10892710397889463, 0.10892575569323737, 0.1094047960840549, 0.166547439827536, 0.12807225126535363, 0.11790023394631162, 0.1090950618493418, 0.10895453746461478, 0.10894799552757368, 0.10894678482208554, 0.10894575297081723, 0.1089445697813629, 0.10894454226532907, 0.1089445216283037, 0.10894178378293846, 0.10894110964010983, 0.10893946555708899, 0.10893916288071695, 178.83784413940708, 101.29297218866132, 68.84419648656885, 64.56273192716037, 18.388808825414852, 17.591764350311887, 16.580944944456046, 11.048669596721865, 9.240136024284187, 9.240094442133538, 15.081743179229427, 9.130772779543458, 6.463182614179905, 18.553668921532086, 9.88803626768094, 5.523650881409472, 13.777531061066503, 5.170535805232974, 0.09094398485500746, 0.09095240558247233, 0.09094398485500746, 0.09094398485500746, 0.09094488249600625, 0.09094512186693926, 0.09095486768349759, 0.0909459767631286, 0.0909446944188446, 0.09096467334278917, 0.0909463529174519, 0.09094843886415385, 0.159220499837559, 0.09856526469738888, 0.09238471575599415, 0.09107438217076547, 0.0910081875588259, 0.09098814879214809, 0.09097780454825723, 0.09096936672286857, 0.09096673364260545, 0.09096523757427412, 0.09096447671666562, 358.5314870525295, 53.08926074875714, 16.83941534075827, 16.48834271001456, 30.297124499056, 88.37153975440147, 7.0882204197638545, 8.474029622249791, 0.09236181331998734, 1.0813721540588337, 0.09299575697567272, 0.09238027103655617, 0.09236718252564352, 0.09254151016935233, 0.09236860630861304, 0.0923804683076905, 0.09237213145801351, 0.09236181331998734, 0.09236727687270777, 0.0923673883737837, 0.09236465230892056, 0.09236200201411585, 0.09236364879923722, 0.09236283398368238, 0.09236344295109705, 0.09236181331998734, 0.09236571585764479, 0.09237149675958131, 0.09236595601380833, 0.09236868350166562, 0.09384528367315986, 0.09244112489299475, 0.09240836073068391, 0.09239584687916258, 0.09238186635964252, 0.0923790273707093, 0.09237466167473646, 0.09237176264676236, 0.0923707334060615, 0.09237047609588629, 0.09236918096800437, 0.09236877784872986, 0.09236876069471818, 231.40838838907464, 102.00487267333995, 80.30116792102608, 67.39677790568592, 9.646642589225808, 7.949180957374323, 4.07014828993025, 24.735764451284485, 3.5265096817783546, 6.652787454738721, 0.09982981714585674, 0.10203150036553596, 0.09983411934683675, 0.09982980917881788, 0.09983448583062395, 0.09982980917881788, 0.09982980917881788, 0.09983021549779933, 0.09983203994969642, 0.09983160972959841, 0.09983546577640273, 0.09982980917881788, 0.09984471550850976, 0.09983360945635024, 0.09983082895979092, 0.09983244626867786, 0.09983377676416613, 0.09983387236863235, 0.09983900314165296, 0.09983533033674225, 0.10696158367747013, 0.10411506426719715, 0.10061766965088068, 0.1001013895992009, 0.09988917158530328, 0.0998727913534238, 0.09985801249635355, 0.09985568612100881, 0.09985286578925524, 0.09984626111404703, 0.0998452572671517, 0.09984485094817025, 0.09984473144258747, 0.09984203858345553, 0.0998412339125315, 0.09984118611029838, 0.09984097100024937, 0.0998406363846176, 112.22602747521846, 268.137100258254, 31.090082993216278, 11.610762773306107, 11.202501474135094, 8.752710248875001, 8.752647475618778, 13.43005090143589, 13.436625070083364, 19.576867732173493, 2.93874169356136, 14.893414666782093, 19.496749906070217, 5.077801044704344, 0.4897075044617224, 5.311412781691191, 10.321293695139154, 7.067735609992218, 0.0821275594466737, 0.08213105054408015, 0.08212870652153582, 0.08213120847467711, 0.08213012789690845, 0.0821275594466737, 0.08212864833657904, 0.08212949617452062, 0.0821275594466737, 0.0821275594466737, 0.08212829091470171, 0.08213968685409281, 0.08271329909438452, 0.08255365619726902, 0.08239064688479732, 0.08223590814832424, 0.08219607638934384, 0.0821885040328265, 0.0821843396523488, 0.08217448145824388, 0.0821515482731381, 0.08214299508449227, 0.0821427457203918, 0.08214174826398996, 98.4883143818344, 86.67497350906811, 78.01973437342113, 55.1566705359886, 53.83171522109968, 29.190941619706823, 14.586998975900135, 12.190669815903181, 9.31511280473153, 11.916697630640954, 16.887738264850643, 29.67743761960765, 9.823233896916351, 0.09639923396857117, 0.09640393961051992, 0.09639922647551075, 0.0964056255491162, 0.0964003429415145, 0.09640648725106542, 0.0964066970567574, 0.09640310038775199, 0.09640115219204072, 0.09640065765005248, 0.0964024335053739, 0.096399668566076, 0.0963993238852963, 0.09640498863897982, 0.0964184461755084, 0.09640414192315147, 0.09639922647551075, 0.09663222318951746, 0.09655242209595992, 0.09653300008333071, 0.09650415180068316, 0.09644220667012539, 0.0964252573674374, 0.09642445560997161, 0.09642273969913362, 0.09641439992287731, 0.09641037614942752, 0.09640960436420344, 0.0964093271209676, 0.09640928965566546, 0.09640799335621143, 0.09640759622400875, 0.09640694432775151], "Total": [359.0, 273.0, 266.0, 232.0, 194.0, 179.0, 142.0, 148.0, 137.0, 113.0, 102.0, 99.0, 102.0, 86.0, 87.0, 81.0, 78.0, 101.0, 146.0, 69.0, 67.0, 70.0, 68.0, 69.0, 65.0, 56.0, 50.0, 54.0, 52.0, 53.0, 266.3690754211317, 52.74962959841931, 37.422296641430606, 23.982822037944974, 21.98372054737819, 17.62418028482464, 14.431225391867818, 24.066599773850886, 11.015722489858058, 10.071734632822615, 50.6474684590805, 73.18854339480187, 31.980462927970873, 49.812260238691906, 22.2682443038169, 73.19204379575889, 101.35244055068937, 146.41405512375792, 60.84542393683253, 1.3999506504587549, 273.81804070002113, 6.037618469565757, 7.1167462521065135, 8.138364540249192, 8.688208507742043, 9.03127451724113, 9.609099044420699, 9.662780791319536, 9.662838548819565, 10.103199019349935, 179.75356906474596, 50.5208742086828, 113.13685274826157, 65.4641240010246, 148.2612053052263, 10.791903840166812, 194.0258256714987, 53.98921842364773, 359.44026422852136, 137.77817511278718, 70.06437876634237, 36.14268401598457, 28.86673274702288, 21.04111587875591, 19.262411683431683, 17.742879257515945, 14.314905761328196, 13.765192870267741, 8.688208507742043, 8.138364540249192, 60.84542393683253, 101.35244055068937, 24.74480874331879, 31.01216100274354, 6.037618469565757, 11.141909871745058, 1.3999506504587549, 7.1167462521065135, 9.03127451724113, 9.609099044420699, 9.662780791319536, 9.662838548819565, 10.071734632822615, 10.103199019349935, 10.14142796592857, 10.14145443081549, 10.210985952815347, 10.539079499750205, 10.791903840166812, 266.3690754211317, 52.3930847658335, 19.291023825919616, 232.31272677719662, 86.27245893540767, 73.19204379575889, 273.81804070002113, 69.20155587178552, 78.9169084461585, 102.19435447070097, 69.74635512852575, 142.61167773912726, 86.27245893540767, 50.5208742086828, 21.20097304279174, 17.322873394676268, 11.837329499904842, 10.103199019349935, 9.03127451724113, 42.95277301980902, 31.980462927970873, 31.01216100274354, 48.576265972169445, 73.19204379575889, 1.3999506504587549, 6.037618469565757, 7.1167462521065135, 8.138364540249192, 8.688208507742043, 9.609099044420699, 9.662838548819565, 9.662780791319536, 10.071734632822615, 10.14145443081549, 10.14142796592857, 10.210985952815347, 10.539079499750205, 10.791903840166812, 11.015722489858058, 11.141909871745058, 11.281130002433793, 73.18854339480187, 179.75356906474596, 359.44026422852136, 266.3690754211317, 273.81804070002113, 28.99309873320128, 70.06437876634237, 232.31272677719662, 87.57119257411692, 12.983859846379248, 20.397644274794427, 69.74635512852575, 17.62418028482464, 37.99546824286174, 194.0258256714987, 69.20155587178552, 67.58433694079659, 37.99546824286174, 28.301227898860258, 25.48143577357964, 12.96745846602314, 9.609099044420699, 15.13622275427662, 7.1167462521065135, 20.397644274794427, 42.95277301980902, 6.037618469565757, 1.3999506504587549, 8.138364540249192, 8.688208507742043, 9.03127451724113, 9.662780791319536, 9.662838548819565, 10.071734632822615, 10.103199019349935, 10.14145443081549, 10.14142796592857, 10.210985952815347, 10.539079499750205, 10.791903840166812, 11.015722489858058, 11.141909871745058, 11.281130002433793, 11.837329499904842, 266.3690754211317, 146.41405512375792, 50.5208742086828, 78.9169084461585, 273.81804070002113, 113.13685274826157, 359.44026422852136, 17.38826237442442, 49.812260238691906, 18.493100277989186, 12.983859846379248, 17.62418028482464, 22.2682443038169, 50.6474684590805, 11.949997730488631, 101.35244055068937, 148.2612053052263, 52.3930847658335, 45.90826850498451, 35.205145591559265, 28.99309873320128, 26.15784728948634, 24.94714832310106, 14.116428223316968, 12.491890852551853, 11.281130002433793, 22.573205772091164, 73.19204379575889, 24.74480874331879, 1.3999506504587549, 6.037618469565757, 73.18854339480187, 7.1167462521065135, 8.138364540249192, 8.688208507742043, 9.03127451724113, 9.609099044420699, 9.662780791319536, 9.662838548819565, 10.071734632822615, 10.103199019349935, 10.14142796592857, 10.14145443081549, 10.210985952815347, 10.539079499750205, 10.791903840166812, 266.3690754211317, 102.91645191063245, 232.31272677719662, 87.57119257411692, 42.95277301980902, 49.812260238691906, 21.04111587875591, 113.13685274826157, 12.520919758593523, 70.06437876634237, 25.48143577357964, 142.61167773912726, 48.576265972169445, 146.41405512375792, 12.112658706477047, 179.75356906474596, 102.19435447070097, 69.74635512852575, 65.4641240010246, 19.291023825919616, 18.493100277989186, 17.482273538841024, 11.949997730488631, 10.14145443081549, 10.14142796592857, 22.2682443038169, 15.13622275427662, 10.791903840166812, 44.09092373333937, 30.28410862558643, 19.77291248151912, 49.812260238691906, 22.573205772091164, 1.3999506504587549, 6.037618469565757, 7.1167462521065135, 8.138364540249192, 8.688208507742043, 9.03127451724113, 9.609099044420699, 9.662838548819565, 9.662780791319536, 10.071734632822615, 10.103199019349935, 10.210985952815347, 52.3930847658335, 67.58433694079659, 232.31272677719662, 266.3690754211317, 87.57119257411692, 86.27245893540767, 273.81804070002113, 31.01216100274354, 52.74962959841931, 23.982822037944974, 142.61167773912726, 359.44026422852136, 53.98921842364773, 17.73932905211045, 17.38826237442442, 48.576265972169445, 146.41405512375792, 12.983859846379248, 73.18854339480187, 1.3999506504587549, 24.066599773850886, 6.037618469565757, 7.1167462521065135, 8.138364540249192, 8.688208507742043, 9.03127451724113, 9.609099044420699, 9.662780791319536, 9.662838548819565, 10.071734632822615, 10.103199019349935, 10.14142796592857, 10.14145443081549, 10.210985952815347, 10.539079499750205, 10.791903840166812, 11.015722489858058, 11.141909871745058, 11.281130002433793, 11.837329499904842, 11.949997730488631, 137.77817511278718, 87.57119257411692, 67.58433694079659, 52.74962959841931, 17.62418028482464, 22.573205772091164, 179.75356906474596, 113.13685274826157, 49.812260238691906, 56.052516266310874, 32.000229391277834, 232.31272677719662, 50.6474684590805, 232.31272677719662, 102.91645191063245, 81.19360191382285, 68.2892048972822, 10.539079499750205, 11.141909871745058, 7.1167462521065135, 44.09092373333937, 10.791903840166812, 31.980462927970873, 1.3999506504587549, 6.037618469565757, 8.138364540249192, 8.688208507742043, 9.03127451724113, 9.609099044420699, 9.662780791319536, 9.662838548819565, 10.071734632822615, 10.103199019349935, 10.14145443081549, 10.14142796592857, 10.210985952815347, 11.015722489858058, 11.281130002433793, 11.837329499904842, 11.949997730488631, 12.112658706477047, 12.491890852551853, 12.520919758593523, 359.44026422852136, 266.3690754211317, 69.74635512852575, 52.3930847658335, 86.27245893540767, 31.01216100274354, 22.2682443038169, 53.98921842364773, 102.19435447070097, 23.982822037944974, 24.74480874331879, 18.493100277989186, 22.573205772091164, 36.14268401598457, 25.48143577357964, 48.576265972169445, 42.95277301980902, 146.41405512375792, 113.13685274826157, 273.81804070002113, 32.000229391277834, 12.520919758593523, 12.112658706477047, 9.662838548819565, 9.662780791319536, 19.77291248151912, 20.397644274794427, 30.28410862558643, 6.037618469565757, 31.01216100274354, 49.812260238691906, 12.983859846379248, 1.3999506504587549, 18.041853564651948, 48.576265972169445, 146.41405512375792, 7.1167462521065135, 8.138364540249192, 8.688208507742043, 9.03127451724113, 9.609099044420699, 10.071734632822615, 10.103199019349935, 10.14145443081549, 10.14142796592857, 10.210985952815347, 10.539079499750205, 10.791903840166812, 17.322873394676268, 99.38460512949486, 359.44026422852136, 52.3930847658335, 101.35244055068937, 52.74962959841931, 232.31272677719662, 78.9169084461585, 23.982822037944974, 11.015722489858058, 142.61167773912726, 22.2682443038169, 99.38460512949486, 87.57119257411692, 78.9169084461585, 56.052516266310874, 54.72757575037544, 30.08681671614171, 15.482883548344748, 13.08654845031878, 10.210985952815347, 18.041853564651948, 73.18854339480187, 146.41405512375792, 50.6474684590805, 1.3999506504587549, 6.037618469565757, 7.1167462521065135, 8.138364540249192, 8.688208507742043, 9.03127451724113, 9.609099044420699, 9.662838548819565, 9.662780791319536, 10.071734632822615, 10.103199019349935, 10.14145443081549, 10.14142796592857, 10.539079499750205, 10.791903840166812, 11.015722489858058, 11.141909871745058, 273.81804070002113, 266.3690754211317, 52.3930847658335, 359.44026422852136, 37.99546824286174, 48.576265972169445, 14.431225391867818, 12.983859846379248, 137.77817511278718, 86.27245893540767, 24.94714832310106, 73.19204379575889, 44.09092373333937, 17.62418028482464, 20.397644274794427, 102.19435447070097], "Category": ["Default", "Default", "Default", "Default", "Default", "Default", "Default", "Default", "Default", "Default", "Default", "Default", "Default", "Default", "Default", "Default", "Default", "Default", "Default", "Default", "Default", "Default", "Default", "Default", "Default", "Default", "Default", "Default", "Default", "Default", "Topic1", "Topic1", "Topic1", "Topic1", "Topic1", "Topic1", "Topic1", "Topic1", "Topic1", "Topic1", "Topic1", "Topic1", "Topic1", "Topic1", "Topic1", "Topic1", "Topic1", "Topic1", "Topic1", "Topic1", "Topic1", "Topic1", "Topic1", "Topic1", "Topic1", "Topic1", "Topic1", "Topic1", "Topic1", "Topic1", "Topic1", "Topic1", "Topic1", "Topic1", "Topic1", "Topic1", "Topic1", "Topic1", "Topic1", "Topic2", "Topic2", "Topic2", "Topic2", "Topic2", "Topic2", "Topic2", "Topic2", "Topic2", "Topic2", "Topic2", "Topic2", "Topic2", "Topic2", "Topic2", "Topic2", "Topic2", "Topic2", "Topic2", "Topic2", "Topic2", "Topic2", "Topic2", "Topic2", "Topic2", "Topic2", "Topic2", "Topic2", "Topic2", "Topic2", "Topic2", "Topic2", "Topic2", "Topic2", "Topic2", "Topic2", "Topic2", "Topic2", "Topic2", "Topic2", "Topic2", "Topic3", "Topic3", "Topic3", "Topic3", "Topic3", "Topic3", "Topic3", "Topic3", "Topic3", "Topic3", "Topic3", "Topic3", "Topic3", "Topic3", "Topic3", "Topic3", "Topic3", "Topic3", "Topic3", "Topic3", "Topic3", "Topic3", "Topic3", "Topic3", "Topic3", "Topic3", "Topic3", "Topic3", "Topic3", "Topic3", "Topic3", "Topic3", "Topic3", "Topic3", "Topic3", "Topic3", "Topic3", "Topic3", "Topic3", "Topic3", "Topic3", "Topic3", "Topic3", "Topic3", "Topic4", "Topic4", "Topic4", "Topic4", "Topic4", "Topic4", "Topic4", "Topic4", "Topic4", "Topic4", "Topic4", "Topic4", "Topic4", "Topic4", "Topic4", "Topic4", "Topic4", "Topic4", "Topic4", "Topic4", "Topic4", "Topic4", "Topic4", "Topic4", "Topic4", "Topic4", "Topic4", "Topic4", "Topic4", "Topic4", "Topic4", "Topic4", "Topic4", "Topic4", "Topic4", "Topic4", "Topic4", "Topic4", "Topic4", "Topic4", "Topic4", "Topic4", "Topic4", "Topic4", "Topic4", "Topic4", "Topic5", "Topic5", "Topic5", "Topic5", "Topic5", "Topic5", "Topic5", "Topic5", "Topic5", "Topic5", "Topic5", "Topic5", "Topic5", "Topic5", "Topic5", "Topic5", "Topic5", "Topic5", "Topic5", "Topic5", "Topic5", "Topic5", "Topic5", "Topic5", "Topic5", "Topic5", "Topic5", "Topic5", "Topic5", "Topic5", "Topic5", "Topic5", "Topic5", "Topic5", "Topic5", "Topic5", "Topic5", "Topic5", "Topic5", "Topic5", "Topic5", "Topic5", "Topic5", "Topic5", "Topic5", "Topic6", "Topic6", "Topic6", "Topic6", "Topic6", "Topic6", "Topic6", "Topic6", "Topic6", "Topic6", "Topic6", "Topic6", "Topic6", "Topic6", "Topic6", "Topic6", "Topic6", "Topic6", "Topic6", "Topic6", "Topic6", "Topic6", "Topic6", "Topic6", "Topic6", "Topic6", "Topic6", "Topic6", "Topic6", "Topic6", "Topic6", "Topic6", "Topic6", "Topic6", "Topic6", "Topic6", "Topic6", "Topic6", "Topic6", "Topic6", "Topic6", "Topic7", "Topic7", "Topic7", "Topic7", "Topic7", "Topic7", "Topic7", "Topic7", "Topic7", "Topic7", "Topic7", "Topic7", "Topic7", "Topic7", "Topic7", "Topic7", "Topic7", "Topic7", "Topic7", "Topic7", "Topic7", "Topic7", "Topic7", "Topic7", "Topic7", "Topic7", "Topic7", "Topic7", "Topic7", "Topic7", "Topic7", "Topic7", "Topic7", "Topic7", "Topic7", "Topic7", "Topic7", "Topic7", "Topic7", "Topic7", "Topic7", "Topic7", "Topic7", "Topic8", "Topic8", "Topic8", "Topic8", "Topic8", "Topic8", "Topic8", "Topic8", "Topic8", "Topic8", "Topic8", "Topic8", "Topic8", "Topic8", "Topic8", "Topic8", "Topic8", "Topic8", "Topic8", "Topic8", "Topic8", "Topic8", "Topic8", "Topic8", "Topic8", "Topic8", "Topic8", "Topic8", "Topic8", "Topic8", "Topic8", "Topic8", "Topic8", "Topic8", "Topic8", "Topic8", "Topic8", "Topic8", "Topic8", "Topic8", "Topic8", "Topic8", "Topic8", "Topic8", "Topic8", "Topic8", "Topic8", "Topic8", "Topic9", "Topic9", "Topic9", "Topic9", "Topic9", "Topic9", "Topic9", "Topic9", "Topic9", "Topic9", "Topic9", "Topic9", "Topic9", "Topic9", "Topic9", "Topic9", "Topic9", "Topic9", "Topic9", "Topic9", "Topic9", "Topic9", "Topic9", "Topic9", "Topic9", "Topic9", "Topic9", "Topic9", "Topic9", "Topic9", "Topic9", "Topic9", "Topic9", "Topic9", "Topic9", "Topic9", "Topic9", "Topic9", "Topic9", "Topic9", "Topic9", "Topic9", "Topic10", "Topic10", "Topic10", "Topic10", "Topic10", "Topic10", "Topic10", "Topic10", "Topic10", "Topic10", "Topic10", "Topic10", "Topic10", "Topic10", "Topic10", "Topic10", "Topic10", "Topic10", "Topic10", "Topic10", "Topic10", "Topic10", "Topic10", "Topic10", "Topic10", "Topic10", "Topic10", "Topic10", "Topic10", "Topic10", "Topic10", "Topic10", "Topic10", "Topic10", "Topic10", "Topic10", "Topic10", "Topic10", "Topic10", "Topic10", "Topic10", "Topic10", "Topic10", "Topic10", "Topic10", "Topic10"], "logprob": [30.0, 29.0, 28.0, 27.0, 26.0, 25.0, 24.0, 23.0, 22.0, 21.0, 20.0, 19.0, 18.0, 17.0, 16.0, 15.0, 14.0, 13.0, 12.0, 11.0, 10.0, 9.0, 8.0, 7.0, 6.0, 5.0, 4.0, 3.0, 2.0, 1.0, -0.9457, -2.5769, -2.9273, -3.3861, -3.4767, -3.7083, -3.9201, -3.4261, -4.2109, -4.3089, -2.8358, -2.6977, -3.6667, -3.7644, -4.6721, -3.5802, -3.2702, -3.4994, -4.3783, -8.8798, -4.9434, -8.8796, -8.8797, -8.8797, -8.8797, -8.8797, -8.8797, -8.8797, -8.8797, -8.8798, -8.771, -8.8583, -8.8743, -8.8788, -8.8793, -8.8795, -8.8796, -8.8796, -8.8796, -1.3557, -2.0382, -2.7121, -2.9432, -3.2712, -3.3636, -3.4499, -3.6772, -3.719, -4.22, -4.293, -2.3334, -1.9622, -3.613, -3.9471, -5.7107, -5.3949, -8.477, -8.477, -8.477, -8.477, -8.477, -8.477, -8.477, -8.477, -8.4767, -8.477, -8.477, -8.477, -8.4753, -8.3252, -8.4534, -8.4689, -8.4646, -8.4751, -8.4754, -8.476, -8.476, -8.4766, -8.4768, -8.4768, -1.0637, -1.5704, -2.1134, -3.0061, -3.218, -3.624, -3.7963, -3.9199, -2.6356, -4.0433, -4.3745, -4.0369, -3.7685, -8.2437, -8.245, -8.245, -8.245, -8.245, -8.245, -8.245, -8.245, -8.245, -8.2449, -8.245, -8.2449, -8.2449, -8.2448, -8.2449, -8.245, -8.2449, -8.1762, -8.2132, -8.2331, -8.2332, -8.238, -8.2426, -8.2439, -8.2445, -8.2447, -8.2447, -8.2448, -8.2449, -8.2449, -8.2449, -0.9018, -1.9411, -1.9652, -2.5513, -2.8541, -2.9626, -3.6734, -3.9991, -4.5142, -5.3488, -4.3473, -3.6198, -6.6012, -8.3879, -8.3878, -8.3879, -8.3879, -8.3878, -8.3878, -8.3878, -8.3879, -8.3878, -8.3879, -8.3878, -8.3878, -8.3878, -8.3878, -8.3879, -8.3858, -8.3878, -6.7769, -7.952, -8.1801, -8.3766, -8.3855, -8.3864, -8.3871, -8.3876, -8.3876, -8.3877, -8.3877, -8.3877, -8.3877, -8.3877, -8.3877, -8.3877, -1.1655, -2.2181, -2.3513, -2.6227, -2.8224, -2.9287, -2.9778, -3.5758, -3.7068, -3.8169, -3.3485, -2.3739, -3.8918, -8.3756, -8.3756, -5.921, -8.3756, -8.3756, -8.3756, -8.3756, -8.3756, -8.3756, -8.3756, -8.3756, -8.3756, -8.3756, -8.3756, -8.3756, -8.3756, -8.3712, -7.951, -8.2137, -8.2964, -8.374, -8.3753, -8.3754, -8.3754, -8.3754, -8.3754, -8.3754, -8.3754, -8.3754, -8.3755, -8.3755, -8.3755, -1.1894, -1.7578, -2.144, -2.2082, -3.4641, -3.5084, -3.5676, -3.9735, -4.1523, -4.1523, -3.6624, -4.1642, -4.5097, -3.4552, -4.0845, -4.6668, -3.7528, -4.7329, -8.7734, -8.7733, -8.7734, -8.7734, -8.7733, -8.7733, -8.7732, -8.7733, -8.7733, -8.7731, -8.7733, -8.7733, -8.2133, -8.6929, -8.7576, -8.7719, -8.7726, -8.7729, -8.773, -8.7731, -8.7731, -8.7731, -8.7731, -0.4971, -2.4071, -3.5554, -3.5765, -2.9681, -1.8976, -4.4207, -4.2421, -8.7612, -6.3009, -8.7543, -8.761, -8.7611, -8.7592, -8.7611, -8.761, -8.761, -8.7612, -8.7611, -8.7611, -8.7611, -8.7612, -8.7611, -8.7611, -8.7611, -8.7612, -8.7611, -8.7611, -8.7611, -8.7611, -8.7452, -8.7603, -8.7607, -8.7608, -8.7609, -8.761, -8.761, -8.7611, -8.7611, -8.7611, -8.7611, -8.7611, -8.7611, -0.8612, -1.6803, -1.9196, -2.0947, -4.0387, -4.2323, -4.9017, -3.0971, -5.045, -4.4103, -8.6096, -8.5878, -8.6096, -8.6096, -8.6096, -8.6096, -8.6096, -8.6096, -8.6096, -8.6096, -8.6096, -8.6096, -8.6095, -8.6096, -8.6096, -8.6096, -8.6096, -8.6096, -8.6095, -8.6096, -8.5406, -8.5676, -8.6018, -8.6069, -8.609, -8.6092, -8.6094, -8.6094, -8.6094, -8.6095, -8.6095, -8.6095, -8.6095, -8.6095, -8.6095, -8.6095, -8.6095, -8.6095, -1.6272, -0.7563, -2.9109, -3.8958, -3.9316, -4.1784, -4.1784, -3.7503, -3.7498, -3.3734, -5.2698, -3.6468, -3.3775, -4.7229, -7.0617, -4.6779, -4.0135, -4.3922, -8.8472, -8.8472, -8.8472, -8.8472, -8.8472, -8.8472, -8.8472, -8.8472, -8.8472, -8.8472, -8.8472, -8.8471, -8.8401, -8.8421, -8.844, -8.8459, -8.8464, -8.8465, -8.8465, -8.8467, -8.8469, -8.847, -8.847, -8.8471, -1.6541, -1.7818, -1.887, -2.2338, -2.2581, -2.8702, -3.5639, -3.7433, -4.0124, -3.7661, -3.4174, -2.8536, -3.9593, -8.5833, -8.5832, -8.5833, -8.5832, -8.5833, -8.5832, -8.5832, -8.5832, -8.5832, -8.5833, -8.5832, -8.5833, -8.5833, -8.5832, -8.5831, -8.5832, -8.5833, -8.5809, -8.5817, -8.5819, -8.5822, -8.5828, -8.583, -8.583, -8.583, -8.5831, -8.5832, -8.5832, -8.5832, -8.5832, -8.5832, -8.5832, -8.5832], "loglift": [30.0, 29.0, 28.0, 27.0, 26.0, 25.0, 24.0, 23.0, 22.0, 21.0, 20.0, 19.0, 18.0, 17.0, 16.0, 15.0, 14.0, 13.0, 12.0, 11.0, 10.0, 9.0, 8.0, 7.0, 6.0, 5.0, 4.0, 3.0, 2.0, 1.0, 2.0604, 2.0485, 2.0414, 2.0276, 2.024, 2.0134, 2.0015, 1.9841, 1.9807, 1.9724, 1.8303, 1.6002, 1.4591, 0.9183, 0.8157, 0.7177, 0.7022, 0.1051, 0.1044, -0.6252, -1.9648, -2.0866, -2.2511, -2.3853, -2.4507, -2.4894, -2.5514, -2.557, -2.557, -2.6016, -5.3716, -4.1897, -5.0119, -4.4693, -5.2873, -2.6673, -5.5566, -4.2774, -6.1732, 2.3097, 2.3034, 2.2914, 2.2851, 2.2733, 2.2692, 2.2651, 2.2525, 2.2499, 2.2091, 2.2014, 2.1493, 2.0102, 1.7694, 1.2095, 1.0823, 0.7854, -0.2225, -1.8484, -2.0867, -2.1487, -2.1542, -2.1543, -2.1957, -2.1989, -2.2024, -2.2026, -2.2095, -2.2411, -2.2631, -5.3191, -3.8212, -2.8376, -5.3217, -4.3416, -4.1775, -5.4975, -4.122, -4.254, -4.5127, -4.1307, 2.5672, 2.5631, 2.5552, 2.5308, 2.521, 2.4958, 2.4818, 2.4704, 2.1953, 1.0826, 0.7821, 0.671, 0.5295, 0.0108, -1.4521, -1.6164, -1.7506, -1.816, -1.9168, -1.9222, -1.9223, -1.9638, -1.9706, -1.9706, -1.9774, -2.009, -2.0326, -2.0533, -2.0648, -2.077, -3.8782, -4.8138, -5.5266, -5.2271, -5.2595, -3.0186, -3.9023, -5.1016, -4.1262, -2.2174, -2.6692, -3.8987, -2.5231, -3.2913, 2.4212, 2.4129, 2.4125, 2.4022, 2.394, 2.3904, 2.3551, 2.3292, 1.3597, 1.2797, 1.2283, 1.2111, 0.1918, -0.1333, -1.8934, -1.9588, -1.9975, -2.0651, -2.0651, -2.1066, -2.1097, -2.1135, -2.1135, -2.1203, -2.1519, -2.1756, -2.1961, -2.2076, -2.2179, -2.268, -3.7708, -4.3475, -3.5115, -4.154, -5.407, -4.524, -5.6807, -2.6524, -3.7049, -2.7141, -2.3604, -2.666, -2.8999, -3.7216, -2.2775, -4.4153, 2.4265, 2.4141, 2.4131, 2.4071, 2.4015, 2.3981, 2.3964, 2.3679, 2.3592, 2.3509, 2.1258, 1.924, 1.4906, -0.121, -1.5826, -1.623, -1.747, -1.8811, -1.9466, -1.9853, -2.0473, -2.0529, -2.0529, -2.0943, -2.0974, -2.1012, -2.1012, -2.108, -2.1397, -2.159, -4.9449, -4.2566, -5.1535, -4.2555, -3.5444, -3.6927, -2.8309, -4.513, -2.3118, -4.0338, -3.0224, -4.7446, -3.6676, -4.7709, -2.2787, 2.2101, 2.2063, 2.2021, 2.2013, 2.1673, 2.1652, 2.1622, 2.1367, 2.1221, 2.1221, 1.8255, 1.7097, 1.7025, 1.3496, 1.0959, 0.9399, 0.9299, 0.7414, -0.5188, -1.9803, -2.1448, -2.2789, -2.3443, -2.383, -2.4449, -2.4506, -2.4506, -2.4919, -2.4952, -2.5058, -3.5811, -4.3153, -5.6147, -5.7658, -4.6541, -4.6394, -5.7944, -3.6165, -4.1477, -3.3595, -5.1423, 2.2094, 2.1951, 2.1598, 2.1587, 1.7398, 1.707, 1.6066, 0.0559, -0.5066, -0.8907, -1.9613, -2.1324, -2.2667, -2.3302, -2.3708, -2.4327, -2.4383, -2.4384, -2.4798, -2.4829, -2.4868, -2.4868, -2.4936, -2.5252, -2.5489, -2.5695, -2.5808, -2.5932, -2.6414, -2.6508, -5.0799, -4.6418, -4.383, -4.1353, -3.0392, -3.2867, -5.3616, -4.8986, -4.0783, -4.1964, -3.6358, -5.6182, -4.095, 2.2818, 2.2768, 2.2746, 2.2725, 2.1972, 1.948, 1.7269, 1.7077, 1.1672, 0.7156, -0.3551, -1.7948, -2.1152, -2.1806, -2.2193, -2.2813, -2.2869, -2.2869, -2.3283, -2.3315, -2.3352, -2.3353, -2.3419, -2.4179, -2.4418, -2.4899, -2.4993, -2.5128, -2.5436, -2.546, -5.8342, -5.5615, -4.2556, -3.9747, -4.4755, -3.4526, -3.1215, -4.0072, -4.6453, -3.1958, -3.2271, -2.9359, -3.1352, -3.606, -3.2565, -3.9017, -3.7786, -5.005, 2.2352, 2.2223, 2.2144, 2.1678, 2.1651, 2.1443, 2.1443, 1.8564, 1.8258, 1.807, 1.5232, 1.5098, 1.3052, 1.3044, 1.1929, 1.0204, 0.6943, -0.7876, -2.2187, -2.3528, -2.4182, -2.4569, -2.5189, -2.566, -2.5691, -2.5728, -2.5729, -2.5797, -2.6113, -2.6349, -3.1012, -4.8501, -6.1376, -4.2137, -4.874, -4.221, -5.7036, -4.6241, -3.4333, -2.6554, -5.2162, -3.3592, 2.3379, 2.3367, 2.3356, 2.3309, 2.3305, 2.3168, 2.2874, 2.2761, 2.2552, 1.9322, 0.8805, 0.7509, 0.7069, -0.3287, -1.7902, -1.9547, -2.0888, -2.1542, -2.1929, -2.2549, -2.2605, -2.2605, -2.302, -2.3051, -2.3089, -2.3089, -2.3473, -2.3709, -2.3915, -2.403, -5.6023, -5.5756, -3.9497, -5.8757, -3.6293, -3.8751, -2.6614, -2.5557, -4.9178, -4.4497, -3.2089, -4.2852, -3.7784, -2.8614, -3.0076, -4.6191] }, "token.table": { "Topic": [9, 10, 6, 6, 2, 3, 9, 5, 3, 4, 8, 10, 5, 4, 3, 4, 1, 10, 1, 3, 5, 7, 2, 6, 3, 7, 9, 4, 1, 2, 5, 2, 1, 4, 9, 1, 3, 8, 5, 10, 1, 1, 3, 6, 8, 2, 3, 2, 8, 7, 2, 8, 2, 9, 1, 7, 6, 8, 2, 2, 2, 4, 6, 3, 5, 10, 9, 5, 4, 5, 1, 4, 1, 9, 1, 6, 4, 9, 6, 9, 8, 1, 5, 7, 10, 6, 6, 4, 9, 3, 3, 6, 8, 1, 2, 2, 2, 1, 5, 7, 1, 7, 9, 9, 3, 6, 9, 6, 8, 1, 3, 5, 6, 10, 5, 6, 4, 4, 4, 1, 8, 10, 2, 10, 6, 10, 1, 6, 9, 1, 7, 9, 10, 1, 2, 5, 10, 10, 6, 9, 7, 2, 4, 9, 5], "Freq": [0.277133387768767, 0.6651201306450408, 0.9892990088564428, 0.8874489894555931, 0.32245414949043166, 0.16122707474521583, 0.48368122423564747, 0.980215579141568, 0.9236342975823619, 0.2810273022461651, 0.5620546044923302, 0.8814036217059472, 0.8864360217320958, 0.9540222105022991, 0.6751601342857594, 0.3026579912315473, 0.7897729386478045, 0.19744323466195113, 0.2595910568233231, 0.12296418481104779, 0.6011582368540114, 0.9816774820504821, 0.9683840852693949, 0.9205022668694862, 0.14410329530084662, 0.6175855512893426, 0.20586185042978086, 0.973800342806704, 0.14791580726503717, 0.8381895745018773, 0.9606231868051129, 0.9444110316884461, 0.9857889125643875, 0.2941516147241699, 0.6373284985690347, 0.5315745440673842, 0.21888363579245232, 0.21888363579245232, 0.9657470647639317, 0.9169721141946857, 0.9077933843383208, 0.9645838685977304, 0.8908069595345933, 0.5559723371207557, 0.3706482247471704, 0.9943519711147999, 0.9957108860310432, 0.9699746848866272, 0.9943493118288969, 0.9201609485450167, 0.17950243926060028, 0.7180097570424011, 0.9848085605683886, 0.9314033298320462, 0.9141299646285591, 0.04155136202857087, 0.9724135686488637, 0.9852993107130571, 0.93446242847579, 0.9581308508763448, 0.8601236729297044, 0.3303334049168436, 0.5946001288503184, 0.9896899209120716, 0.9620338039909755, 0.9883813435648703, 0.9899515257792157, 0.9657679134311489, 0.9253933630434954, 0.9734109038996315, 0.9948602313576861, 0.003754189552293155, 0.018260301575518556, 0.9787521644477947, 0.26944198734929303, 0.6736049683732326, 0.9366122628557608, 0.9687430555872683, 0.3034454335246736, 0.6574651059701262, 0.9811213954061792, 0.6285136698494138, 0.013663340648900301, 0.10930672519120241, 0.2322767910313051, 0.8874466735908112, 0.9733359863637314, 0.991353959108773, 0.9081408356794474, 0.9433529281713762, 0.8858107440680296, 0.9330764485301717, 0.9910951855255538, 0.2565305764590506, 0.7399920474780306, 0.9505199303708475, 0.9207882146096307, 0.9552523174929318, 0.9914933559144494, 0.9583226034119655, 0.9590197502032922, 0.5391308965763412, 0.38509349755452943, 0.9314088971246312, 0.9292636485356285, 0.33020618581295147, 0.6604123716259029, 0.4309276919420298, 0.567010120976355, 0.9887153734716785, 0.9852506935456614, 0.9557361400319928, 0.9883129114432305, 0.968811781937327, 0.7531052599103266, 0.22150154703244898, 0.9826368662286767, 0.9947129426304543, 0.9811064110414526, 0.8935898659075115, 0.9488494702252713, 0.9812226758686395, 0.9081442949571892, 0.9867055000993635, 0.9958077657725142, 0.9860682132037375, 0.3212060629919364, 0.28105530511794435, 0.3814321998029244, 0.14342885307185532, 0.6010351938249175, 0.04780961769061844, 0.20489836153122187, 0.9701185879813907, 0.5657752357362659, 0.404125168383047, 0.9638773112358335, 0.9934773918531087, 0.9929102541566532, 0.9583960468849744, 0.9987751393699136, 0.3312564399492182, 0.1656282199746091, 0.4968846599238273, 0.92091283958977], "Term": ["", "", "\uac00\uaca9", "\uac00\ub8e8", "\uac00\ubc29", "\uac00\ubc29", "\uac00\ubc29", "\uac00\uc871", "\uac01\uc131", "\uac10\uae30", "\uac10\uae30", "\uac31\ub144\uae30", "\uac71\uc815", "\uac74\uac15", "\uace0\ubbfc", "\uace0\ubbfc", "\uacf5\ubcf5", "\uacf5\ubcf5", "\uacf5\ubd80", "\uacf5\ubd80", "\uacf5\ubd80", "\uad11\uace0", "\uae30\ub300", "\uae30\ub825", "\uae30\ubd84", "\uae30\ubd84", "\uae30\ubd84", "\uae30\uc6b4", "\ub0a8\ud3b8", "\ub0a8\ud3b8", "\ub0c4\uc0c8", "\ub118\uae40", "\ub3c4\uc6c0", "\ub4f1\uad50", "\ub4f1\uad50", "\ub538\uc544\uc774", "\ub538\uc544\uc774", "\ub538\uc544\uc774", "\ub808\ubaac", "\ub9cc\uc871", "\uba38\ub9ac", "\ubc18\uc2e0\ubc18\uc758", "\ubcc4\ub85c", "\ubcf4\ucda9", "\ubcf4\ucda9", "\ubcf4\ud2c0", "\ubcf5\uc6a9", "\ubd80\ub2f4", "\ube44\ud0c0\ubbfc", "\ube48\ub3c4", "\uc0ac\uc774\uc988", "\uc0ac\uc774\uc988", "\uc0c1\ud07c", "\uc0c1\ud488", "\uc0c8\ubcbd", "\uc0c8\ubcbd", "\uc0dd\uc218", "\uc120\ubb3c", "\uc131\ubd84", "\uc138\ucc99", "\uc218\ub2a5", "\uc218\ubd84", "\uc218\ubd84", "\uc218\ud5d8\uc0dd", "\uc2a4\ud2b8\ub808\uc2a4", "\uc2dc\uc791", "\uc2dc\ud5d8", "\uc2e0\ub791", "\uc544\uae30", "\uc544\ub974\uae30\ub2cc", "\uc544\ub974\ud0c0\ubbfc", "\uc544\ub974\ud0c0\ubbfc", "\uc544\uce68", "\uc544\uce68", "\uc54c\uc57d", "\uc54c\uc57d", "\uc57c\uadfc", "\uc57d\uc0ac", "\uc5bc\uc74c", "\uc5bc\uc74c", "\uc5c4\ub9c8", "\uc5d0\ub108\uc9c0", "\uc5d0\ub108\uc9c0", "\uc5d0\ub108\uc9c0", "\uc5d0\ub108\uc9c0", "\uc5ec\ub984", "\uc601\uc591", "\uc601\uc591\uc81c", "\uc624\ub80c\uc9c0", "\uc624\uc804", "\uc624\ud6c4", "\uc6a9\ub7c9", "\uc6b4\ub3d9", "\uc74c\ub8cc", "\uc74c\ub8cc", "\uc74c\ub8cc\uc218", "\uc785\uad6c", "\uc785\ub9db", "\uc790\ubabd", "\uc7a0", "\uc800\ub141", "\uc815\uc2e0", "\uc815\uc2e0", "\uc878\ub9bc", "\uc878\uc74c", "\uc8fc\uc2a4", "\uc8fc\uc2a4", "\uc9c0\uc778", "\uc9c0\uc778", "\uc9d1\uc911", "\uccb4\ub825", "\ucd5c\uace0", "\ucd94\ucc9c", "\ucd9c\uadfc", "\ucda9\uc804", "\ucda9\uc804", "\uce74\ud398\uc778", "\ucee4\ud53c", "\ucee8\ub514\uc158", "\ud0c4\uc0b0\uc218", "\ud1f4\uadfc", "\ud3c9\uc774", "\ud3ec\uc7a5", "\ud53c\uace4", "\ud53c\ub85c", "\ud558\ub8e8", "\ud559\uad50", "\ud559\uad50", "\ud559\uad50", "\ud559\uc0dd", "\ud559\uc0dd", "\ud559\uc0dd", "\ud559\uc0dd", "\ud559\uc6d0", "\ud568\ub7c9", "\ud568\ub7c9", "\ud65c\uae30", "\ud65c\ub825", "\ud68c\ubcf5", "\ud68c\uc0ac", "\ud6a8\uacfc", "\ud6a8\ub2a5", "\ud6a8\ub2a5", "\ud6a8\ub2a5", "\ud734\ub300\uc131"] }, "R": 30, "lambda.step": 0.01, "plot.opts": { "xlab": "PC1", "ylab": "PC2" }, "topic.order": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] };
    function LDAvis_load_lib(url, callback) {
      var s = document.createElement('script');
      s.src = url;
      s.async = true;
      s.onreadystatechange = s.onload = callback;
      s.onerror = function () { console.warn("failed to load library " + url); };
      document.getElementsByTagName("head")[0].appendChild(s);
    }

    if (typeof (LDAvis) !== "undefined") {
      // already loaded: just create the visualization
      !function (LDAvis) {
        new LDAvis("#" + "ldavis_el9244820594679021601244233400", ldavis_el9244820594679021601244233400_data);
      }(LDAvis);
    } else if (typeof define === "function" && define.amd) {
      // require.js is available: use it to load d3/LDAvis
      require.config({ paths: { d3: "https://d3js.org/d3.v5" } });
      require(["d3"], function (d3) {
        window.d3 = d3;
        LDAvis_load_lib("https://cdn.jsdelivr.net/gh/bmabey/pyLDAvis@3.4.0/pyLDAvis/js/ldavis.v3.0.0.js", function () {
          new LDAvis("#" + "ldavis_el9244820594679021601244233400", ldavis_el9244820594679021601244233400_data);
        });
      });
    } else {
      // require.js not available: dynamically load d3 & LDAvis
      LDAvis_load_lib("https://d3js.org/d3.v5.js", function () {
        LDAvis_load_lib("https://cdn.jsdelivr.net/gh/bmabey/pyLDAvis@3.4.0/pyLDAvis/js/ldavis.v3.0.0.js", function () {
          new LDAvis("#" + "ldavis_el9244820594679021601244233400", ldavis_el9244820594679021601244233400_data);
        })
      });
    }
    
 //---------------------------------------------------------------------------------------------------------------------------   
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

    
    
    
    //---------------------------------------------------------------------------------------------------------------

//GPT를 이용한 LDA 토픽 결과 분석
ldaData()
function ldaData(){
var ldaData = ldavis_el9244820594679021601244233400_data;
//console.log(Object.keys(ldavis_el9244820594679021601244233400_data));
for (var outerKey in ldaData) {
    if (ldaData.hasOwnProperty(outerKey)) {
        var innerData = ldaData[outerKey];
        // 만약 값이 객체인 경우, 내부 객체의 모든 키를 반복하여 값을 수정합니다.
        if (typeof innerData === 'object') {
            for (var innerKey in innerData) {
                if (innerData.hasOwnProperty(innerKey)) {
                    var value = innerData[innerKey];
                    // 만약 값이 배열이고, 배열의 각 항목이 숫자인 경우에만 소수점을 반올림합니다.
                    if (Array.isArray(value) && value.every(item => typeof item === 'number')) {
                        ldaData[outerKey][innerKey] = value.map(function(item) {
                            return Number.isInteger(item) ? item : parseFloat(item.toFixed(3));
                        });
                    }
                }
            }
        }
    }
}

chatLda(ldaData)
chatStrong(ldaData)
chatWeak(ldaData)
    }    
function chatLda(ldaData){
	
    //console.log(JSON.stringify(ldaData));
    var requestData = { prompt: JSON.stringify(ldaData) };
    $.ajax({
        url: 'chatLda',
        type: 'POST', 
        contentType: 'application/json;charset:UTF-8',
        data: JSON.stringify(requestData),
        success: function(response) {
        	var formattedResponse = response.replace(/\n/g, "<br>");
        	$("#apiResult").html(formattedResponse)
           console.log("서버로부터의 응답:", response);
            
        },
        error: function(xhr, status, error) {
            console.error("에러 발생:", error);
        }
    });
    
    
}

function chatStrong(ldaData){

    //console.log(JSON.stringify(ldaData));
    var requestData = { prompt: JSON.stringify(ldaData) };
    $.ajax({
        url: 'chatStrong',
        type: 'POST', 
        contentType: 'application/json;charset:UTF-8',
        data: JSON.stringify(requestData),
        success: function(response) {
        	var formattedResponse = response.replace(/\n/g, "<br>");
        	$("#strongResult").html(formattedResponse)
           console.log("서버로부터의 응답:", response);
            
        },
        error: function(xhr, status, error) {
            console.error("에러 발생:", error);
        }
    });
    
    
}

function chatWeak(ldaData){

    //console.log(JSON.stringify(ldaData));
    var requestData = { prompt: JSON.stringify(ldaData) };
    $.ajax({
        url: 'chatWeak',
        type: 'POST', 
        contentType: 'application/json;charset:UTF-8',
        data: JSON.stringify(requestData),
        success: function(response) {
        	var formattedResponse = response.replace(/\n/g, "<br>");
        	$("#weakResult").html(formattedResponse)
           console.log("서버로부터의 응답:", response);
            
        },
        error: function(xhr, status, error) {
            console.error("에러 발생:", error);
        }
    });
    
    
}
  </script>

</body>

</html>
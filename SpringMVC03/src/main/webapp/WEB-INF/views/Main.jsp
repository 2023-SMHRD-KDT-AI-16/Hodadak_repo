<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>


<head>
	<title>La Form</title>
	<link href="${pageContext.request.contextPath}/resources/img/프리지아.png" rel="icon" type="image/png">
	<meta charset="utf-8">
	<meta name="robots" content="index, follow, max-image-preview:large, max-snippet:-1, max-video-preview:-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css">
	<style>
		/* 입력 필드 가운데 정렬을 위한 스타일 */
		.input-wrapper {
			display: flex;
			justify-content: center;
			align-items: center;
			position: fixed;
			top: 70%;
			left: 50%;
			transform: translate(-50%, -50%);
			z-index: 1000;
			/* 배너 위에 표시되도록 높은 z-index 설정 */
			pointer-events: none;
			/* 클릭 이벤트가 내부 요소로만 전달되도록 */
			color: white;
		}

		.input-wrapper input {
			pointer-events: all;
			/* 클릭 이벤트를 활성화 */
			padding: 10px;
			font-size: 16px;
			border: 1px solid #ccc;
			border-radius: 4px;
			width: 300px;
			/* 입력 칸의 너비 조절 */
			height: 20px;
		}
	</style>
</head>

<body>

	<!-- Header -->
	<header id="header" class="alt">
		<div class="logo">
			<a href="Main.html">La Form
				<span> by Hodadak</span>
			</a>
		</div>
		<a href="#menu">Menu</a>
	</header>

	<!-- Nav -->
	<nav id="menu">
		<ul class="links">
			<li><a href="Non_members.html">비회원</a></li>
			<li><a href="https://www.instagram.com/">관리자 요청하기</a></li>
		</ul>
	</nav>

	<!-- Input Wrapper -->
	<div class="input-wrapper">
		<input type="password" id="input-code" placeholder="코드를 입력하세요." onkeypress="handleKeyPress(event)">
	</div>

	<!-- Banner -->
	<section class="banner full">
		<article>
			<img src="${pageContext.request.contextPath}/resources/img/slide01.jpg" alt="" width="1440" height="961">
			<div class="inner">
				<header>
					<p>We recommend good products<a href="https://templated.co"> La Form</a></p>
					<h2>La Form</h2>
				</header>
			</div>
		</article>
		<article>
			<img src="${pageContext.request.contextPath}/resources/img/slide02.jpg" alt="" width="1440" height="961">
			<div class="inner">
				<header>
					<p>Mind, thoughts and expressions</p>
					<h2>Grand Alpha</h2>
				</header>
			</div>
		</article>
		<article>
			<img src="${pageContext.request.contextPath}/resources/img/slide03.jpg" alt="" width="1440" height="962">
			<div class="inner">
				<header>
					<p>A brand born to improve your daily condition with delicious and scientific products</p>
					<h2>Check' O</h2>
				</header>
			</div>
		</article>
		<article>
			<img src="${pageContext.request.contextPath}/resources/img/slide05.jpg" alt="" width="1440" height="962">
			<div class="inner">
				<header>
					<p>Project Management</p>
					<h2>HoDaDak</h2>
				</header>
			</div>
		</article>
	</section>
	<!-- Scripts -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.scrollex.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/skel.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/util.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
	<script>
		function checkCode() {
			var inputCode = document.getElementById("input-code").value;
			if (inputCode === "123") { // 입력값이 "123"인 경우
				window.location.href = "/Dashboard.html"; // 기업회원 대시보드 페이지로 이동
			} else if (inputCode === "456") { // 입력값이 "456"인 경우
				window.location.href = "/Manager.html"; // 관리자 전용 페이지로 이동
			} else {
				alert("올바르지 않은 코드입니다. 다시 시도해주세요."); // 올바르지 않은 코드일 경우 경고 메시지 출력
				document.getElementById("input-code").value = ""; // 입력칸 비우기
			}
		}

		function handleKeyPress(event) {
			if (event.keyCode === 13) { // 만약 누른 키가 엔터 키라면
				checkCode(); // 코드 확인 함수 호출
			}
		}
	</script>

</body>

</html>
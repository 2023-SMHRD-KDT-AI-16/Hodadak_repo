<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>

<head>
	<title>La Form</title>
	<link href="${pageContext.request.contextPath}/resources/img/프리지아.png" rel="icon" type="image/png">
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main1.css" />
	<noscript>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/noscript.css" />
	</noscript>
</head>

<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<header id="header">
			<div class="logo">
				<span class="icon fa-gem"></span>
			</div>
			<div class="content">
				<div class="inner">
					<h1>manager</h1>
					<p>Su su su Supernova Nova Can't stop hyperstellar 
						<br/>
						Bring the light of a dying star Supernova
						<br/>
						for free under the Creative Commons
					</p>
				</div>
			</div>
			<nav>
				<ul>
					<li><a href="#contact">회원추가</a></li>
					<li><a href="#elements">기업목록</a></li>
					<li><a href="${pageContext.request.contextPath}/Main.jsp">로그아웃</a></li>
				</ul>
			</nav>
		</header>

		<!-- Main -->
		<div id="main">

			<!-- 회원추가 -->
			<article id="contact">
				<h2 class="major">회원추가</h2>
				<form method="post" action="#">
					<div class="fields">
						<div class="field half">
							<label for="name">기업명</label>
							<input type="text" name="name" id="name" />
						</div>
						<div class="field half">
							<label for="phone">전화번호</label>
							<input type="text" name="phone" id="phone" />
						</div>
						<div class="field half">
							<label for="email">이메일</label>
							<input type="text" name="email" id="email" />
						</div>
						<div class="field half">
							<label for="addres">주소</label>
							<input type="text" name="addres" id="addres" />
						</div>
					</div>
					<ul class="actions">
						<li><input type="submit" value="회원 등록" class="primary" /></li>
						<li><input type="reset" value="취소" /></li>
					</ul>
				</form>
				<ul class="icons">
					<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
					<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
					<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
					<li><a href="#" class="icon brands fa-github"><span class="label">GitHub</span></a></li>
				</ul>
			</article>


			<!-- 기업목록 -->
			<article id="elements">
				<h2 class="major">기업목록</h2>

				<section>
					<h3 class="major">목록</h3>



					<section>
						<div class="table-wrapper">
							<table>
								<thead>
									<tr>
										<th>기업명</th>
										<th>전화번호</th>
										<th>이메일</th>
										<th>주소</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>강원랜드</td>
										<td>010-1234-1234</td>
										<td>홍길동</td>
										<td>서울특별시 강남구 역삼동 736-1 한솔빌딩 2층</td>
									</tr>
									<tr>
										<td>국민은행</td>
										<td>010-1234-1234</td>
										<td>홍길동</td>
										<td>서울특별시 강남구 역삼동 736-1 한솔빌딩 2층</td>
									</tr>
								</tbody>
							</table>
						</div>

						<div class="table-wrapper"></div>
					</section>
			</article>

		</div>

		<!-- Footer -->
		<footer id="footer">
		</footer>

	</div>

	<!-- BG -->
	<div id="bg"></div>

	<!-- Scripts -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery.min2.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/browser.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/breakpoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/util2.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/main1.js"></script>

</body>

</html>
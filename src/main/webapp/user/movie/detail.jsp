<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../../fragments/siteProperty.jsp"%>

<!DOCTYPE html>
<html lang="en" data-bs-theme="auto">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">

<title>극장판 체인소 맨: 레제편</title>
<link rel="stylesheet" href="${commonURL}/resources/css/movie_detail.css" />
<link rel="stylesheet" href="${commonURL}/resources/css/megabox.min.css" />

<script src="${commonURL}/resources/js/movie_detail.js"></script>
<link rel="shortcut icon" href="${commonURL}/resources/images/favicon.ico">

<!-- <script src="http://localhost/jsp_prj/common/js/color-modes.js"></script> -->
<!-- bootstrap CDN ----------- -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
	crossorigin="anonymous"></script>
<!-- -------------bootstrap CDN  -->
<meta name="theme-color" content="#712cf9">
<style type="text/css">
</style>
<!-- jQuery CDN 시작 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<!-- 자바스크립트 -->
<script type="text/javascript">
	$(function() {

	});//ready
</script>


</head>
<body>
	<!--<header  data-bs-theme="dark" -->
		<header id="header">
			<c:import url = "${commonURL}/fragments/header.jsp"/>
		</header>
	<!-- 히어로 섹션 -->
	<div class="hero-section">
		<div class="bg-img" style="background-image: url(${commonURL}/resources/images/movie_bg.jpg)"></div>

		<div class="bg-mask"></div>
		<div class="hero-container">
			<!-- 왼쪽 정보 -->
			<div class="hero-info">
				<h1 class="title">극장판 체인소 맨: 레제편</h1>

				<!-- 통계 -->
				<div class="hero-stats">
					<div class="stat-item">
						<span class="stat-icon">⭐</span>
						<div class="stat-content">
							<div class="stat-value rating-value">9.5</div>
							<div class="stat-label">(42.6k)</div>
						</div>
					</div>
					<div class="stat-item">
						<span class="stat-icon">♥</span>
						<div class="stat-content">
							<div class="stat-value heart-value">8</div>
							<div class="stat-label">관심</div>
						</div>
					</div>
					<div class="stat-item">
						<span class="stat-icon">👁</span>
						<div class="stat-content">
							<div class="stat-value">3,302,939</div>
							<div class="stat-label">조회수</div>
						</div>
					</div>
				</div>
			</div>

			<!-- 오른쪽 포스터 -->
			<div class="hero-poster">
				<div class="poster">
					<div class="poster-content">
						<img class="poster-img" alt="체인소맨 레제편"
							src="${commonURL}/resources/images/movie_poster.jpg" />
					</div>
				</div>
				<div class="purchase-box">
					<div class="purchase-item">
						<input type="button" value="예매" class="reservation" />
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 콘텐츠 섹션 -->
	<div class="content-section">
		<!-- 탭 -->
		<div class="tabs">
			<button class="tab active" data-tab="info">주요정보</button>
			<button class="tab" data-tab="storage">실관람평</button>
			<button class="tab" data-tab="episodes">예고편/스틸컷</button>
		</div>

		<!-- 탭 콘텐츠 -->
		<div class="tab-contents">
			<!-- 작품정보 탭 -->
			<div class="tab-content active" id="info">
				<div class="content-box">
					<h2 class="content-title">
						인기 애니메이션 <span class="highlight-text">'체인소 맨'</span> 첫 극장판 국내 상륙!
					</h2>
					
					<p class="content-text">
						압도적 배틀 액션이 스크린에서 폭발한다!<br /> <br /> 데블 헌터로 일하는 소년 '덴지'는 조직의 배신으로
						죽음에 내몰린 순간<br />
					</p>
					<details class="content-summary">
						<summary
							style="cursor: pointer; color: #4fb3ff; margin-bottom: 10px">
							더보기 </summary>
						<p class="content-text">
							전기톱 악마견 '포치타'와의 계약으로 하나로 합쳐져<br /> 누구도 막을 수 없는 존재 '체인소 맨'으로 다시
							태어난다.<br /> <br /> 악마와 사냥꾼, 그리고 정체불명의 적들이 얽힌 잔혹한 전쟁 속에서<br />
							'레제'라는 이름의 미스터리한 소녀가 '덴지' 앞에 나타나는데…<br /> '덴지'는 사랑이라는 감정에 이끌려
							지금껏 가장 위험한 배틀에 몸을 던진다!<br />
						</p>
					</details>

					<div class="divider"></div>

					<div class="info-list">
						<p>
							<strong>상영시간</strong>2D Dolby v.zA(자막) · 2D Dolby(더빙) · 2D
							MX4D(자막) · 2D(자막)
						</p>
						<p>
							<strong>결제</strong>애니메이션 대여 · 애니메이션 / 100 코인
						</p>
						<p>
							<strong>등급</strong>15세이상관람가
						</p>
						<p>
							<strong>개봉일</strong>20XX.XX.XX
						</p>
					</div>
				</div>
			</div>

			<!-- 실관람평 탭 -->
			<div class="tab-content" id="storage">
				<div class="content-box">
					<div class="comment-area">
						<h2 class="content-title" style="margin-bottom: 0">극장판 체인소 맨:
							레제편에 대한 15,098개의 이야기가 있어요!</h2>
						<!-- <button class="comment-button">본 영화 등록</button> -->
					</div>

					<!-- 공지 메시지 -->
					<div class="comment-asdf">
						<div class="comment-avatar">M</div>
						<div style="flex: 1">
							<div class="comment-input">
								최근 극장판 체인소 맨: 레제편에 관한 평점 게시물이 늘고 있습니다. 영화의 어떤 점이 좋았는지 이야기해주세요.<br />
							</div>
							<div style="text-align: right">
								<a href="#" class="comment-button"> ✏️ 관람평쓰기 </a>
							</div>
						</div>
					</div>

					<!-- 댓글 목록 -->
					<!--댓글 1 -->
					<div class="comment-item">
						<div class="comment-header">
							<div class="comment-user">
								<div class="user-avatar">👤</div>
								<span class="username">ha***o1110</span>
							</div>
							<div class="comment-actions">
								<button class="comment-like">👍 0</button>
								<button class="comment-menu">⋮</button>
							</div>
						</div>
						<div class="comment-body">
							<div class="comment-rating">
								<span class="rating-label">관람평</span> <span class="rating-score">10</span>
								<span class="rating-stars">⭐ +4</span>
							</div>
							<p class="comment-text">주요등장 캐릭터들이는 너무 매력있!!</p>
							<span class="comment-time">10 분전</span>
						</div>
					</div>

					<!-- 댓글 2 -->
					<div class="comment-item">
						<div class="comment-header">
							<div class="comment-user">
								<div class="user-avatar">👤</div>
								<span class="username">Jun***na1</span>
							</div>
							<div class="comment-actions">
								<button class="comment-like">👍 0</button>
								<button class="comment-menu">⋮</button>
							</div>
						</div>
						<div class="comment-body">
							<div class="comment-rating">
								<span class="rating-label">관람평</span> <span class="rating-score">10</span>
								<span class="rating-stars">⭐ +4</span>
							</div>
							<p class="comment-text">시원하는 방문한 음악적 순미</p>
							<span class="comment-time">21 분전</span>
						</div>
					</div>

					<!-- 댓글 3 -->
					<div class="comment-item">
						<div class="comment-header">
							<div class="comment-user">
								<div class="user-avatar">👤</div>
								<span class="username">ha***304</span>
							</div>
							<div class="comment-actions">
								<button class="comment-like">👍 0</button>
								<button class="comment-menu">⋮</button>
							</div>
						</div>
						<div class="comment-body">
							<div class="comment-rating">
								<span class="rating-label">관람평</span> <span class="rating-score">10</span>
								<span class="rating-stars">⭐ +3</span>
							</div>
							<p class="comment-text">생각보다 많이 재미있었어요</p>
							<span class="comment-time">38 분전</span>
						</div>
					</div>

					<!-- 댓글 4 -->
					<div class="comment-item">
						<div class="comment-header">
							<div class="comment-user">
								<div class="user-avatar">👤</div>
								<span class="username">ta***emon11</span>
							</div>
							<div class="comment-actions">
								<button class="comment-like">👍 0</button>
								<button class="comment-menu">⋮</button>
							</div>
						</div>
						<div class="comment-body">
							<div class="comment-rating">
								<span class="rating-label">관람평</span> <span class="rating-score">10</span>
								<span class="rating-stars">⭐ +4</span>
							</div>
							<p class="comment-text">진짜 좋게 최고의 작품수준다</p>
							<span class="comment-time">38 분전</span>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- 메인 예고편 탭 -->
		<div class="tab-content" id="episodes">
			<div class="content-box">
				<div class="video-section">
					<div class="video-header">
						<h2 class="content-title">메인 예고편</h2>
						<!-- <div class="video-nav">
                <button class="nav-btn" onclick="scrollVideos('left')">
                  ◀
                </button>
                <button class="nav-btn" onclick="scrollVideos('right')">
                  ▶
                </button>
              </div> -->
					</div>

					<div class="comments-section">
						<!-- 메인 비디오 플레이어 -->
						<iframe id="mainVideo" class="main-video"
							src="https://www.youtube-nocookie.com/embed/rNSn1O_A3P4?si=moYJbAj302wIE3ZW&amp;controls=0"
							title="체인소 맨 예고편" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen> </iframe>
						<!-- <iframe
                width="560"
                height="315"
                src="https://www.youtube-nocookie.com/embed/rNSn1O_A3P4?si=moYJbAj302wIE3ZW&amp;controls=0"
                title="YouTube video player"
                frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                referrerpolicy="strict-origin-when-cross-origin"
                allowfullscreen
              ></iframe> -->

						<!-- 비디오 썸네일 캐러셀 -->
						<div class="video-carousel" id="videoCarousel">
							<div class="video-thumbnail active"
								onclick="changeVideo('https://www.youtube.com/embed/fRqegBxEvEc?si=QZQLnOrvvQRxUtrt', this)">
								<img src="https://img.youtube.com/vi/v4yLeNt-kCU/mqdefault.jpg"
									style="width: 100%; height: 100%; object-fit: cover"
									alt="예고편 1" />
								<div class="play-icon">▶</div>
							</div>
							<div class="video-thumbnail"
								onclick="changeVideo('https://www.youtube.com/embed/NBsQkBc_Jsc?si=J5j1X_VuV1Fk6-tq', this)">
								<img src="https://img.youtube.com/vi/NBsQkBc_Jsc/mqdefault.jpg"
									style="width: 100%; height: 100%; object-fit: cover"
									alt="예고편 2" />
								<div class="play-icon">▶</div>
							</div>
							<div class="video-thumbnail"
								onclick="changeVideo('https://www.youtube.com/embed/dOihGQCIw_w?si=UEp4AmOharG71eti', this)">
								<img src="https://img.youtube.com/vi/dOihGQCIw_w/mqdefault.jpg"
									style="width: 100%; height: 100%; object-fit: cover"
									alt="예고편 3" />
								<div class="play-icon">▶</div>
							</div>
						</div>

						<!--
              <div style="text-align: center; margin-top: 20px">
                <a href="#" class="more-videos">자막보기 ▼</a>
              </div>
              -->
					</div>
				</div>
				<!-- ===========이미지 앨범=================================================== -->
				<div class="album-section">
					<h2 class="content-title">이미지</h2>
					<div class="image-grid">
						<div class="image-item">
							<img
								src="https://img.megabox.co.kr/SharedImg/2025/09/25/zMn6h4i7pFqQjJFdJ4jYJlLjKKaRNe0u_380.jpg"
								alt="체인소 맨 1" />
						</div>
						<div class="image-item">
							<img
								src="https://img.megabox.co.kr/SharedImg/2025/10/24/fIJpT1BgMnoaQaAYbXF8Z9bKxjmWMZWQ_420.jpg"
								alt="체인소 맨 2" />
						</div>
						<div class="image-item">
							<img
								src="https://img.megabox.co.kr/SharedImg/2025/08/28/TDE0lyTqa65EoXPD6ld2Aef7yJYCXBID_380.jpg"
								alt="체인소 맨 3" />
						</div>
						<div class="image-item">
							<img
								src="https://img.megabox.co.kr/SharedImg/2025/08/28/5pe2UwG0I8mgagEPzymw62f6HQByrZJG_380.jpg"
								alt="체인소 맨 4" />
						</div>
						<div class="image-item">
							<img
								src="https://img.megabox.co.kr/SharedImg/2025/09/25/L3c7bklLtc8nsuKlyE9s3S3e7vP2dfU4_380.jpg"
								alt="체인소 맨 5" />
						</div>
						<div class="image-item">
							<img
								src="https://img.megabox.co.kr/SharedImg/2025/10/24/mvkc9OBNaDtdsLCgtboBlNU3SySYoch9_380.jpg"
								alt="체인소 맨 6" />
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>

	<!-- ============================================================== -->
	
</body>
	<footer id="footer">
		<c:import url = "${commonURL}/fragments/footer.jsp"/>
	</footer>
</html>

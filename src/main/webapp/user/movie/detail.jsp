<%@page import="movie.detail.DetailDTO"%>
<%@page import="movie.detail.DetailDAO"%>
<%@page import="movie.detail.DetailService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="../../fragments/siteProperty.jsp"%>

<%
request.setCharacterEncoding("UTF-8");
%>

<%
pageContext.setAttribute("youtubeURL", "https://www.youtube.com/embed/");
pageContext.setAttribute("thumImg1", "https://img.youtube.com/vi/");
pageContext.setAttribute("thumImg2", "/mqdefault.jpg");

String titleName = request.getParameter("name");

DetailService ds = DetailService.getInstance();
DetailDTO dtDTO = ds.searchMovieDetail(titleName);
pageContext.setAttribute("detail", dtDTO);
%>

<!DOCTYPE html>
<html lang="ko" data-bs-theme="auto">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>${detail.name}</title>
<link rel="stylesheet" href="${commonURL}/resources/css/megabox.min.css" />
<link rel="stylesheet"
	href="${commonURL}/resources/css/movie_detail.css" />
<script src="${commonURL}/resources/js/movie_detail.js"></script>
<link rel="shortcut icon"
	href="${commonURL}/resources/images/favicon.ico">


<!-- bootstrap CDN -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>

<!-- jQuery CDN -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<script type="text/javascript">
$(function() {
    let text = $("#").html().trim();

    // 문장(. ! ?) 단위로 split
    let sentences = text.split(/(?<=[.!?])/);

    // 앞뒤 공백제거 + 빈 문장 제거
    sentences = sentences.map(s => $.trim(s)).filter(s => s.length > 0);

    // 첫 문장 → <h1>
    let result = `<h1>${sentences[0]}</h1>`;

    // 나머지 문장 → <p>
    for (let i = 1; i < sentences.length; i++) {
        result += `<p>${sentences[i]}</p>`;
    }

    // 결과 출력
    $("#textArea").html(result);
});//ready
</script>
</head>
<body>
	<header id="header">
		<c:import url="${commonURL}/fragments/header.jsp" />
	</header>

	<!-- 히어로 섹션 -->
	<div class="hero-section">
		<div class="bg-img"
			style="background-image: url('${commonURL}/${detail.bgImg}')"></div>
		<div class="bg-mask"></div>
		<div class="hero-container">
			<!-- 왼쪽 정보 -->
			<div class="hero-info">
				<h1 class="title">${detail.name}</h1>
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
						<img class="poster-img" alt="${detail.name}"
							src="${commonURL}/${detail.posterImg}" />
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
					<c:set var="text" value="${detail.intro}" />

					<c:set var="dotPos" value="${fn:indexOf(text, '.')}" />
					<c:set var="exPos" value="${fn:indexOf(text, '!')}" />
					
					<c:choose>
					    <c:when test="${dotPos != -1 and exPos != -1}">
					        <c:set var="endPos" value="${dotPos < exPos ? dotPos : exPos}" />
					    </c:when>
					    <c:when test="${dotPos != -1}">
					        <c:set var="endPos" value="${dotPos}" />
					    </c:when>
					    <c:when test="${exPos != -1}">
					        <c:set var="endPos" value="${exPos}" />
					    </c:when>
					    <c:otherwise>
					        <c:set var="endPos" value="${fn:length(text)}" />
					    </c:otherwise>
					</c:choose>
					
					<c:set var="firstLine" value="${fn:substring(text, 0, endPos + 1)}" />
					<c:set var="rest" value="${fn:substring(text, endPos + 1, fn:length(text))}" />


					<h2 class="content-title">${firstLine}</h2>
					<p class="content-text" id="movie_intro">${rest}</p>

					<div class="divider"></div>

					<div class="info-list">
						<p>
							<strong>장르</strong>${detail.genre}</p>
						<p>
							<strong>상영시간</strong>${detail.runningTime}분</p>
						<p>
							<strong>등급</strong>${detail.grade}</p>
					</div>
				</div>
			</div>

			<!-- 실관람평 탭 -->
			<div class="tab-content" id="storage">
				<div class="content-box">
					<div class="comment-area">
						<h2 class="content-title" style="margin-bottom: 0">
							${detail.name}에 대한 15,098개의 이야기가 있어요!</h2>
					</div>

					<!-- 공지 메시지 -->
					<div class="comment-asdf">
						<div class="comment-avatar">M</div>
						<div style="flex: 1">
							<div class="comment-input">
								최근 ${detail.name}에 관한 평점 게시물이 늘고 있습니다. 영화의 어떤 점이 좋았는지 이야기해주세요.<br />
							</div>
							<div style="text-align: right">
								<a href="#" class="comment-button"> ✏️ 관람평쓰기 </a>
							</div>
						</div>
					</div>

					<!-- 댓글 목록 (기존 코드 유지) -->

					<%-- 	<c:forEach var="comment" items="${detail.videoLink}" varStatus="status"> --%>
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
					<!-- 나머지 댓글들... -->
				</div>
			</div>
		</div>

		<!-- 예고편/스틸컷 탭 -->

		<%-- 
		<div class="tab-content" id="episodes">
			<div class="content-box">
				<div class="video-section">
					<div class="video-header">
						<h2 class="content-title">메인 예고편</h2>
					</div>

					<div class="comments-section">
						<!-- 메인 비디오 플레이어 -->
						<iframe id="mainVideo" class="main-video"
							src="${youtubeURL}${detail.videoLink[0]}?controls=0"
							title="${detail.name} 예고편" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen> </iframe>

						<!-- 비디오 썸네일 캐러셀 -->

						<div class="video-carousel" id="videoCarousel">
							<c:forEach var="videoUrl" items="${detail.videoLink}"
								varStatus="status">
								<div class="video-thumbnail ${status.first ? 'active' : ''}"
									onclick="changeVideo('${youtubeURL}${videoUrl}', this)">
									<img src="${thumImg1}${videoUrl}${thumImg2}"
										style="width: 100%; height: 100%; object-fit: cover"
										alt="예고편 ${status.count}" />
									<div class="play-icon">▶</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>

				<!-- 이미지 앨범 -->
				<div class="album-section">
					<h2 class="content-title">이미지</h2>
					<div class="image-grid">
						<c:forEach var="cutImgUrl" items="${detail.cutImg}"
							varStatus="status">
							<div class="image-item">
								<img src="${cutImgUrl}" alt="${detail.name} ${status.count}" />
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div> --%>
	</div>


	<footer id="footer">
		<c:import url="${commonURL}/fragments/footer.jsp" />
	</footer>
</body>

</html>
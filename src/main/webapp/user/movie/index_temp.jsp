<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" data-bs-theme="auto">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">

<title>JSP템플릿</title>
<link rel="shortcut icon" href="http://192.168.10.82/jsp_prj/common/images/favicon.ico">

<style type="text/css">
#wrap{  margin: 0px auto; width: 1200px; height: 1000px; }	
#header{ height: 150px;	 }	
#container{ height: 700px;	 }	
#footer{ height: 150px;}	
</style>
<!-- jQuery CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<script type="text/javascript">

$(function(){
	
});//ready
</script>


</head>
<body>

	<main>
		<!-- Wrap the rest of the page in another container to center all the content. -->
		<div class="container marketing">
			<hr class="featurette-divider">
			<div class="row featurette">
				<div class="col-md-7" style="text-align: center;">
				<!-- 여기서부터 작성 시작-->
				<h1> 클릭하면 영화 상세 페이지로 이동합니다. </h1>
					<h3><a href="http://localhost/sist_myLab_prj2_movie/user/movie/detail_process_test.jsp">DB 테스트</a></h3>
					<h3><a href="http://localhost/sist_myLab_prj2_movie/user/movie/detail.jsp?name=mc001">MC001</a></h3>
					<h3><a href="http://localhost/sist_myLab_prj2_movie/user/movie/detail.jsp?name=mc002">MC002</a></h3>
					<h3><a href="http://localhost/sist_myLab_prj2_movie/user/movie/detail.jsp?name=mc003">MC003</a></h3>
					<h3><a href="http://localhost/sist_myLab_prj2_movie/user/movie/detail.jsp?name=mc004">MC004</a></h3>
				</div>
				
			</div>
			<hr class="featurette-divider">
			<!-- /END THE FEATURETTES -->
		</div>
		<!-- /.container -->
		<!-- FOOTER -->

	</main>
	
</body>
</html>
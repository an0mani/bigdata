<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">

   .poptrox-popup{
   width:60% !important;
   height:60% !important;
   
   }
   .caption{
   
   font-size:40px !important;
   height:100% !important;
   opacity:0.5 !important;
   }
   .pic{
   height:60% !important;
   }

#top {
	background-image: url('images/center.png') !important;
	font-family: 'a�����߳���' !important;
}

#tag {
	margin-top: 40%;
}

#back {
	background-image: url('images/test.png') !important;
}

tr {
	color: black;
	align-self: center;
}

#two {
	width: 110%;
}
</style>
<title></title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- <link rel="stylesheet" href="assets/css/main.css" /> -->
<link rel="stylesheet" href="assets/css/main2.css" />
</head>
<body id="top">
	<!-- <header id="header1">
	<div class="inner1" style="margin-top: 40px">

		<a href="#" class="image avatar"><img src="back_image/baby.jpg"
			alt="" /></a>
		<p align="center">??��</p>
		<input type="button" name="write" value="�۾���"
			onclick="location.href='writing.jsp'"
			style="width: 50px; height: 50px; min-width: 6em !important; font-size: 15px; text-align: center; color: black !important; margin-right: 0px; font-family: 'a�����߳���'">
		<input type="button" name="menu" value="��  ��"
			onclick="location.href='Notice.jsp'"
			style="width: 50px; height: 50px; min-width: 6em !important; font-size: 15px; text-align: center; color: black !important; margin-right: 0px; font-family: 'a�����߳���'"> -->
		<!-- <h1><strong>I am Strata</strong>, a super simple<br />					
					<!-- <h1><strong>I am Strata</strong>, a super simple<br />
					responsive site template freebie<br />
					crafted by <a href="http://html5up.net">HTML5 UP</a>.</h1> -->
	<!-- </div>
	</header> -->
	<!-- Header -->
	<!-- Menu -->
	<div id="wrapper">

		<!-- Header -->
		<header id="header"
			style="padding-top: 0px;padding-bottom: 0px;height: 0px;width: 1800px;">
		<div class="inner">

			<!-- Logo -->

			<!-- Nav -->
			<!-- <nav>
			<ul>
				<li><a href="#menu">Menu</a></li>
			</ul>
			</nav>

		</div>
		</header>
		<nav id="menu">
		<h2>Menu</h2>
		<ul>
			<li><a href="../firstMain/jh_main.jsp">Home</a></li>
			<li><a href="../usedArticle/ym_messageboard.jsp">�Ʊ� ��ǰ ����</a></li>
			<li><a href="../Diary/jyo_diary.jsp">������ �����ϱ�</a></li>
			<li><a href="../MessageBoard/jy_messageboard.jsp">�̾߱��ؿ�</a></li>
			<li><a href="../BabyInfo/jy_BabyInfo.jsp">���� �Ʊ�����</a></li>
		</ul>
		</nav>

	</div>
 -->
	<!-- Logo -->

	<!-- Main -->
	<div id="main"
		style="margin-left: 0px; padding-top: 0px; padding-bottom: 50px; padding-left: 50px; padding-right: 0px; border-bottom-width: 100px;">

		<!-- One -->
		<section id="one"> </section>

		<!-- Two -->
		
		<section id="two"
			style="border-top-width: 0px; margin-top: 0px; padding-top: 50px; width: 1300px;">
		<h1>��������</h1>

			
			<div class="row"
				style="margin-left: 0px; margin-bottom: 0px; margin-top: 60px;">

			<table border solid black = "1px" width = "100%" height = "700px" style="font-size: 10px;">
				<c:choose>

					<c:when test="${not empty sessionScope.list}">
						<c:forEach items="${sessionScope.list}" var="list">
							<%-- <article class="6u 12u$(xsmall) work-item"> <a href="../upload/${list.file}" class="image fit thumb" style= " max-width :300px; max-height:300px;">
            	<img src="../upload/${list.file}" alt="" style=" width: 300px;height: 300px;"/></a> --%>


							<tr style="font-size: 2em";>
								<td align="left" width="10%">${list.num }</td>
								
								<td align="center" width="60%"><article class="6u 12u$(xsmall) work-item">
								<a href="back_image/childnotice4.jpg" class="image fit thumb" style= " max-width :1px; max-height:1px;"> 
            					<img src="back_image/white.png" alt="" style=" width: 1px; height: 0px;"/><div style="position: relative;"></a>${list.title}<h3 style="font-size: 0px">${list.text}</h3></div>
            					<div style="position: relative; left:10px; top: 60px;">
            					</div>
         						</article></td>
         						
         						
								<td align="right" width="30%">${list.date}</td>
							</tr>

							<%-- <h3>${list.text}</h3>
							<p><h3 style="color:black;">${list.num}//${list.title}//${list.date}</h3></p> --%>
							<!-- </article> -->
						</c:forEach>
					</c:when>


				</c:choose>
		</table>
	</div>

	</section>



	<!-- Scripts -->
	<script src="assets/js/jquery.onvisible.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.poptrox.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
video {
	position: absolute;
	top: -145px;
	left: 0px;
	min-width: 100%;
	min-height: 90%; z-index : -1;
	overflow: hidden;
	volume: 15%;
	z-index: -1;
}

article{
	margin: 0;
}

#art_pic {
	padding: 0 5em 1em 6em;
	margin: 0;
}

#art_pic img{
	width: 70px;
	height: 70px;
}

.carousel{
	background-color: white;
	font-family: 'a고래야놀자';
}

.reel{
	margin-bottom: 90px;
}

/*
#backImg{
	background-image: url("../baby_picture/sunflower4.jpg");
	background-size: cover;

}
*/
#mainfont, #nav {
	font-family: 'a고래야놀자';
	font-size: 116px;
	font-weight: bold;
}

#LoginForm {
	font-family: '210 좋아해';
}

#banner {
	padding-top: 0;
}

video {
	opacity: 0.7;
}

#logo {
	-moz-text-stroke: 5px #000;
	-webkit-text-stroke: 5px #000;
}

#JoinButton {
	width: 100px;
	height: 30px;
	text-align: center;
}

.popup {
	font-family: '210 좋아해';
	color: black;
	font-size: 26px;
}

#JoinPage {
	color: black;
	font-family: '210 좋아해';
	font-size: 10px;
}

.panel {
	background-color: #444;
	height: 34px;
	padding: 10px;
}

.panel a#login_pop, .panel a#join_pop {
	border: 2px solid #aaa;
	color: #fff;
	display: block;
	float: left;
	margin-left: 10px;
	padding: 5px 10px;
	text-decoration: none;
	text-shadow: 1px 1px #000;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	-ms-border-radius: 10px;
	-o-border-radius: 10px;
	border-radius: 10px;
	font-family: 'dotum';
	text-decoration: none;
}

a#login_pop:hover, a#join_pop:hover {
	border-color: #eee;
}

.overlay {
	background-color: rgba(0, 0, 0, 0.6);
	bottom: 0;
	cursor: default;
	left: 0;
	opacity: 0;
	position: fixed;
	right: 0;
	top: 0;
	visibility: hidden;
	z-index: 1;
	-webkit-transition: opacity .5s;
	-moz-transition: opacity .5s;
	-ms-transition: opacity .5s;
	-o-transition: opacity .5s;
	transition: opacity .5s;
}

.overlay:target {
	visibility: visible;
	opacity: 1;
}

.popup {
	width: 35%;
	height: 55%;
	background-image: url("../baby_picture/heartTree.png");
	background-repeat: no-repeat;
	background-size: cover;
	border: 3px solid #fff;
	display: inline-block;
	left: 50%;
	opacity: 0;
	padding: 15px;
	position: fixed;
	text-align: justify;
	top: 40%;
	visibility: hidden;
	z-index: 10;
	-webkit-transform: translate(-50%, -50%);
	-moz-transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	-o-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	-ms-border-radius: 10px;
	-o-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 0 1px 1px 2px rgba(0, 0, 0, 0.4) inset;
	-moz-box-shadow: 0 1px 1px 2px rgba(0, 0, 0, 0.4) inset;
	-ms-box-shadow: 0 1px 1px 2px rgba(0, 0, 0, 0.4) inset;
	-o-box-shadow: 0 1px 1px 2px rgba(0, 0, 0, 0.4) inset;
	box-shadow: 0 1px 1px 2px rgba(0, 0, 0, 0.4) inset;
	-webkit-transition: opacity .5s, top .5s;
	-moz-transition: opacity .5s, top .5s;
	-ms-transition: opacity .5s, top .5s;
	-o-transition: opacity .5s, top .5s;
	transition: opacity .5s, top .5s;
	border: 3px solid #fff;
}

.overlay:target+.popup {
	top: 50%;
	opacity: 1;
	visibility: visible;
}

.close {
	background-color: rgba(0, 0, 0, 0.8);
	height: 30px;
	line-height: 30px;
	position: absolute;
	right: 0;
	text-align: center;
	text-decoration: none;
	top: -15px;
	width: 30px;
	-webkit-border-radius: 15px;
	-moz-border-radius: 15px;
	-ms-border-radius: 15px;
	-o-border-radius: 15px;
	border-radius: 15px;
}

.close:before {
	color: rgba(255, 255, 255, 0.9);
	content: "X";
	font-size: 24px;
	text-shadow: 0 -1px rgba(0, 0, 0, 0.9);
}

.close:hover {
	background-color: rgba(64, 128, 128, 0.8);
}

.popup p, .popup div {
	margin-bottom: 10px;
}

.popup label {
	display: inline-block;
	text-align: left;
	width: 118px;
}

.popup input[type="text"], .popup input[type="password"] {
	border: 1px solid;
	border-color: #999 #ccc #ccc;
	margin: 0;
	padding: 2px;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	-ms-border-radius: 2px;
	-o-border-radius: 2px;
	border-radius: 2px;
}

.popup input[type="text"]:hover, .popup input[type="password"]:hover {
	border-color: #555 #888 #888;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/main.css" />

<script type="text/javascript" src="http://www.google.com/jsapi"></script>
<script type="text/javascript">google.load("jquery", "1.7.1");</script>

</head>
<body class="homepage">

	<script>

</script>
</head>
<body>
	<div id="page-wrapper">

		<!-- Header -->

		<div id="header">
			<video autoplay="autoplay" src="baby.mp4" loop="loop"></video>
			<!-- Inner -->
			<div class="inner">
				<header>
				<h1>
					<div id="mainfont">
						<a href="index.html" id="logo">아이에게 엄마가</a>
					</div>
				</h1>
				<hr />

				</header>
				<footer id="LoginForm"> <a href="#login_form"
					id="login_pop" class="button">Login</a>
				&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <a href="#join_form"
					id="join_pop" class="button">Join</a> </footer>

				<br> <a href="#banner" class="scrolly"
					style="color: black; font-weight: bold;"> 육아일기 시작! </a>

				<!-- Menu //class="button circled scrolly"으로 창 이동-->
				<!-- Login버튼 부분 팝업-->
				<a href="#x" class="overlay" id="login_form"></a>
				<div class="popup" id="popclose">
					<h2>들어가기전 준비단계!</h2>
					<br>
					<p>아이디와 패스워드를 입력해주세요</p>
					<div>
						<label for="login">&nbsp&nbsp 아 이 디</label> : <input type="text"
							id="login" value="" />
					</div>
					<div>
						<label for="password">&nbsp 비 밀 번 호</label> : <input
							type="password" id="password" value="" />
					</div>
					<div style="text-align: center;">
						<a href="#banner" class="scrolly"><input type="submit"
							value="로 그 인" onclick="confirmID()" /></a>
					</div>
					<a class="close" href="#close"></a>
				</div>


				<script type="text/javascript">
				
					function confirmID(){
						
						alert("로그인 성공! 환영합니다!~");
					}
					
				</script>


				<!-- Join버튼 부분 팝업-->
				<a href="#x" class="overlay" id="join_form"></a>
				<div class="popup"
					style="text-align: center; width: 39%; height: 75%;">
					<h2>회원가입</h2>
					<p style="text-align: center">소중한 정보를 입력해주세요!!!</p>
					<div>
						<label for="email"> 아이디 입력 : </label> : <input type="text" id="id"
							placeholder="영문,숫자 6자 이상 입력해주세요" size="30px">
					</div>
					<div>
						<label for="pass">비밀번호 입력: </label> : <input type="password"
							id="pass" placeholder="암호는 소중히!" size="30px" />
					</div>
					<div>
						<label>애기 이름</label> : <input type="text" id="firstname"
							placeholder="성은 제외" size="10px" /> 성 별 : ♂<input type="radio"
							name="gender">♀<input type="radio" name="gender">
					</div>
					<div>
						<label for="lastname">핸드폰 번호</label> : <input type="text"
							id="lastname" placeholder="'-'없이 입력해주세요" size="30px" />
					</div>
					<div>
						<label for="lastname">혈 액 형</label> : <input type="text"
							id="lastname" placeholder="'알파벳만" size="30px" />
					</div>
					<div>
						<label for="lastname">체 중</label> : <input type="text"
							id="lastname" placeholder="'kg'없이 입력해주세요" size="30px" />
					</div>
					<div>
						<label for="lastname">신 장</label> : <input type="text"
							id="lastname" placeholder="'cm'없이 입력해주세요" size="30px" />
					</div>
					<div>
						<label for="lastname">태어난 날짜</label>&nbsp:&nbsp&nbsp&nbsp&nbsp
						&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <input
							type="date" id="lastname" placeholder="'-'없이 입력해주세요" size="30px" />
					</div>
					<a href="index.jsp"> <input type="submit" value="회원가입"
						onclick="showJoin()"></a>&nbsp or &nbsp <a href="#login_form"
						id="login_pop"><input type="reset" value="초기화"></a> <a
						class="close" href="#close"></a>
				</div>

				<script type="text/javascript">
				
					function showJoin(){
						
						alert("누구누구님! 가입을 축하드립니다!");
						
					}
					
				</script>

			</div>

			<!-- Nav -->
			<nav id="nav"
				style="font-size: 31px !important; margin-top: 1250px; background-color: white;">
			<ul>
				<li><a href="njh_index.jsp"><img src="images/sun.png">Home<img src="images/sun.png"></a></li>
				<li><a href="#"><img src="images/sun.png">아기 용품 공간<img src="images/sun.png"></a>
					<ul>
						<li><a href="#">♥아나바다!</a></li>
						<li><a href="#">♥물품 구매 홈페이지</a></li>
					</ul></li>
				<li><a href="left-sidebar.html"><img src="images/sun.png">나만의 육아일기<img src="images/sun.png"></a></li>
				<li><a href="#"><img src="images/sun.png">이야기 해요<img src="images/sun.png"></a>
					<ul>
						<li><a href="#">♥아나바다!</a></li>
						<li><a href="#">♥물품 구매 홈페이지</a></li>
					</ul></li>
				<li><a href="no-sidebar.html"><img src="images/sun.png">나의 아기정보<img src="images/sun.png"></a></li>
			</ul>
			</nav>

		</div>


		<!-- Banner -->






		<section>
		<div id="banner"
			style="padding-top: 0px; display: none; position: relative;">
			<header> <img class="mySlides"
				src="../baby_picture/picture_main.jpg" style="position: absolute;">

			<img class="mySlides" src="../baby_picture/picture_main1.jpg"
				style="position: absolute; display: block; width: 2000px; height: 300px">
		</div>
		<div id="banner2"
			style="padding-top: 0px; display: none; position: relative;">
			<img class="mySlides2" src="../baby_picture/picture_main.jpg"
				style="position: absolute;"> <img class="mySlides2"
				src="../baby_picture/picture_main1.jpg"
				style="display: block; width: 2000px; height: 300px">
		</div>
		<script src="//code.jquery.com/jquery.min.js">

		   
		</script> <script>
					
					   var imgs = document.querySelectorAll("img.mySlides");
					   var imgs2 = document.querySelectorAll("img.mySlides2");
					   var banner = document.getElementById("banner");
					   var banner2 = document.getElementById("banner2");
					   var index=0;
					   
					   slide(index);
					   
					   setInterval(() => {
					      index+=1;
					      slide(index);
					      $("#banner").fadeIn(3000);
					      $("#banner").fadeOut(3000);
					   }, 6000);
					   setInterval(() => {
					    
					      $("#banner2").fadeOut(3000);
					      $("#banner2").fadeIn(3000);
					   }, 6000);

					      
					      
					   function slide(num) {
						   

					      //이미지 숨기기
					      for (var i = 0; i < imgs.length; i++) {
					         imgs[i].style.display = "none";
					         imgs2[i].style.display = "block";
					         
					      }
					      index += num;
					      
					      if(index < 0){
					         index = imgs.length-1;
					      }else if(index > imgs.length-1){
					         index = 0;
					      }
					      
					      //첫 번째 이미지 출력
					      imgs[index].style.display = "block";
					      imgs2[index].style.display = "none";
					     
					   }	
					   
					  

					   
					   
					</script> </header></section>



		<!-- Carousel -->
		<div id="backImg">
			<section class="carousel">
			<div class="reel">

				<article> <a href="#" class="image featured"></a> <header>
					<h2>
					<a href="#">공지 사항</a> </h2></header>
				<p>Commodo id natoque malesuada sollicitudin elit suscipit
					magna.</p>
				</article>

				<article id="art_pic"> <a href="#" class="image featured"><img
					src="images/sun_icon1.png" alt="" /></a> </article>

				<article> <a href="#" class="image featured"></a> <header>
				<h2>
					<a href="#">안전한 어린이집</a>
				</h2>
				</header>
				<p>Commodo id natoque malesuada sollicitudin elit suscipit
					magna.</p>
				</article>

				<article id="art_pic"> <a href="#" class="image featured"><img
					src="images/sun_icon1.png" alt="" /></a> </article>

				<article> <a href="#" class="image featured"></a> <header>
				<h2>
					<a href="#">육아 News</a>
				</h2>
				</header>
				<p>Commodo id natoque malesuada sollicitudin elit suscipit
					magna.</p>
				</article>

				<article id="art_pic"> <a href="#" class="image featured"><img
					src="images/sun_icon1.png" alt="" /></a> </article>

				<article> <a href="#" class="image featured"></a> <header>
				<h2>
					<a href="#">질병 랭킹 순위</a>
				</h2>
				</header>
				<p>Commodo id natoque malesuada sollicitudin elit suscipit
					magna.</p>
				</article>

				<article id="art_pic"> <a href="#" class="image featured"><img
					src="images/sun_icon1.png" alt="" /></a> </article>



				<!--  
		<!-- Main --
		<div class="wrapper style2">

			<article id="main" class="container special">
				<a href="#" class="image featured"><img src="images/pic06.jpg"
					alt="" /></a>
				<header>
					<h2>
						<a href="#">Sed massa imperdiet magnis</a>
					</h2>
					<p>Sociis aenean eu aenean mollis mollis facilisis primis
						ornare penatibus aenean. Cursus ac enim pulvinar curabitur morbi
						convallis. Lectus malesuada sed fermentum dolore amet.</p>
				</header>
				<p>Commodo id natoque malesuada sollicitudin elit suscipit.
					Curae suspendisse mauris posuere accumsan massa posuere lacus
					convallis tellus interdum. Amet nullam fringilla nibh nulla
					convallis ut venenatis purus sit arcu sociis. Nunc fermentum
					adipiscing tempor cursus nascetur adipiscing adipiscing. Primis
					aliquam mus lacinia lobortis phasellus suscipit. Fermentum lobortis
					non tristique ante proin sociis accumsan lobortis. Auctor etiam
					porttitor phasellus tempus cubilia ultrices tempor sagittis. Nisl
					fermentum consequat integer interdum integer purus sapien. Nibh
					eleifend nulla nascetur pharetra commodo mi augue interdum tellus.
					Ornare cursus augue feugiat sodales velit lorem. Semper elementum
					ullamcorper lacinia natoque aenean scelerisque.</p>
				<footer>
					<a href="#" class="button">Continue Reading</a>
				</footer>
			</article>

		</div>

		<!-- Features --
		<div class="wrapper style1">

			<section id="features" class="container special">
				<header>
					<h2>Morbi ullamcorper et varius leo lacus</h2>
					<p>Ipsum volutpat consectetur orci metus consequat imperdiet
						duis integer semper magna.</p>
				</header>
				<div class="row">
					<article class="4u 12u(mobile) special">
						<a href="#" class="image featured"><img src="images/pic07.jpg"
							alt="" /></a>
						<header>
							<h3>
								<a href="#">Gravida aliquam penatibus</a>
							</h3>
						</header>
						<p>Amet nullam fringilla nibh nulla convallis tique ante proin
							sociis accumsan lobortis. Auctor etiam porttitor phasellus tempus
							cubilia ultrices tempor sagittis. Nisl fermentum consequat
							integer interdum.</p>
					</article>
					<article class="4u 12u(mobile) special">
						<a href="#" class="image featured"><img src="images/pic08.jpg"
							alt="" /></a>
						<header>
							<h3>
								<a href="#">Sed quis rhoncus placerat</a>
							</h3>
						</header>
						<p>Amet nullam fringilla nibh nulla convallis tique ante proin
							sociis accumsan lobortis. Auctor etiam porttitor phasellus tempus
							cubilia ultrices tempor sagittis. Nisl fermentum consequat
							integer interdum.</p>
					</article>
					<article class="4u 12u(mobile) special">
						<a href="#" class="image featured"><img src="images/pic09.jpg"
							alt="" /></a>
						<header>
							<h3>
								<a href="#">Magna laoreet et aliquam</a>
							</h3>
						</header>
						<p>Amet nullam fringilla nibh nulla convallis tique ante proin
							sociis accumsan lobortis. Auctor etiam porttitor phasellus tempus
							cubilia ultrices tempor sagittis. Nisl fermentum consequat
							integer interdum.</p>
					</article>
				</div>
			</section>

		</div>

		<!-- Footer --
		<div id="footer">
			<div class="container">
				<div class="row">

					<!-- Tweets --
					<section class="4u 12u(mobile)">
						<header>
							<h2 class="icon fa-twitter circled">
								<span class="label">Tweets</span>
							</h2>
						</header>
						<ul class="divided">
							<li>
								<article class="tweet">
									Amet nullam fringilla nibh nulla convallis tique ante sociis
									accumsan. <span class="timestamp">5 minutes ago</span>
								</article>
							</li>
							<li>
								<article class="tweet">
									Hendrerit rutrum quisque. <span class="timestamp">30
										minutes ago</span>
								</article>
							</li>
							<li>
								<article class="tweet">
									Curabitur donec nulla massa laoreet nibh. Lorem praesent
									montes. <span class="timestamp">3 hours ago</span>
								</article>
							</li>
							<li>
								<article class="tweet">
									Lacus natoque cras rhoncus curae dignissim ultricies. Convallis
									orci aliquet. <span class="timestamp">5 hours ago</span>
								</article>
							</li>
						</ul>
					</section>

					<!-- Posts --
					<section class="4u 12u(mobile)">
						<header>
							<h2 class="icon fa-file circled">
								<span class="label">Posts</span>
							</h2>
						</header>
						<ul class="divided">
							<li>
								<article class="post stub">
									<header>
										<h3>
											<a href="#">Nisl fermentum integer</a>
										</h3>
									</header>
									<span class="timestamp">3 hours ago</span>
								</article>
							</li>
							<li>
								<article class="post stub">
									<header>
										<h3>
											<a href="#">Phasellus portitor lorem</a>
										</h3>
									</header>
									<span class="timestamp">6 hours ago</span>
								</article>
							</li>
							<li>
								<article class="post stub">
									<header>
										<h3>
											<a href="#">Magna tempus consequat</a>
										</h3>
									</header>
									<span class="timestamp">Yesterday</span>
								</article>
							</li>
							<li>
								<article class="post stub">
									<header>
										<h3>
											<a href="#">Feugiat lorem ipsum</a>
										</h3>
									</header>
									<span class="timestamp">2 days ago</span>
								</article>
							</li>
						</ul>
					</section>

					<!-- Photos --
					<section class="4u 12u(mobile)">
						<header>
							<h2 class="icon fa-camera circled">
								<span class="label">Photos</span>
							</h2>
						</header>
						<div class="row 25%">
							<div class="6u">
								<a href="#" class="image fit"><img src="images/pic10.jpg"
									alt="" /></a>
							</div>
							<div class="6u$">
								<a href="#" class="image fit"><img src="images/pic11.jpg"
									alt="" /></a>
							</div>
							<div class="6u">
								<a href="#" class="image fit"><img src="images/pic12.jpg"
									alt="" /></a>
							</div>
							<div class="6u$">
								<a href="#" class="image fit"><img src="images/pic13.jpg"
									alt="" /></a>
							</div>
							<div class="6u">
								<a href="#" class="image fit"><img src="images/pic14.jpg"
									alt="" /></a>
							</div>
							<div class="6u$">
								<a href="#" class="image fit"><img src="images/pic15.jpg"
									alt="" /></a>
							</div>
						</div>
					</section>

				</div>
				<hr />
				<div class="row">
					<div class="12u">

						<!-- Contact --
						<section class="contact">
							<header>
								<h3>Nisl turpis nascetur interdum?</h3>
							</header>
							<p>Urna nisl non quis interdum mus ornare ridiculus egestas
								ridiculus lobortis vivamus tempor aliquet.</p>
							<ul class="icons">
								<li><a href="#" class="icon fa-twitter"><span
										class="label">Twitter</span></a></li>
								<li><a href="#" class="icon fa-facebook"><span
										class="label">Facebook</span></a></li>
								<li><a href="#" class="icon fa-instagram"><span
										class="label">Instagram</span></a></li>
								<li><a href="#" class="icon fa-pinterest"><span
										class="label">Pinterest</span></a></li>
								<li><a href="#" class="icon fa-dribbble"><span
										class="label">Dribbble</span></a></li>
								<li><a href="#" class="icon fa-linkedin"><span
										class="label">Linkedin</span></a></li>
							</ul>
						</section>
-->
				<!-- Copyright -->
			</div>
		</div>
		</section>
	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery-1.9.1.min.js"></script>
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.onvisible.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
	#top {
		background-image: url("sunflower4.png");
		background-repeat: no-repeat;
		font-family: 'a고래야놀자';
	}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" href="assets/css/main.css" />
<link rel="stylesheet" href="http://fonts.googleapis.com/earlyaccess/nanumpenscript.css">
<title>Insert title here</title>
</head>
<body id="top" background="background.jpg">
	<section id="three">
	<p></p>
	<h1 align="center"><img src="writingicon.png" width="100px" height="100px"></h1>
	<p align="center"></p>
	<div class="row" style="padding-left: 500px; padding-right: 0px">
		<div class="8u 12u$(small)">
			<form method="post" action="#">
				<div class="row uniform 50%">
					<div class="6u 12u$(xsmall)">
						<input type="text" name="title" id="title" placeholder="title" />
					</div>
					<div class="6u$ 12u$(xsmall)">
						<input type="text" name="name" id="name" placeholder="name" />
					</div>			
					<div class="6u$ 12u$(xsmall)">
						<input type="file" name="file" id="file" placeholder="file" />
					</div>					
					<div class="12u$">
						<textarea name="message" id="message" placeholder="Message" rows="8"></textarea>
					</div>
					<div class="12u$">
						<input type="submit" value="Send Message" />
					</div>
				</div>
			</form>
		</div>
	</div>
	</section>
</body>
</html>
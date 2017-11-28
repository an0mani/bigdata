<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="margin-top: 100px; margin-left: 100px; margin-bottom: 100px; margin-right: 100px;">
<head>
<style>
#back{

	background-image: url("back_image/baby.jpg");
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
<link href="assets/css1/main.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
					<!-- Three -->
								<div id="back">
									<section>
										<header>
											<h3>글쓰기</h3>
										</header>
										<div class="content">

											<form action="Index.jsp" method="post" action="#">
												<div class="field half first">
													<label for="name">제목</label>
													<input type="text" name="name" id="name" value="" />
												</div>
												<div class="field">
													<label for="department">구분</label>
													<div class="select-wrapper">
														<select name="department" id="department">
															<option value="">- Category -</option>
															<option value="1">1</option>
															<option value="2">2</option>
															<option value="3">3</option>
															<option value="4">4</option>
														</select>
													</div>
												</div>
												
												<div class="field">
													<label for="message">글쓰기</label>
													<textarea name="message" id="message" rows="6"></textarea>
												</div>
												
												<ul class="actions">
													<li><input type="submit" name="submit" id="submit" value="업로드" /></li>
													<li><li><a href="#" class="button icon fa-download">사진</a></li>
												</ul>
											</form>
											
										</div>
									</section>
									</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>login</title>
    <!--jquery依赖版本-->
	<script src="<%=request.getContextPath() %>/resources/bootstrap.3.3.7/js/jquery-1.12.4.min.js"></script>
	<!--bootstrap图标css -->
	<link href="<%=request.getContextPath() %>/resources/bootstrap.3.3.7/font-awesome.4.7.0/css/font-awesome.min.css" rel="stylesheet">
	<!-- 核心文件-->
	<link href="<%=request.getContextPath() %>/resources/bootstrap.3.3.7/css/bootstrap.min.css" rel="stylesheet">
	<script src="<%=request.getContextPath() %>/resources/bootstrap.3.3.7/js/bootstrap.min.js"></script>
	<style type="text/css">
		body{
			background: url("<%=request.getContextPath() %>/resources/images/login-background.jpg");
			background-size: cover;
			/*animation-name:myfirst;*/
			/*animation-duration:12s;*/
			/*!*变换时间*!*/
			/*animation-delay:2s;*/
			/*!*动画开始时间*!*/
			/*animation-iteration-count:infinite;*/
			/*!*下一周期循环播放*!*/
			/*animation-play-state:running;*/
			/*动画开始运行*/
		}
		<%--@keyframes myfirst--%>
		<%--{--%>
			<%--0%   {background:url("<%=request.getContextPath() %>/resources/images/login-background.jpg");}--%>
			<%--34%  {background:url("<%=request.getContextPath() %>/resources/images/login-background.jpg");}--%>
			<%--67%  {background:url("<%=request.getContextPath() %>/resources/images/login-background.jpg");}--%>
			<%--100% {background:url("<%=request.getContextPath() %>/resources/images/login-background.jpg");}--%>
		<%--}--%>
		.form{background: rgba(255,255,255,0.2);width:400px;margin:120px auto;}
		/*阴影*/
		.fa{display: inline-block;top: 27px;left: 6px;position: relative;color: #ccc;}
		input[type="text"],input[type="password"]{padding-left:26px;}
		.checkbox{padding-left:21px;}
	</style>


</head>
<body>
<div class="container">
	<div class="form row">
		<div class="form-horizontal col-md-offset-3" id="login_form">
			<h3 class="form-title">登录入口</h3>
			<div class="col-md-9">
				<div class="form-group">
					<i class="fa fa-user fa-lg"></i>
					<input class="form-control required" type="text" placeholder="Username" id="username" name="username" autofocus="autofocus" maxlength="20"/>
				</div>
				<div class="form-group">
					<i class="fa fa-lock fa-lg"></i>
					<input class="form-control required" type="password" placeholder="Password" id="password" name="password" maxlength="8"/>
				</div>
				<div class="form-group">
					<%--<label class="checkbox">--%>
						<%--<input type="checkbox" name="remember" value="1"/>记住我--%>
					<%--</label>--%>
				</div>
				<div class="form-group col-md-offset-9">
					<button type="submit" class="btn btn-success pull-right" name="submit">登录</button>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>
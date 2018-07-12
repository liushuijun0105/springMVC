<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>小鱼儿&管理系统</title>
		 <c:set var="ctx" value="${pageContext.request.contextPath}" />
		    <script type="text/javascript">
		        var ctxPath = "${ctx}";
		        //判断当前登录窗口是否是内嵌窗口，是则跳转到顶级窗口
		        if(window.top != this){
		            parent.top.location= ctxPath+'/login';
		        }
		 </script>
		<link rel="shortcut icon" href="favicon.ico">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/bootstrap.3.3.7/login-stytle.css" />
		<!--jquery依赖版本-->
		<script src="<%=request.getContextPath() %>/resources/bootstrap.3.3.7/js/jquery-1.12.4.min.js"></script>
		<!--bootstrap图标css -->
		<link href="<%=request.getContextPath() %>/resources/bootstrap.3.3.7/font-awesome.4.7.0/css/font-awesome.min.css" rel="stylesheet">
		<!-- 核心文件-->
		<link href="<%=request.getContextPath() %>/resources/bootstrap.3.3.7/css/bootstrap.min.css" rel="stylesheet">
		<script src="<%=request.getContextPath() %>/resources/bootstrap.3.3.7/js/bootstrap.min.js"></script>
	</head>
	<body id="login" style="background:url(<%=request.getContextPath() %>/resources/images/jczjb.jpg); background-size:cover;">
		<header class="page-head">
			<div class="head-logo">
				<!-- div class="head-logo-in"></div -->
			</div>
			<div class="head-text">
				<span>小鱼儿&管理系统</span>
			</div>

		</header>
		<div class="login-content">
			<!-- <div class="login-bg"></div> -->
			<div class="login-c-in">
				<!-- <img src="statics/plane/img/syjctp.jpg" /> -->
				<div id="keyboard" class="animated rotateInDownLeft"></div>
				<div class="login-login">
					<div class="login-nav">
						<div class="login-nav-in active">帐号密码登录</div>
					</div>
					<div class="login-box">
					
						<div class="login-box-in bottom animated fadeInRight" >
                            <div class="input-top"><!-- 该字段class加error 出现错误样式 -->
                                <i class="fa fa-user"></i>
                                <input id="account"  type="text"  name="username"  placeholder="帐号" />
                                <span id="msg"></span>
                            </div>
                            <div class="input-bottom">
                                <i class="fa fa-lock"></i>
                                <input id="passwd"  type="password" name="password"  placeholder="密码"/>
                                <span id="msgPwd"></span>
                                <i class="fa fa-keyboard-o"  onclick='test();'></i>
                            </div>
                            <button class="login-btn" id="pwdBtn">登 &nbsp;&nbsp; 录</button>
                        </div>
					
						 <div class="login-box-in animated fadeInRight">
							<div class="loginZheng">
							</div>
							<button class="login-btn login-btn-zheng">登 &nbsp;&nbsp; 录</button>
						</div>
					</div>

				</div>
			</div>
		</div>

	    <script src="<%=request.getContextPath() %>/resources/common.js"></script>
	    <script src="<%=request.getContextPath() %>/resources/js/login/login.js"></script>
		<!--keyboard-->
		<script type="text/javascript">
		function test(){
			VirtualKeyboard.toggle('passwd', 'keyboard');
			VirtualKeyboard.switchLayout("US US");
			$("#kb_langselector,#kb_mappingselector,#copyrights").css("display", "none");
		}
		</script>
		<script type="text/javascript">
			$(".login-nav-in").on("click", function() {
				if($("#virtualKeyboard").css("display")=="block"){
					test()							
				};
				$(".login-nav-in").eq($(this).index()).addClass("active").siblings().removeClass("active");
				$(".login-box-in").hide().eq($(this).index()).show()
			})
			$("#passwd").on("blur",function(){
				if($("#virtualKeyboard").css("display")=="block"){
					test()
				};
			})
			
			$("#keyboard").find("div,a").on("click",function(){
				$("#passwd").focus();
			})
		</script>
	</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>注册</title>
<link rel="stylesheet" href="login/css/style.css">
<body>

<div class="register-container">
	<h1>注册</h1>
	
	<div class="connect">
		<p></p>
	</div>
	
	<form action="add.action" method="post" id="registerForm">
		<div>
			<input type="text" name="user_name" class="user_name" placeholder="您的用户名" autocomplete="off"/>
		</div>
		<div>
			<input type="password" name="user_psw" class="user_psw" placeholder="输入密码" oncontextmenu="return false" onpaste="return false" />
		</div>
		<button id="submit" type="submit">注 册</button>
	</form>
	<a href="login.jsp">
		<button type="button" class="register-tis">已经有账号？</button>
	</a>

</div>

</body>
<script src="login/js/jquery.min.js"></script>
<script src="login/js/common.js"></script>
<!--背景图片自动更换-->
<script src="login/js/supersized.3.2.7.min.js"></script>
<script src="login/js/supersized-init.js"></script>
<!--表单验证-->
<script src="login/js/jquery.validate.min.js?var1.14.0"></script>
</html>
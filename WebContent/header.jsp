<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">
<title>ヘッダー</title>
<script>
function goLoginAction(){
	document.getElementById("form").action="GoLoginAction";
}
function goMyPageAction(){
	document.getElementById("form").action="MyPageAction";
}
function goCartAction(){
	document.getElementById("form").action="CartAction";
}
function goAnimalAction(){
	document.getElementById("form").action="HomeAction";
}
function goLogoutAction(){
	document.getElementById("form").action="LogoutAction";
}

</script>
</head>
<body>
<header>
<div id="header">
<div id="header-title">
amazoon
</div>
<div id="header-menu">
<ul>
<s:form id="form" name="form" action="GoLoginAction">

	<li><s:submit value="動物一覧" class="submit_btn" onclick="goAnimalAction();"/></li>
	<li><s:submit value="カート" class="submit_btn" onclick="goCartAction();"/><li>
	<s:if test="#session.logined==1">
	<li><s:submit value="ログアウト" class="submit_btn" onclick="goLogoutAction();"/></li>
	</s:if>
	<s:else>
		<li><s:submit value="ログイン" class="submit_btn" onclick="goLoginAction();"/></li>
	</s:else>
	<s:if test="#session.logined==1">
		<li><s:submit value="マイページ" class="submit_btn" onclick="goMyPageAction();"/></li>
		<li class = welcome_name>ようこそ！<s:property value="#session.login_user_id"/>さん</li>
	</s:if>
</s:form>
</ul>
</div>
</div>
</header>
</body>
</html>
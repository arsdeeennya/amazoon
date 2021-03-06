<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./css/style.css">
<title>ログイン</title>
</head>
<body>

<jsp:include page="header.jsp" />

<h1>ログイン画面</h1>

<div id="contents" >
			<div id = "center">
			<h3>登録する内容は以下でよろしいですか。</h3>
			<table>
				<s:form action="UserCreateCompleteAction">
					<tr id="box">
						<td><label>ログインID:</label></td>

						<td><s:property value="loginUserId" escape="false" /></td>
					</tr>
					<tr id="box">
						<td><label>パスワード:</label></td>
						<td><s:property value="loginPassword" escape="false" /></td>
					</tr>

					<tr id="box">
						<td><label>ユーザー名:</label></td>
						<td><s:property value="userName" escape="false" /></td>
					</tr>
					<tr>
						<td><s:submit value="完了" /></td>
					</tr>
				</s:form>

			</table>
		</div>

</div>
<jsp:include page="footer.jsp" />
</body>
</html>
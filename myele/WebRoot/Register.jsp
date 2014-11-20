<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>登陆</title>
		<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.0.js">
		</script>
		<script type="text/javascript">
		function Login(s){
			var Usrname = document.getElementById("Usrname");
			var Usrpass = document.getElementById("Usrpass");
			window.location.href = "Login?Usrname="+Usrname.innerHTML+"&Usrpass="+Usrpass.innerHTML;
		}
		</script>
	</head>
	
	<style>
		body{ background-color:#FFCC99; }
		h1 { text-align:center;}	
		p.sansserif{
			line-height:150%;
			text-align:center; font-family:Arial,Helvetica,sans-serif;
		}
	</style>
	
	<body>
		<h1>Elevator Fee Query System: Register</h1>
			<s:form action = "Regist">
				Usrname: <s:textfield name = "Usrname"/>
				Usrpass: <s:textfield name = "Usrpass"/>
					<s:submit value = "Submit"/>
			</s:form>
	</body>
</html>

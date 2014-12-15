<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Search</title>
<script>
function displayDate()
{
	document.getElementById("demo").innerHTML="your cross <s:property value = "cross"/> level by elevator last year"+'<br/>'+
												"and your elevator use rate is <s:property value = "exceed"/>"+'<br/>'+"The Using-History is <br/>"+
												"<s:iterator value="history" id="String" status = "status">"+
													"<p><s:property value="String"/> </p>"+
												"</s:iterator>";
}
</script>
</head>

<style>
		body{ background-color:#FFCC99; }
		h1,h2 { text-align:center;font-family:"Comic Sans MS", cursive, sans-serif;}	
		p {
			line-height:150%;
			text-align:center; font-family:"Comic Sans MS", cursive, sans-serif;
		}
	</style>
<body>

<h1>Elevator Fee Query System</h1>
<h2>Hi,<s:property value = "userid"/> </h2>

<p id="demo">your Elevator Fee of last year is <s:property value = "pay"/> </p>

<p><button type="button" onclick="displayDate()" value="detail">detail</button></p>

</body>
</html>
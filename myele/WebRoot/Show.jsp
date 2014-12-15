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
	    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
	    <link rel="shortcut icon" type="image/ico" href="/images/favicon.ico" />
	    <title>Login</title>
	    <link href="styles.css" type="text/css" media="screen" rel="stylesheet" />
	    <link href="jquery-ui-1.8.16.custom.css" rel="stylesheet">
	    <script src="jquery-1.6.2.min.js"></script>
	    <script src="jquery-ui-1.8.16.custom.min.js"></script>
	    <script type="text/javascript" src="jquery.keyboard.extension-typing.js"></script>
	    <link type="text/css" href="keyboard.css" rel="stylesheet" />
	    <script type="text/javascript" src="jquery.keyboard.js"></script>
</head>
	<style>
		p {
			line-height:150%;
			text-align:center; font-family:"Comic Sans MS", cursive, sans-serif;
		}
	</style>
	<body id="login">
	    <div id="wrappertop">
	    </div>
	    <div id="wrapper">
	        <div id="content">
	            <div id="header">
	                <h1>
	                    <a href="">
	                       <!--؅׃Logo <img src="logo.png"   height="50"  width="100"  alt="logo">--></a></h1>
	            </div>
	            <div id="darkbanner" class="banner320">
	                <h2>
	                    Elevator Fee Show,<br>Hi,<s:property value = "userid"/>
	                </h2>           
	            </div>
	            <div id="darkbannerwrap">
	            </div>
	            <center>
	            <p id="demo">your Elevator Fee of last year is <s:property value = "pay"/> </p>
				<p><button type="button" onclick="displayDate()" value="detail">detail</button></p>
	        	</center>
	        </div>
	    </div>
	    <div id="wrapperbottom_branding">
	        <div id="wrapperbottom_branding_text">
	            Language:<a href="#" style='text-decoration: none'>Chinese </a>| <a href="#" style='text-decoration: none'>
	                English</a></div>
	    </div>
	    
	</body>
</html> 
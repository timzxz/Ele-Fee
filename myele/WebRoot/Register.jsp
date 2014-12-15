<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <link rel="shortcut icon" type="image/ico" href="/images/favicon.ico" />
    <title>Register</title>
    <link href="styles.css" type="text/css" media="screen" rel="stylesheet" />
    <link href="jquery-ui-1.8.16.custom.css" rel="stylesheet">
    <script src="jquery-1.6.2.min.js"></script>
    <script src="jquery-ui-1.8.16.custom.min.js"></script>
    <script type="text/javascript" src="jquery.keyboard.extension-typing.js"></script>
    <link type="text/css" href="keyboard.css" rel="stylesheet" />
    <script type="text/javascript" src="jquery.keyboard.js"></script>


    

</head>
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
                    Elevator Fee Register System</h2>
            </div>
            <div id="darkbannerwrap">
            </div>
            
            <fieldset class="form">
			<form action="Regist">
                <p>
                    <label class="loginlabel" for="userid">
                        Username:</label>
                    <input class="logininput ui-keyboard-input ui-widget-content ui-corner-all" name="Usrname"
                        id="user_name" type="text" value="" />
                </p>
                <p>
                    <label class="loginlabel" for="password">
                        Password:</label>
                    <span>
                        <input class="logininput"   name="Usrpass" id="user_password" type="password" /><img
                            id="passwd" class="tooltip" alt="Click to open the virtual keyboard" title="Click to open the virtual keyboard"
                            src="keyboard.png" /></span>
                </p>
                <center>
                <input type="submit" value="RegisterID" /></center>
			</form>
            </fieldset>
        </div>
    </div>
    <div id="wrapperbottom_branding">
        <div id="wrapperbottom_branding_text">
            Language:<a href="#" style='text-decoration: none'>Chinese </a>| <a href="#" style='text-decoration: none'>
                English</a></div>
    </div>
    <script type="text/javascript">
        $(document).ready(function() {
            $('#user_password').keyboard({
                openOn: null,
                stayOpen: true,
                layout: 'qwerty'
            }).addTyping();
            $('#passwd').click(function() {
                $('#user_password').getkeyboard().reveal();
            })

            $(".logininput").blur(function() {
                if ($(this).val() == "") {
                    $(this).css("border-color", "red");
                                    }
                else
                    $(this).css("border-color", "#D9D6C4");
            })

      
        });
        
    </script>
</body>
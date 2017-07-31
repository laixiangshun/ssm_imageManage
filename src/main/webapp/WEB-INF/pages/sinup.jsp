<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="include/path_lib.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>注册</title>
    
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link href="${path }/css/style2.css" rel='stylesheet' type='text/css' />
	<script type="text/javascript" src="${path }/js/jquery.min.js"></script>
	<script type="text/javascript" src="${path }/js/md5.js"></script>
	<style type="text/css">
		.content{
			width: 96%;
			position: relative;
			margin-left: 10px;
			text-align: center;
		}
		input[type='submit']{
			margin-bottom: 20px;
		}
		.title{
			width: 5%;
			position: inline-block;
			font-size: 16px;
			font-weight: bold;
		}
		input[type='text'],input[type='password']{
			width: 80%;
		}
		.login-form{
			width: 30%;
			height: 500px;
		}
		.head{
			padding-top: 20px;
		}
	</style>
  </head>
  
  <body>
    	<div class="main">
    		<div class="login-form" onkeydown="key_sinup();">
    			<h1>请先注册</h1><br/>
    			<div class="head">
    				<img alt="" src="${path }/images/user.png">
    			</div>
    			<div class="content">
    				<p><span class="title">&emsp;用户名:</span><input type="text" id="username" value="" class="text" onfocus="this.value='';"></p>
    				<p><span class="title">&emsp;&emsp;密码:</span><input type="password" id="pwd" value="" class="text" onfocus="this.value='';"></p>
    				<p><span class="title">确认密码:</span><input type="password" id="restpwd" value="" class="text" onfocus="this.value='';"></p>
    				<div class="submit">
    					<input type="submit" value="确定" id="submit">
    					<div style="text-align:right;"><a href="javascript:;" onclick="login();">有账号，直接去登录</a></div>
    				</div>
    			</div>
    		</div>
    	</div>
    	<script type="text/javascript">
    		function login(){
    			window.location.href="${path}/login.html";
    		}
    		$("#username").blur(function(){
    			if(this.value==null || this.value==""){
    				alert("请输入用户名");
    				return;
    			}
    			$("#pwd").focus();
    		});
    		$("#pwd").blur(function(){
    			checkpassword(this.value);
    		});
    		$("#restpwd").blur(function(){
    			var pwd=$("#pwd").val();
    			if(pwd!=this.value){
    				alert("密码不一致，请重新输入");
    				$("#restpwd").val("");
    				return;
    			}
    			checkpassword(this.value);
    		});
    		function checkpassword(pwd){
    			if(pwd==null || pwd.length<8){
    				alert("密码长度至少为8位");
    				return false;
    			}
    			var reg=new RegExp(/^(?![^a-zA-Z]+$)(?!\D+$)/);
    			if(!reg.test(pwd)){
    				alert("密码必须包含数字和字母");
    				return false;
    			}
    			return true;
    		}
    		$("#submit").click(function(){
    			var user={};
    				user.username=$("#username").val();
    				user.pwd=hex_md5($("#pwd").val());
   				$.ajax({
   					url: "${path}/sinup.action",
   					type: "post",
   					data: {"user":JSON.stringify(user)},
   					dataType: "json",
   					cache: false,
   					success: function(data){
   						if(data.success==true){
   							$.ajax({
   								url: "${path}/login.action",
   								type: "post",
   								data: {"userinfo": JSON.stringify(user)},
   								cache: false,
   								dataType: "json",
   								success: function(data){
   									if(data.success==true){
   										window.location.href="${path}/index.html";
   									}else{
   										window.location.href="${path}/login.html";
   									}
   								},
   								error:function(responseText,textstatus,erorThrown){
			   						alert("注册后登陆失败"+"\n"
			   								+responseText.status+"\n"
			   								+textstatus);
	   								}
   							});
   						}else{
   							alert(data.message);
   							window.location.reload(true);
   						}
   					},
   					error: function(responseText,textstatus,erorThrown){
   						alert("注册失败"+"\n"
   								+responseText.status+"\n"
   								+textstatus);
   					}
   				});
    		});
    		//enter键提交注册
    		function key_sinup(){
    			if(event.keyCode==13){
    				$("#submit").click();
    			}
    		}
    	</script>
  </body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="include/path_lib.jsp" %>
<html>
<head>
	<title>Login</title>
		<meta charset="utf-8">
		<link href="${path }/css/style2.css" rel='stylesheet' type='text/css' />
		 <script type="text/javascript" src="${path }/js/jquery.min.js"></script>
		 <script type="text/javascript" src="${path }/js/md5.js"></script>
		<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	 <div class="main">
		<div class="login-form" onkeydown="key_login();">
			<h1>请先登录</h1>
			<div class="head">
				<img src="${path }/images/user.png" alt=""/>
			</div>
			<form method="post" onsubmit="return false;">
				<input name="username" type="text" class="text" value="username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'username';}" >
				<input name="pwd" type="password" value="password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'password';}">
				<div class="submit">
					<input type="submit" value="LOGIN" id="submit" onclick="login();">
					<div style="text-align: right;"><a href="javascript:;" onclick="sinup();">还没有账号，去注册</a></div>
				</div>
			</form>
		</div>
	</div>
	<script type="text/javascript">
		function login(){
			var username=$("input[name='username']").val();
			var password=$("input[name='pwd']").val();
			if(username==null || username==""){
				alert("用户名不能为空");
				return;
			}
			if(password==null || password==""){
				alert("密码不能为空");
				return;
			}
			var data=$("form").serialize();
				//data=decodeURIComponent(data,true);//防止中午乱码
			var jsonstring=getjsondata(data);
			var json=JSON.parse(jsonstring);//将json字符串转换为json对象
			///var json=(new Function('return ('+jsonstring+')'))();//适合所有浏览器
				json.pwd=hex_md5(json.pwd);
			var	json2=JSON.stringify(json);//将json对象转换为json字符串
				
			$.ajax({
				url: "${path}/login.action",
				type: "post",
				cache: false,
				dataType: "json",
				data: {"userinfo":json2},
				success: function(data){
					if(data.success==true){
						window.location.href="${path}/index.html";
					}else{
						alert(data.message);
						if(data.href!=null){
							window.location.href=data.href;
						}
					}
				},
				error: function(responseText,textStatus,errorThrown){
					alert("登录出错，请检查再登录\n"
						+responseText.status+"\n"
						+textStatus);
				}
			});
		};
		//将serialize()格式化的数据转换为json格式
		function getjsondata(data){
			data=data.replace(/&/g,"\",\"");
			data=data.replace(/=/g,"\":\"");
			data="{\""+data+"\"}";
			//data("pwd")=hex_md5(data("pwd"));
			return data;
		};
		//按下enter键登录
		function key_login(){
			var e=window.event || arguments.callee.caller.arguments[0];
			var keycode=e.keyCode || e.which;
			if(keycode==13){
				login();
			}
		}
		function sinup(){
			window.location.href="${path}/sinup.html";
		}
	</script>
</body>
</html>
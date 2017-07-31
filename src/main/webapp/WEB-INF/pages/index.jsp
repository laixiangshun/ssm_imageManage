<%@page contentType="text/html; charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="include/path_lib.jsp" %>
<html>
<!--[if lt IE 7]>
<html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>
<html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>
<html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>个人相册主页</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Personol Picture Gallery"/>
    <meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive"/>


    <!-- Facebook and Twitter integration -->
    <meta property="og:title" content=""/>
    <meta property="og:image" content=""/>
    <meta property="og:url" content=""/>
    <meta property="og:site_name" content=""/>
    <meta property="og:description" content=""/>
    <meta name="twitter:title" content=""/>
    <meta name="twitter:image" content=""/>
    <meta name="twitter:url" content=""/>
    <meta name="twitter:card" content=""/>

    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <link rel="shortcut icon" href="${path }/favicon.ico">
    <!-- Google Fonts -->
    <link href='${path }/css/style3.css' rel='stylesheet' type='text/css'>
    <!-- Animate -->
    <link rel="stylesheet" href="${path }/css/animate.css">
    <!-- Icomoon -->
    <link rel="stylesheet" href="${path }/css/icomoon.css">
    <!-- Bootstrap  -->
    <link rel="stylesheet" href="${path }/css/bootstrap.css">

    <link rel="stylesheet" href="${path }/css/style.css">


    <!-- Modernizr JS -->
    <script src="${path }/js/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
    <script src="js/respond.min.js"></script>
    <![endif]-->
	
	<style type="text/css">
		#fh5co-header{
			background: #00bcd4;
			height: 120px;
			padding-top: 10px;
		}
		.container-fluid{
		}
		#fh5co-header #fh5co-logo{
			text-align: left;
			color: #795548;
		}
		.bar{
			text-align: right;
		}
		.logout:hover{
			cursor: pointer;
		}
		#fh5co-footer{
			height:70px;
			background: #00bcd4;
			font-size: 16px;
			font-weight: bolder;
			padding: 10px 0;
		}
		.footer_span{
			font-size: 16px;
			font-weight: bold;
			line-height: 30px;
		}
		.img_show{
			width: 300px;
			height: 300px;
		}
		.fh5co-post-entry article{
			margin-bottom: 30px;
		}
		.img-responsive{
			border-radius: 50%;
			-webkit-border-radius: 50%;
			-moz-border-radius: 50%;
			-ms-border-radius: 50%;
		}
		.toggle_sidbar{
			z-index: 10000;
			position: fixed;
			top: 120px;
			right: -1px;
			margin-left:10px;
			width: 70px;
			height: 100px;
			background:#d5ddde;
			text-align: center;
			border-radius: 0 0 0.4em 0.4em;
			-webkit-border-radius:  0 0 0.4em 0.4em;
			-moz-border-radius: 0 0 0.4em 0.4em;
			-ms-border-radius: 0 0 0.4em 0.4em;
			opacity: 0.5;
			filter:alpha(Opacity=50);
			-moz-cpacity: 0.5;
		}
		.toggle_sidbar span{
			padding: 10px 0 0;
		}
		.fh5co-nav-toggle{
			width: 50px;
			height:50px;
			padding-top: 40px;
			margin: 0 15px 0 15px;
		}
		.fh5co-nav-toggle i{
			width: 50px;
			height: 3px;
			padding: 0 10px 0 10px;
		}
		.fh5co-nav-toggle i::before, .fh5co-nav-toggle i::after{
			width: 50px;
			height: 3px;
		}
		#fh5co-offcanvas{
			height: 650px;
			top: 120px;
			background: #ebeff1;
			border-radius: 0.5em;
			-webkit-border-radius:  0.5em;
			-moz-border-radius:  0.5em;
			-ms-border-radius:  0.5em;
		}
		.fh5co-box ul li{
			font-size: 16px;
			font-style: normal;
			font-variant: normal;
			font-weight: lighter;
		}
		#fh5co-offcanvas .fh5co-menu ul li a:hover{
			cursor: pointer;
			text-decoration:  underline;
			font-size: 18px;
			color: black;
		}
		.fh5co-article-title a{
			width: 300px;
			display: block;
			word-wrap: break-word;/* a标签内容过长自动换行 */
		}
		#fh5co-logo{
			color: #222425;
			text-shadow: black;
		}
	</style>
</head>
<body>
<div id="fh5co-offcanvas">
    <a href="#" class="fh5co-close-offcanvas js-fh5co-close-offcanvas"><span><i
            class="icon-cross3"></i> <span>Close</span></span></a>
    <div class="fh5co-bio">
        <figure>
            <img src="${path }/images/mine.jpg" alt="Free HTML5 Bootstrap Template" class="img-responsive">
        </figure>
        <h2 class="heading">关于我</h3>
        <h3>rainbow</h3>
        <p>我的梦想是全栈开发，我的口号是做自己.</p>
        <ul class="fh5co-social">
            <li><a href="http://weibo.com/u/5672460634"><i class="icon-sina-weibo"></i></a></li>
            <li><a href="https://github.com/laixiangshun"><i class="icon-github-with-circle"></i></a></li>
            <li><a href="mailto:739156890@qq.com"><i class="icon-mail2"></i></a></li>
        </ul>
    </div>

    <div class="fh5co-menu">
        <div class="fh5co-box">
            <h3 class="heading">分类</h3>
            <ul>
                <li><a href="http://my.csdn.net/">博客</a></li>
                <li><a href="${path }/uploadPicture.html">上传图片</a></li>
            </ul>
        </div>
    </div>
</div>
<!-- END #fh5co-offcanvas -->
<div>
	<header id="fh5co-header">
	    <div class="container-fluid">
	        <div class="row">
	            <div class="col-lg-12 col-md-12 text-center">
	            	<!-- <a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a> -->
	                <h1 id="fh5co-logo">个人相册图片墙</h1>
	            </div>
	        </div>
	        <div class="bar">
	        	<span>欢迎你,${username}</span>&emsp;
	        	<a href="#" onclick="logout();" class="logout">退出</a>
	        </div>
	    </div>
	</header>
</div>
<div class="toggle_sidbar js-fh5co-nav-toggle">
	<span>菜单</span>
	<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
</div>
<!-- END #fh5co-header -->
<div class="container-fluid" id="content">
    <div class="row fh5co-post-entry">
        <c:forEach items="${pictures}" var="picture" varStatus="index">
        <div>
	        <article class="col-lg-3 col-md-3 col-sm-3 col-xs-6 col-xxs-12 animate-box img_show">
	            <figure>
	                <img src="${picture.picName}" alt="${picture.content}" name="picture" class="img-responsive">
	            </figure>
	            <span class="fh5co-article-title"><a href="#" onclick="single(${index.index});">${picture.content}</a></span>
	        </article>
        </div>
        </c:forEach>
    </div>
</div>
<footer id="fh5co-footer">
    <span class="footer_span">
        <small>@CopyRight Power By lailai </small><br/>
        <small>地址:孵化园软件园</small>
    </span>
</footer>


<!-- jQuery -->
<script src="${path }/js/jquery.min.js"></script>
<!-- jQuery Easing -->
<script src="${path }/js/jquery.easing.1.3.js"></script>
<!-- Bootstrap -->
<script src="${path }/js/bootstrap.min.js"></script>
<!-- Waypoints -->
<script src="${path }/js/jquery.waypoints.min.js"></script>
<!-- Main JS -->
<script src="${path }/js/main.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		footerheight();
	});
	//footer设定自适应最小高度
	function footerheight(){
		var minwidth=window.innerWidth;
		var minheight=window.innerHeight;
		var footerheight=$("#fh5co-footer").height();
		var headerheight=$("#fh5co-header").height();
		//$("#content").css("height",minheight-footerheight-headerheight+30);
		var contentheight=$("#content").height();
		$("#fh5co-footer").css("top",minheight+contentheight+30);
		//$("#fh5co-footer").css("width",minwidth);
		$("#content").css("top",headerheight+10);
	}
	//退出
	function logout(){
		var url="${path}/logout.action";
		$.ajax({
			url: url,
			cache: false,
			type: "post",
			dataType: "json",
			success: function(data){
				if(data.success==true){
					window.location.href="${path}/login.html";
				}else{
					if(data.href){
						window.location.href=data.href;
					}
					alert(data.message);
				}
			},
			error: function(responseText,textStatus,errorThrown){
				alert("退出出错\n"+responseText.status+"\n"+textStatus);
			}
		});
	}
	
	//single页面
	function single(id){
		/* $("#content img[name='picture']").each(function(){
			alert($(this).index());
			if($(this).index()==id){
				var src=this.attr("src");
				window.location.href="${path}/single.html?src="+src;
			}
		}); */
		var src=$("#content img[name='picture']:gt('"+id+"')").attr("src");
		var alt=$("#content img[name='picture']:gt('"+id+"')").attr("alt");
		window.location.href="${path}/single.html?src="+src+"&alt="+alt;
	}
</script>
</body>
</html>


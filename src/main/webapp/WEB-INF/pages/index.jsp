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

</head>
<body>
<div id="fh5co-offcanvas">
    <a href="#" class="fh5co-close-offcanvas js-fh5co-close-offcanvas"><span><i
            class="icon-cross3"></i> <span>Close</span></span></a>
    <div class="fh5co-bio">
        <figure>
            <img src="${path }/images/mine.jpg" alt="Free HTML5 Bootstrap Template" class="img-responsive">
        </figure>
        <h3 class="heading">关于我</h3>
        <h2>rainbow</h2>
        <p>我的梦想是全栈开发，我的口号是做自己.</p>
        <ul class="fh5co-social">
            <li><a href="http://weibo.com/u/2972144032"><i class="icon-sina-weibo"></i></a></li>
            <li><a href="https://github.com/Elricyo"><i class="icon-github-with-circle"></i></a></li>
            <li><a href="mailto:243991322@qq.com"><i class="icon-mail2"></i></a></li>
        </ul>
    </div>

    <div class="fh5co-menu">
        <div class="fh5co-box">
            <h3 class="heading">分类</h3>
            <ul>
                <li><a href="https://elricyo.github.io">博客</a></li>
                <li><a href="${path }/uploadPicture.html">上传图片</a></li>
            </ul>
        </div>
    </div>
</div>
<!-- END #fh5co-offcanvas -->
<header id="fh5co-header">
    <div class="container-fluid">
        <div class="row">
            <a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
            <div class="col-lg-12 col-md-12 text-center">
                <h1 id="fh5co-logo">图片墙</h1>
            </div>
        </div>
    </div>
</header>
<!-- END #fh5co-header -->
<div class="container-fluid">
    <div class="row fh5co-post-entry">
        <c:forEach items="${pictures}" var="picture">
        <div>
	        <article class="col-lg-3 col-md-3 col-sm-3 col-xs-6 col-xxs-12 animate-box">
	            <figure>
	                <img src="${picture.picName}" alt="Image" class="img-responsive">
	            </figure>
	            <h2 class="fh5co-article-title"><a href="single.jsp">${picture.content}</a></h2>
	        </article>
        </div>
        </c:forEach>
    </div>
</div>
<footer id="fh5co-footer">
    <p>
        <small>@CopyRight Power By lailai </small>
        <s
    </p>
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
</body>
</html>


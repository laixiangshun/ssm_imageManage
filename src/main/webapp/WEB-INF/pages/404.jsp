<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ included file="include/path_lib.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>404</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="description" content="404">
	<link href="${path}/css/404bootstrap.css" rel="stylesheet">
	<link href="${path }/css/404font-awesome.min.css" rel="stylesheet" />
	<link href='http://fonts.googleapis.com/css?family=Nova+Flat' rel='stylesheet' type='text/css'>
    <!-- custom CSS here -->
    <link href="${path }/css/404style.css" rel="stylesheet" />
  </head>
  
  <body>
  	<div class="container">
        <div class="row pad-top text-center">
            <div class="col-md-6 col-md-offset-3 text-center">
            	<h1>  What have you done? </h1>
              	<h5> Now Go Back Using Below LInk</h5> 
            <span id="error-link"></span>
                <h2>! ERROR DECETED !</h2>
			</div>
     	</div>
         <div class="row text-center">
            <div class="col-md-8 col-md-offset-2">
               <h3> <i  class="fa fa-lightbulb-o fa-5x"></i> </h3>
            	<a href="/" class="btn btn-primary">GO TO HOME PAGE</a>
			</div>
        </div>

    </div>
     <script src="${path }/js/404jquery-1.10.2.js"></script>
    <!--bootstrap JavaScript file  -->
    <script src="${path }/js/404bootstrap.js"></script>
     <!--Count Number JavaScript file  -->
    <script src="${path }/js/404countUp.js"></script>
       <!--Custom JavaScript file  -->
    <script src="${path }/js/404custom.js"></script>
  </body>
</html>

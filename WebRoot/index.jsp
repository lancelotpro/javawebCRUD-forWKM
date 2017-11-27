<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!-- bootstrap -->
	<link rel="stylesheet" type="text/css" href="public/bootstrap/css/bootstrap.min.css">
	<script type="text/javascript" src="public/bootstrap/js/jquery.min.js"></script>
	<script type="text/javascript" src="public/bootstrap/js/bootstrap.min.js"></script>
  </head>
  
  <body>
    	<div class="container">
    		<div class="page-header">
    			<h1>欢迎光临--王凯明！！</h1>
    		</div>
    		<a href="user/index">跳转至用户界面</a>
    	</div>
  </body>
</html>

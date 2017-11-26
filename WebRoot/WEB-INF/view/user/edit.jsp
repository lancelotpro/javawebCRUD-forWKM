<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'edit.jsp' starting page</title>
    
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
    			<h3>用户编辑页面</h3>
    		</div>
    		<a href="user/index" class="btn btn-primary">返回列表</a>
    		
    		<form:form class="form-horizontal" id="form" action="user/edit" method="post" modelAttribute="user">
    		<c:if test="${user.id != null }">
    			<form:hidden path="id"/>
    			<input type="hidden" name="_method" value="PUT">
    		</c:if>
			  <div class="form-group">
			    <label for="username" class="col-sm-2 control-label">用户名</label>
			    <div class="col-sm-10">
			      <form:input path="username" class="form-control"/>
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="password" class="col-sm-2 control-label">密码</label>
			    <div class="col-sm-10">
			      <form:password path="password" class="form-control"/>
			    </div>
			  </div>
			  <div class="form-group">
			    <div class="col-sm-offset-2 col-sm-10">
			      <button type="submit" id="submit" class="btn btn-default">提交</button>
			    </div>
			  </div>
			</form:form>
    	</div>
  </body>
</html>

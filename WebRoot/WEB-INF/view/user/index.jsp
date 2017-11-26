<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
  			<!-- 标题 -->
  			<div class="page-header">
  				<h2>用户列表</h2>
  			</div>
  			<a href="user/edit" class="btn btn-primary">+新增用户</a>
	  		<c:if test="${userlist == null || userlist.size() == 0 }">
	    		<span>没有任何记录</span>
	    	</c:if>
	    	<c:if test="${userlist != null && userlist.size() != 0 }">
	    		<br>
	    		<table class="table table-striped table-bordered table-hover">
  				<tr>
  					<th>ID</th>
  					<th>用户名</th>
  					<th>密码</th>
  					<th>创建时间</th>
  					<th>修改</th>
  					<th>删除</th>
  				</tr>
  				<c:forEach items="${userlist }" var="user">
    				<tr>
    					<td>${user.id }</td>
    					<td>${user.username }</td>
    					<td>${user.password }</td>
    					<td><fmt:formatDate value="${user.createtime }" pattern="yyyy-MM-dd hh:mm:ss"/></td>
    					<td><a href="user/edit?id=${user.id }" class="btn btn-default">编辑</a></td>
    					<td><a href="user/del/${user.id }" class="btn btn-danger">删除</a></td>
    				</tr>
    			</c:forEach>
  				</table>
    		</c:if>
  		</div>
  </body>
</html>

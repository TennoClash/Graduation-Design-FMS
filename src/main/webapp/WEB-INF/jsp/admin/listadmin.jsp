<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><jsp:include page="check_logstate.jsp"></jsp:include>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!doctype html>
<html lang="zh_CN">
<head>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>建材租赁财务管理系统</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/font-icon-style.css">
<link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
<link rel="stylesheet" href="css/form.css">
<script src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/popper/popper.min.js"></script>
<script type="text/javascript" src="js/tether.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.cookie.js"></script>
<script type="text/javascript" src="js/jquery.validate.min.js"></script>
<script type="text/javascript" src="js/chart.min.js"></script>
<script type="text/javascript" src="js/front.js"></script>
</head>
<body>
	<jsp:include page="top.jsp"></jsp:include>
	<div class="page-content d-flex align-items-stretch">
		<jsp:include page="menu.jsp"></jsp:include>
		<div class="content-inner chart-cont">
			<div class="card-header">
				<h3>系统用户·信息列表</h3>
			</div>
			<br>


			<div class="row">
				<table class="table table-hover">
					<thead>
						<tr class="bg-info text-white">
							<th class="text-center">用户名</th>
							<th class="text-center">姓名</th>
							<th class="text-center">性别</th>
							<th class="text-center">出生日期</th>
							<th class="text-center">联系方式</th>
							<th class="text-center">角色</th>
							<th class="text-center">创建日期</th>
							<th class="text-center">操作</th>
						</tr>
					</thead>
					<c:forEach items="${adminList}" var="admin">
						<tr align="center">
							<td>${admin.username}</td>
							<td>${admin.realname}</td>
							<td>${admin.sex}</td>
							<td>${admin.birthday}</td>
							<td>${admin.contact}</td>
							<td>${admin.role}</td>
							<td>${admin.addtime}</td>
							<td><a href="admin/getAdminById.action?id=${admin.adminid}">编辑</a>&nbsp;&nbsp;<a
								href="admin/deleteAdmin.action?id=${admin.adminid}"
								onclick="{if(confirm('确定要删除吗?')){return true;}return false;}">删除</a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<span style="float: left; color: red">${map.msg }</span>&nbsp;<span style="float: right;">${html}</span>
		</div>
	</div>
</body>
</html>

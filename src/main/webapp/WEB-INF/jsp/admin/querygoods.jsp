<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%><%@ taglib prefix="c"
	uri="http://java.sun.com/jsp/jstl/core"%><jsp:include page="check_logstate.jsp"></jsp:include>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%><!doctype html>
<html lang="zh_CN">
<head>
<base href="<%=basePath%>" />
<title>欢迎使用网站后台管理系统</title>
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
				<h3>建材信息列表</h3>
			</div>
			<br>


			<div class="row">
				<table class="table table-hover">
					<thead>
						<tr class="bg-info text-white">
							<th class="center">建材名称</th>
							<th class="center">建材类似</th>
							<th class="center">出租价格</th>
						</tr>
					</thead>
					<c:forEach items="${goodsList}" var="goods">
						<tr align="center">
							<td class="center">${goods.goodsname}</td>
							<td class="center">${goods.kindname}</td>
							<td class="center">${goods.price}</td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<div style="float: right;">
				<form action="goods/queryGoodsByCond.action" name="myform" method="post">
					<label>查询条件: <select name="cond" style="width: 100px">
							<option value="goodsname">按建材名称查询</option>
							<option value="kindid">按建材类似查询</option>
							<option value="image">按图片查询</option>
							<option value="price">按出租价格查询</option>
							<option value="contents">按建材介绍查询</option>
					</select>
					</label>&nbsp;&nbsp;&nbsp; <label>关键字: <input type="text" name="name" required style="width: 100px" /></label>&nbsp;&nbsp;&nbsp;
					<label><input type="submit" value="查询" class="mws-button green" /> </label>${html }
				</form>
			</div>
		</div>
	</div>
</body>
</html>

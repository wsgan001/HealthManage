<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>

<!-- 判断：如果用户登陆： 显示欢迎你，退出 -->
<!-- 判断：如果用户没有登陆： 显示登陆、注册 -->
<div align="center" style="width:80% ">

	<s:if test="#session.adminInfo != null">
		<br>
		<br>
	欢迎你： <s:property value="#session.adminInfo.adminName" /> &nbsp;
		<%-- <s:a href="nurse_viewAdd">添加护工</s:a> --%>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<s:a href="admin_login">退出</s:a>
		<br><br><br>
	</s:if>
	<s:else>
		<s:a href="../login.jsp">登陆</s:a>
		<s:a href="../register.jsp">注册</s:a>
	</s:else>
</div>

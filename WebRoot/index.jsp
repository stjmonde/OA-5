<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
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
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
  <div align="center">
  	<div>---------------------登录------------------</div>
    <form method="post" action="login_login.do">
    	账号<input type="text" name="userAccount"/></br>
    	密码<input type="password" name="password"/></br>
    	<s:if  test="hint!=1"><s:property value="hint"/></s:if></br>
    	<input type="submit" name="确定"/>
    	<s:elseif test="hint=1">
    	<script type="text/javascript">
    	var result = confirm("该账号已在其他地方登录，是否注销它");
    	if(result){
    		location.href ="main.jsp";
    	}
    	</script>
    	</s:elseif>
    </form>
    </div>
  </body>
</html>

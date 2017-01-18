<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ajax1.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
	var xmlHttpRequest = null;
	
	var ajaxSubmit=function(){	
	
		
		if(window.XMLHttpRequest){
			xmlHttpRequest = new XMLHttpRequest();
		}else{
			xmlHttpRequest = new ActiveXOject();
		}
		
		if(null != xmlHttpRequest){
			xmlHttpRequest.onreadystatechange = ajaxCallBack;
			xmlHttpRequest.open("GET", "AjaxServlet", true);
			xmlHttpRequest.send(null);
		}
	}
	function ajaxCallBack(){
		if(xmlHttpRequest.readyState==4 && xmlHttpRequest.status==200){
			alert("test");
			document.getElementById("div1").innerHTML = xmlHttpRequest.responseText;
		}
	}
	
	
	</script>
	
	
  </head>
  
  <body>
    <input type="button" value="get content from server" onclick="ajaxSubmit();">

    <div id="div1"></div>
  </body>
</html>

<%@page import="org.apache.catalina.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page session="false"%>
 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="autoPop" class="model.AutoPopulate" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="/GenNext/CssFiles/Style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript"><!--
function loading()
{

var rurl=parent.document.URL;
var lio=rurl.lastIndexOf('=');
var firstname1=rurl.substring(lio+1);
document.getElementById("tbox1").value=firstname1

}
</script>
</head>
<body onload="loading()">

						<!--<form name="form1" onsubmit="return validate()">-->
						
						
						<br><br><br><br><br><br><br><br><center>
               
     <form name="form1" action="/GenNext/TheatrePopup" method="post">
         Name: <input type="text" name="firstname" value="" id="tbox1"/><br><br>
         City: <select name="city" id="ddlist1" >
<c:forEach var="city" items="${autoPop.allCities}">
  <option value="${city}">${city}</option>
 
</c:forEach>
</select><br><br>
 <input type="submit" value="continue">
    </form>					
							
							
		
</body>
</html>
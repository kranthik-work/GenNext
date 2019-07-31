<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page session="false"%>
 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>

<jsp:useBean id="autoPop" class="model.AutoPopulate" />

<html>
<head>
<base target="_top"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hello</title>
<link href="/GenNext/CssFiles/Style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function send(crtl)
{
	var dest=crtl.src;
	var name=crtl.name;
	document.getElementById("div1").innerHTML="";
	<%String name=request.getParameter("firstname");%>
	document.getElementById("div1").innerHTML="";
	
	var i1=document.getElementById("im1");
	i1.src=dest;
	i1.height="500";
	
	i1.width="500";
        
	document.getElementById("div2").innerHTML="<iframe width='550' height='600' id='iframes1' src='/GenNext/JspPages/BookingIFrameContent.jsp' method='post'>	</iframe></center>";
	
}
</script>

</head>
<body bgcolor="black">

<table bgcolor="blue" width="100%">
<tr><td align="left"><img src="/GenNext/Images/LOGO.jpg" height="75" width="150"/></td>
<td align="right"><font color="white">Welcome <%=name %> </font></td></tr></table>
<center><img src="" width="0" height="0" id="im1">
<div id="div1">
<p>
<h1><font color="white">Now Playing</font></h1>

</p>
<marquee behavior="alternate" direction="left" scrollamount="5" onmouseover="stop()" onmouseout="start()">
<img src="/GenNext/Images/NowPlaying/1.JPG" width="300" height="300" onclick="send(this)" name="Race2"/>
<img src="/GenNext/Images/NowPlaying/2.JPG" width="300" height="300" onclick="send(this)"/>>
<img src="/GenNext/Images/NowPlaying/3.JPG" width="300" height="300" onclick="send(this)" />
<img src="/GenNext/Images/NowPlaying/4.JPG"width="300" height="300" onclick="send(this)"/>
<img src="/GenNext/Images/NowPlaying/5.JPG" width="300" height="300" onclick="send(this)"/>
<img src="/GenNext/Images/NowPlaying/6.JPG" width="300" height="300" onclick="send(this)"/>
<img src="/GenNext/Images/NowPlaying/7.JPG" width="300" height="300" onclick="send(this)"/>
<img src="/GenNext/Images/NowPlaying/8.JPG" width="300" height="300" onclick="send(this)"/>
<img src="/GenNext/Images/NowPlaying/9.JPG" width="300" height="300" onclick="send(this)"/>
<img src="/GenNext/Images/NowPlaying/10.JPG" width="300" height="300" onclick="send(this)"/>
<img src="/GenNext/Images/NowPlaying/11.JPG" width="300" height="300" onclick="send(this)" />
<img src="/GenNext/Images/NowPlaying/12.JPG" width="300" height="300" onclick="send(this)"/>
<img src="/GenNext/Images/NowPlaying/13.JPG" width="300" height="300" onclick="send(this)" />
</marquee></div>

<table align="center"">
<div id="div2">
<p>
<h1><font color="white">Upcoming</font></h1>
</p>
<marquee behavior="alternate" direction="right" scrollamount="5">
<img src="/GenNext/Images/Upcoming/1.JPG" width="300" height="300" />
<img src="/GenNext/Images/Upcoming/2.JPG" width="300" height="300" />
<img src="/GenNext/Images/Upcoming/3.JPG" width="300" height="300" />
<img src="/GenNext/Images/Upcoming/4.JPG"width="300" height="300" />
<img src="/GenNext/Images/Upcoming/5.JPG" width="300" height="300" />
<img src="/GenNext/Images/Upcoming/6.JPG" width="300" height="300" />
<img src="/GenNext/Images/Upcoming/7.JPG" width="300" height="300" />
<img src="/GenNext/Images/Upcoming/8.JPG" width="300" height="300" />
<img src="/GenNext/Images/Upcoming/9.JPG" width="300" height="300" />
<img src="/GenNext/Images/Upcoming/10.JPG" width="300" height="300" />
<img src="/GenNext/Images/Upcoming/11.JPG" width="300" height="300"  />
<img src="/GenNext/Images/Upcoming/12.JPG" width="300" height="300" />
<img src="/GenNext/Images/Upcoming/13.JPG" width="300" height="300" />
<img src="/GenNext/Images/Upcoming/14.JPG" width="300" height="300"  />
</marquee>
</div></table>
</center><br><br><br><br><br><br><br><br>

</body>
</html>
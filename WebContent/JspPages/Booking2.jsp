<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="autoPop" class="model.AutoPopulate" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
       
      <link href="/GenNext/CssFiles/Style.css" rel="stylesheet" type="text/css" />  
      
      
    </head>
    <body>
        <% String city= (String)request.getAttribute("pass");
      String name=(String) request.getParameter("firstname");
     %>
     
   <table align="center"><form name="form1" action="/GenNext/BookingServlet" method="post">
Name:<input type="text" value="<%=request.getParameter("firstname")%>" id="tbox1" readonly/><br><br>
City:<input type="text" value="<%=city%>" name="city" id="tbox1" readonly/> <br><br>
     <%if(city.equals("Chennai")){%>
  Theatre:<select name="Theatre" id="ddlist1">
<c:forEach var="Theatre" items="${autoPop.allTheatres1}">
  <option value="${Theatre}">${Theatre}</option>
</c:forEach>
</select>
<%}else if(city.equals("Delhi")){
 %>
Theatre:<select name="Theatre" id="ddlist1">
<c:forEach var="Theatre" items="${autoPop.allTheatres2}">
  <option value="${Theatre}">${Theatre}</option>
</c:forEach>
</select>

<% }else if(city.equals( "Gurgaon")){ %>
Theatre:<select name="Theatre" id="ddlist1">
<c:forEach var="Theatre" items="${autoPop.allTheatres3}">
  <option value="${Theatre}">${Theatre}</option>
</c:forEach>
</select>
<% }else if(city.equals( "Hyderabad")){ %>
Theatre:<select name="Theatre" id="ddlist1">
<c:forEach var="Theatre" items="${autoPop.allTheatres4}">
  <option value="${Theatre}">${Theatre}</option>
</c:forEach>
</select>
<% }else if(city.equals("Kolkata")){ %>
Theatre:<select name="Theatre" id="ddlist1">
<c:forEach var="Theatre" items="${autoPop.allTheatres5}">
  <option value="${Theatre}">${Theatre}</option>
</c:forEach>
</select>
<% }else{ %>
Theatre:<select name="Theatre" id="ddlist1">
<c:forEach var="Theatre" items="${autoPop.allTheatres6}">
  <option value="${Theatre}">${Theatre}</option>
</c:forEach>
</select>
<%}%><br><br>
Time:<select name="time" id="ddlist1">
<c:forEach var="time" items="${autoPop.allTime}">
  <option value="${time}">${time}</option>
</c:forEach>
</select><br><br>
Quantity:<select name="qty" id="ddlist1">
<c:forEach var="qty" items="${autoPop.allQuantity}">
  <option value="${qty}">${qty}</option>
</c:forEach>
</select><br><br>
Date:<select name="dates" id="ddlist1">
<c:forEach var="dates" items="${autoPop.allDates}">
  <option value="${dates}">${dates}</option>
</c:forEach>
</select> <br><br>
<input type="Submit" value="Proceed to Confirm Booking"/> <br><br>

      
<input type="button" value="Cancel" onclick="document.location.href='/GenNext/JspPages/Booking.jsp'" /> <br><br>
        </form></table>
    </body>
</html>

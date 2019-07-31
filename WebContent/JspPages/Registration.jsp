<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<script type="text/javascript">
	
		
        
		function ClearText(ctrl, value) {
            if (value == "B") {
                if (ctrl.value == "Password") {
                    ctrl.value = "";
                }
            }    
        }
		
		function EnterText(ctrl, value) {
            // alert('Hi');
             if (value == "B") {
                if (ctrl.value == "") {
                    ctrl.value = "Password";
                }
            } 
        }
		
		function RValidation() 
		{
			var p1= document.form2.password.value;
			var p2=document.form2.cpassword.value;
			
			submit=true;
			
			if(p1!=p2)
				{
					alert("Password And ConfirmPassword Dosent Match");
					return submit;				
				}
			return submit;
		}
		


		</script>
<link href="/GenNext/CssFiles/Style.css" rel="stylesheet" type="text/css" />
</head>
<body bgcolor=black background="/GenNext/Images/background.jpg">
		<table bgcolor="#FFF5EE" width="100%">
			<tr><td rowspan="3"><img src="/GenNext/Images/LOGO.jpg" height="75" width="150" /></td></tr>
		</table><br><br><br><br><br><br><br>

	<table width="40%" align="center">		<td><fieldset id="fset1" style="bgcolor:black;">
			<font color="#A9A9A9" size="5"><b>Register</b></font>
							<form name="form2" action="/GenNext/RegistrationServlet" onsubmit="return RValidation()" method="post">
							<font id="tfor" size="3">Name:</font> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="tbox1" type="text" name ="firstname" value=<%= request.getParameter("firstname") %> onblur="javascript:EnterText(this,'A');" onfocus="javascript:ClearText(this,'A');"/><br><br>
							<font id="tfor" size="3">Email ID:</font> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="tbox1" type="text" name ="Emid" value=<%= request.getParameter("Emid") %> onblur="javascript:EnterText(this,'D');" onfocus="javascript:ClearText(this,'D')";/><br><br>
							<font id="tfor" size="3">Mobile:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font> <input id="tbox1" type="text" name ="mobile" value=<%= request.getParameter("mobile") %> onblur="javascript:EnterText(this,'C');" onfocus="javascript:ClearText(this,'C');"/><br><br>
							<font id="tfor" size="3">Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font> <input id="tbox1" type="Password" name ="password" value="Password" onblur="javascript:EnterText(this,'B');" onfocus="javascript:ClearText(this,'B');"/><br><br>
							<font id="tfor" size="3">Confirm Password:</font> <input id="tbox1" type="Password" name ="cpassword" value="Password" onblur="javascript:EnterText(this,'B');" onfocus="javascript:ClearText(this,'B');"/><br>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<ccenter><input type="submit" value="submit" align="right"></center></form>
		</fieldset></td></table>
			
</body>
</html>
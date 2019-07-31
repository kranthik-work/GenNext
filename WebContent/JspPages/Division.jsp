<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<script type="text/javascript">
	
		function validate()
		{
			var submit=true;
			var name=document.form1.firstname.value;
			if(name=="Guest")
				{
				alert("Please Enter A Valid Name");
				
			submit=false;
				}
			else {

			submit= true;
			}
			return submit;
		}
		
		function RValidation()
		{
			var fname= document.form2.firstname.value;
			var eid= document.form2.Emid.value;
			var mno=document.form2.mobile.value;
			var submit=true;
			var pattern=/^[A-Za-z\s]*$/;
			var pattern5=/^[A-Za-z0-9]+[\@a-z]+[\.a-z]*$/;
			var pattern2=/^[0-9]+$/;
			
			
			
			if((fname.match(pattern))&&(fname.length>0)&&(fname.length<30))
			{

			}
			else
			{
			alert("Please Enter A Valid Name. A maximum of 30 characters are allowed. No numerals allowed.");
			submit=false;
			}
			if((mno.match(pattern2))&& mno.length==10)
				{}
			else
				{
				alert("Please Enter A Valid Mobile Number");
				submit=false;
				}
			
			if(eid.match(pattern5))
			{
			}
			else
			{
			alert("Please enter a valid email-id");
			submit=false;
			}
			return submit;
		}
		
        
		function ClearText(ctrl, value) {
            // alert('Hi');
            if (value == "A") {
                if (ctrl.value == "User Name") {
                    ctrl.value = "";
                }
            } else if (value == "B") {
                if (ctrl.value == "Password") {
                    ctrl.value = "";
                }

            }else if (value == "C") {
                if (ctrl.value == "Mobile") {
                    ctrl.value = "";
                }
            }else if (value == "D") {
                if (ctrl.value == "Email ID") {
                    ctrl.value = "";
                }
            }else if (value == "E") {
                if (ctrl.value == "Guest") {
                    ctrl.value = "";
                }
            }

        }
		
		function EnterText(ctrl, value) {
            // alert('Hi');
            if (value == "A") {
                if (ctrl.value == "") {
                    ctrl.value = "User Name";
                }
            } else if (value == "B") {
                if (ctrl.value == "") {
                    ctrl.value = "Password";
                }

            } else if (value == "C") {
                if (ctrl.value == "") {
                    ctrl.value = "Mobile";
                }

            } else if (value == "D") {
                if (ctrl.value == "") {
                    ctrl.value = "Email ID";
                }
            }else if (value == "E") {
                if (ctrl.value == "") {
                    ctrl.value = "Guest";
                }
            }
            
        }
		


		</script>
<title>Insert title here</title>
<link href="/GenNext/CssFiles/Style.css" rel="stylesheet" type="text/css" />
</head>
<body bgcolor="#800000">
		<table bgcolor="#FFF5EE" width="100%">
			<tr><td rowspan="3"><img src="/GenNext/Images/LOGO.jpg" height="75" width="150" /></td></tr>
		</table>
<br><br><br><br><br><br><br>
	<table align=center>
			<tr>
					<td><img alt="hello" src="/GenNext/Images/home.jpg" height=475 width=550></td>
					
					<td><fieldset id="fset1">
					
							<font color="#A9A9A9" size="5">Quick Book</font> <br><!--
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							--><form name="form1" onsubmit="return validate()"action="/GenNext/JspPages/Booking.jsp">
							<font id="tfor" size="3">Name: &nbsp;</font><input type="text" name="firstname" value="Guest" id="tbox1" onblur="javascript:EnterText(this,'E');" onfocus="javascript:ClearText(this,'E');">
							<!--<select id="ddlist1" name="city" >
							<option value="1">---Select your City--</option>
							<option value="2">Ahmedabad</option>
							<option value="3">Bengaluru</option>
							<option value="4">Chennai</option>
							<option value="5">Delhi</option>
							<option value="6">Faridabad</option>
							<option value="7">Gurgaon</option>
							<option value="8">Hyderabad</option>
							<option value="9">Indore</option>
							<option value="10">Jaipur</option>
							<option value="11">Kolkata</option>
							<option value="12">Lucknow</option>
							<option value="13">Mumbai</option>
							<option value="14">Nasik</option>
							</select><br>--><br><br>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<ccenter><input type="submit" value="Proceed As Guest"/></center>
							</form>
							
						</fieldset></br>
						
						<fieldset id="fset1">
							<font color="#A9A9A9" size="5"><b>Register</b></font>
							<form name="form2" action="/GenNext/JspPages/Registration.jsp" onsubmit="return RValidation()" method="post">
							<font id="tfor" size="3">Name:</font> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="tbox1" type="text" name ="firstname" value="User Name" onblur="javascript:EnterText(this,'A');" onfocus="javascript:ClearText(this,'A');"/><br><br>
							<font id="tfor" size="3">Email ID:</font> &nbsp;&nbsp;<input id="tbox1" type="text" name ="Emid" value="Email ID" onblur="javascript:EnterText(this,'D');" onfocus="javascript:ClearText(this,'D')";/><br><br>
							<font id="tfor" size="3">Mobile:</font> <input id="tbox1" type="text" name ="mobile" value="Mobile" onblur="javascript:EnterText(this,'C');" onfocus="javascript:ClearText(this,'C');"/><br>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							
							<ccenter><input type="submit" value="submit" align="right"></center></form>
						</fieldset></br>
						
						<fieldset id="fset1">
							<font color="#A9A9A9" size="5"><b>Login</b></font>
							<form name="form3" action="/GenNext/LoginValidations" method="post">
							<font id="tfor" size="3">User Name:</font> <input id="tbox1" type="text" name ="firstname" value="User Name" onblur="javascript:EnterText(this,'A');" onfocus="javascript:ClearText(this,'A');"/><br><br>
							<font id="tfor" size="3">Password:</font> &nbsp;&nbsp;&nbsp;<input id="tbox1" type="password" name ="password" value="Password"onblur="javascript:EnterText(this,'B');" onfocus="javascript:ClearText(this,'B');"/><br>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<ccenter><input type="submit" value="Login"></center>
							</form>
						</fieldset></br>
					</td>	
			</tr>
	</table>
	
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<font color=white>@ 2012 GenNext India Ltd</font>
	<p><marquee behavior="alternate"><h3><font color="white">Register for exciting offers. Pre-book and get a complementary meal.</font></h3></marquee></p>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">function ClearText(ctrl, value) {
            // alert('Hi');
            if (value == "A") {
                if (ctrl.value == "1") {
                    ctrl.value = "";
                }
            } 

        }
		
		function EnterText(ctrl, value) {
            // alert('Hi');
            if (value == "A") {
                if (ctrl.value == "") {
                    ctrl.value = "1";
                }
            } 
            
        }
		</script>
		<link href="/GenNext/CssFiles/Style.css" rel="stylesheet" type="text/css" />
</head>
<body>

		<form name="form1" onsubmit="return validate()">
						
						<br><br><br><br><br><br><br><br><center>
							<font color="#A9A9A9" size="5">Item 1: </font>&nbsp;&nbsp;
							<select id="ddlist1" name="Item1" >
							<option value="1">---Select Item--</option>
							<option value="2">Ahmedabad</option>
							<option value="3">Bengaluru</option>
							<option value="4">Chennai</option>
							<option value="5">Delhi</option>
							<option value="6">Faridabad</option>
							<option value="7">Gurgaon</option>
							<option value="8">Hyderabad</option>
							</select>
							Quantity:</font> &nbsp;<input id="tbox1" type="text" name ="iq1" value="1" onblur="javascript:EnterText(this,'A');" onfocus="javascript:ClearText(this,'A');"/>
							<br> <br>
							
							<font color="#A9A9A9" size="5">Item 2: </font>
							<select id="ddlist1" name="Item2" >
							<option value="1">---Select Item--</option>
							<option value="2">Ahmedabad</option>
							<option value="3">Bengaluru</option>
							<option value="4">Chennai</option>
							<option value="5">Delhi</option>
							<option value="6">Faridabad</option>
							<option value="7">Gurgaon</option>
							<option value="8">Hyderabad</option>
							</select>
							Quantity:</font> &nbsp;<input id="tbox1" type="text" name ="iq2" value="1" onblur="javascript:EnterText(this,'A');" onfocus="javascript:ClearText(this,'A');"/>
							<br> <br>
							
							<font color="#A9A9A9" size="5">Item 3: </font>
							<select id="ddlist1" name="Item3" >
							<option value="1">---Select Item--</option>
							<option value="2">Ahmedabad</option>
							<option value="3">Bengaluru</option>
							<option value="4">Chennai</option>
							<option value="5">Delhi</option>
							<option value="6">Faridabad</option>
							<option value="7">Gurgaon</option>
							<option value="8">Hyderabad</option>
							</select>
							Quantity:</font> &nbsp;<input id="tbox1" type="text" name ="iq3" value="1" onblur="javascript:EnterText(this,'A');" onfocus="javascript:ClearText(this,'A');"/>
							<br> <br>
							
							<font color="#A9A9A9" size="5">Item 4: </font>
							<select id="ddlist1" name="Item4" >
							<option value="1">---Select Item--</option>
							<option value="2">Ahmedabad</option>
							<option value="3">Bengaluru</option>
							<option value="4">Chennai</option>
							<option value="5">Delhi</option>
							<option value="6">Faridabad</option>
							<option value="7">Gurgaon</option>
							<option value="8">Hyderabad</option>
							</select>
							Quantity:</font> &nbsp;<input id="tbox1" type="text" name ="iq4" size=10 value="1" onblur="javascript:EnterText(this,'A');" onfocus="javascript:ClearText(this,'A');"/>
							<br> <br> <br>
							
							
							<ccenter><input type="submit" value="Book"/></center>
					</form></center>
		

</body>
</html>
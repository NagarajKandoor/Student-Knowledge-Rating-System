<%@page import="com.google.appengine.api.datastore.Query"%>
<%@page import="com.google.appengine.api.datastore.KeyFactory"%>
<%@page import="com.google.appengine.api.datastore.*"%>
<%@page import="java.util.*"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style type="text/css">
body {
background-color: #f4f4f4;
color: #5a5656;
font-family: 'Open Sans', Arial, Helvetica, sans-serif;
font-size: 16px;
line-height: 1.5em;
}
a { text-decoration: none; }
h1 { font-size: 1em; }
h1, p {
margin-bottom: 10px;
}
strong {
font-weight: bold;
}
.uppercase { text-transform: uppercase; }

/* ---------- LOGIN ---------- */
#login {
margin: 50px auto;
width: 300px;
}
form fieldset input[type="text"], input[type="password"] {
background-color: #e5e5e5;
border: none;
border-radius: 3px;
-moz-border-radius: 3px;
-webkit-border-radius: 3px;
color: #5a5656;
font-family: 'Open Sans', Arial, Helvetica, sans-serif;
font-size: 14px;
height: 50px;
outline: none;
padding: 0px 10px;
width: 280px;
-webkit-appearance:none;
}
form fieldset input[type="submit"] {
background-color: #008dde;
border: none;
border-radius: 3px;
-moz-border-radius: 3px;
-webkit-border-radius: 3px;
color: #f4f4f4;
cursor: pointer;
font-family: 'Open Sans', Arial, Helvetica, sans-serif;
height: 50px;
text-transform: uppercase;
width: 300px;
-webkit-appearance:none;
}
form fieldset a {
color: #5a5656;
font-size: 10px;
}
form fieldset a:hover { text-decoration: underline; }
.btn-round {
background-color: #5a5656;
border-radius: 50%;
-moz-border-radius: 50%;
-webkit-border-radius: 50%;
color: #f4f4f4;
display: block;
font-size: 12px;
height: 50px;
line-height: 50px;
margin: 30px 125px;
text-align: center;
text-transform: uppercase;
width: 50px;
}


</style>


<%!
String login,password,name,email,cellphone;
String msg;
public void fetch(HttpServletRequest request){
	try{
	
		login=request.getParameter("txt_login");
		password=request.getParameter("txt_passwprd");
		name=request.getParameter("txt_name");
		email=request.getParameter("txt_email");
		cellphone=request.getParameter("txt_cellphone");

	}catch(Exception e){
		msg=e.getMessage();
	}
		
	
}
public void insert(){
	try{
		
		
		Entity user=new Entity("StudentDeatils");
		
		user.setProperty("Login_id", login);
		user.setProperty("Password", password);
		user.setProperty("Name", name);
		user.setProperty("Email", email);
		user.setProperty("Cellphone", cellphone);
		
		DatastoreService datastore=DatastoreServiceFactory.getDatastoreService();
		
		datastore.put(user);
		
		msg="Your Registration done successfully";
		
	}catch(Exception e){
		msg=e.getMessage();
		
	}
}
%>
<% if(request.getParameter("btn_submit")!=null){
	fetch(request);
	insert();
//	response.getWriter().println(msg);
	}


%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Student Registration</title>
</head>
<body>
<table width="98">
    <tr><td><img src="images/logo.gif" width="1348" height="146" /></td>
</tr>
</table>
<form method="post" action="Registration.jsp">
<h1 align="right"><a href="Home.html">Back</a></h1>
<div id="login">
<h1><strong>Welcome.</strong> Please Register.</h1>

<fieldset>
<p><input type="text" name="txt_login" value="Username" onBlur="if(this.value=='')this.value='Username'" onFocus="if(this.value=='Username')this.value='' "
onkeypress="return csnum(event)"></p>

<p><input type="password" name="txt_passwprd" value="Password" onBlur="if(this.value=='')this.value='Password'" onFocus="if(this.value=='Password')this.value='' "
onkeypress="return csnum(event)"></p>

<p><input type="text" name="txt_name" value="Name" onBlur="if(this.value=='')this.value='Name'" onFocus="if(this.value=='Name')this.value='' "
onkeypress="return onlchar(event)"></p>

<p><input type="text" name="txt_email" value="E-Mail" onBlur="if(this.value=='')this.value='E-Mail'" onFocus="if(this.value=='E-Mail')this.value='' "
onkeypress="return csnum(event)"></p>

<p><input type="text" name="txt_cellphone" value="Mobile-Number" onBlur="if(this.value=='')this.value='Mobile-Number'" onFocus="if(this.value=='Mobile-Number')this.value='' "
onkeypress="return onlnum(event)" maxlength="10"></p>

<p><input type="submit" name="btn_submit"></p>
</fieldset>
</div>





</form>

    <script>
            <%if(request.getParameter("btnsub123")!=null){%>
                alert("<%=msg%>");
                <%}%>
      </script>
        <script type="text/javascript">
            function bsnum(e) {
    var k;
    document.all ? k = e.keyCode : k = e.which;
    
    if( k === 8 || k === 32 || k===9 || (k >= 48 && k <= 57))
    {
    return true;
}
    else
    {
    alert("Enter vaild no");
    return false;
}
            }
 function csnum(e) {
    var k;
    document.all ? k = e.keyCode : k = e.which;
    if( ((k => 64 && k < 91) || (k > 96 && k < 123) || k===9 || k===44 || k===46 || k === 8 || k === 32 || (k >= 48 && k <= 57)))
    {
        return true;
    }
    else
    {
         alert(" special charcater not allowed");
    return false;
        
    }
}


function onlnum(e) {
    var k;
    document.all ? k = e.keyCode : k = e.which;
    if( k >= 48 && k <= 57)
    {
        return true;
    }
    else
    {
         alert("Enter only Numbers");
    return false;
        
    }
}
function onlchar(e) {
    var k;
    document.all ? k = e.keyCode : k = e.which;
    if( k >= 65 && k <= 90 || k > 96 && k < 123)
    {
        return true;
    }
    else
    {
         alert("Enter only charecters");
    return false;
        
    }
}

  </script>
<script type="text/javascript">
<%
if(request.getParameter("btn_submit")!=null)
{
%>
	alert("<%=msg%>");
<%	} %>
</script>

<%-- <a href="Customer.jsp">To go Back click here</a> --%>

</body>
</html>
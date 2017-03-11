
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
	String login,password;
	String msg;
	
	String login1,password1;
	
	public void fetch(HttpServletRequest request){
		try{
			login=request.getParameter("txt_login");
			password=request.getParameter("txt_password");
			
			
	         HttpSession obj=request.getSession(true);
	         obj.setAttribute("session_loginid", login);
	         obj.setAttribute("session_pwd", password);
				
		}
		catch(Exception e){
			msg=e.getMessage();
		}
	}
		
	public void select(HttpServletResponse response){
			try{
				
				/* Key dbkey=KeyFactory.createKey("Customer", "login" ); */
				
				
			
				DatastoreService datastore=DatastoreServiceFactory.getDatastoreService();
				
				
				Query query=new Query("StudentDeatils");
				
				PreparedQuery pq=datastore.prepare(query);
				
				List<Entity> studentDeatils=pq.asList(FetchOptions.Builder.withDefaults());
				
				
				for(Entity StudentDeatils : pq.asIterable()){
					
					login1=(String)StudentDeatils.getProperty("Login_id");
					password1=(String)StudentDeatils.getProperty("Password");
	
		
				}
				if(login1!=null && password1!=null && login.equalsIgnoreCase(login1) && password.equalsIgnoreCase(password1)){
					response.sendRedirect("student_home.jsp");
					
				}
				else{
				msg="User Name or Password are mismatched";
				}
		
				}
	
				catch(Exception e){
				msg=e.getMessage();
			}
	}
			
	
%>


<%
		if(request.getParameter("btn_submit")!=null){
			fetch(request);
			select(response);

		
			
		}


%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to Student</title>
</head>
<body>
<table width="98">
    <tr><td><img src="images/logo.gif" width="1348" height="146" /></td>
</tr>
</table>
    
     



<form method="post" action="Studentlogin.jsp">
<h1 align="right"><a href="Home.html">Back</a></h1>
<div id="login">
<h1><strong>Welcome.</strong> Please login.</h1>

<fieldset>
<p><input type="text" name="txt_login" value="Username" onBlur="if(this.value=='')this.value='Username'" onFocus="if(this.value=='Username')this.value='' "
onkeypress="return csnum(event)"></p>
<p><input type="password" name="txt_password" value="Password" onBlur="if(this.value=='')this.value='Password'" onFocus="if(this.value=='Password')this.value='' "
onkeypress="return csnum(event)"></p>
<p><input type="submit" name="btn_submit"></p>
</fieldset>
</div>


</form>
<script>  
 function myFunction()  
 {  
 window.open("Registration.jsp","_blank","toolbar=yes, scrollbars=yes, resizable=yes, top=0, left=200, width=600, height=600");  
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
</body>
</html>
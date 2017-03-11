'<%@page import="org.apache.jasper.tagplugins.jstl.core.Catch"%>
<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.google.appengine.api.datastore.Query"%>
<%@page import="com.google.appengine.api.datastore.KeyFactory"%>
<%@page import="com.google.appengine.api.datastore.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<%!
int i;
int sem=0,cat1,cat2,cat3;
String semester="";
String subject_name="";
int finalgrade;
String usn="",subject="";
String msg="";
String subname="";
public void input(HttpServletRequest request){
	usn=request.getParameter("txtusn").toString().trim();
	subject=request.getParameter("txtsubject").toString().trim();
	cat1=Integer.parseInt(request.getParameter("txtcat1").toString().trim());
	cat2=Integer.parseInt(request.getParameter("txtcat2").toString().trim());
	cat3=Integer.parseInt(request.getParameter("txtcat3").toString().trim());
	finalgrade=Integer.parseInt(request.getParameter("txtgrade").trim());
	}
public void insert(){
	
	try{
		Entity studdetails=new Entity("AcademicDetails");
		
		studdetails.setProperty("USN", usn);
		studdetails.setProperty("Subject", subject);
		studdetails.setProperty("CAT1", cat1);
		studdetails.setProperty("CAT2", cat2);
		studdetails.setProperty("CAT3", cat3);
		studdetails.setProperty("Grade", finalgrade);
		
		DatastoreService datastore=DatastoreServiceFactory.getDatastoreService();
		
		datastore.put(studdetails);
		
		msg="Your Insertion done successfully";
		
	}catch(Exception e){
		msg=e.getMessage();
		
	}

}
%>
    

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert Semester and its marks</title>
</head>
<body>
<table width="98">
    <tr><td><img src="images/logo.gif" width="1348" height="146" /></td>
</tr>
</table>
      <table align="center"><tr><td bgcolor="#CCFF66" width="165">Student-HOME-PAGE</td></tr></table>

<form method="post" action="HomeStudent.jsp">
<h1 align="right"><a href="student_home.jsp">Back</a></h1>

<%--  <table border="1" align="center" bordercolor="#AFBCE8" >
<tr><td>Subject Names</td></tr>

<%
	  
	  	DatastoreService datastore = DatastoreServiceFactory.getDatastoreService(); 
		Query q2=new Query("Details3Sem");
	  	PreparedQuery pq= datastore.prepare(q2);
	 	for(Entity DetailsSem:pq.asIterable()){
	    String subject_name=DetailsSem.getProperty("name").toString();
%>
<tr>
<td><%=subject_name %></td></tr></table>
	<% } %> --%>

<table border="1" align="center"  bordercolor="#AFBCE8">
				
				
<%if(request.getParameter("btnsubmit")!=null)
{
	input(request);
	insert();				
					
}
				
				%>
				
<tr>
  <td>Enter Subject Name</td>
                    <td colspan="2"><select name="txtsubject" size="1">
                            <option value="sel">SELECT</option>
                            <option value="dms">DMS</option>
                            <option value="fafl">FAFL</option>
                             <option value="ada">ADA</option>
                             <option value="ds">Data Structures</option>
                              <option value="se">Software Engineering</option>
                            <option value="oomd">OOMD</option>
                            <option value="cn">Computer Network</option>
                             <option value="dbms">DBMS</option>
                            <option value="os">Operating System</option>
                            <option value="aoop">Advanced Object Oriented Programming</option>
                            <option value="ads">ADS</option>
                             
                        </select>
                    </td>
 </tr>
<tr>		
 <td>Enter CAT1 marks </td>
 <td><input type="text" name="txtcat1" onkeypress="return onlnum(event)" maxlength="2"/></td>
</tr>
<tr>		
 <td>Enter CAT2 marks</td>
 <td><input type="text" name="txtcat2" onkeypress="return onlnum(event)"maxlength="2"/></td>
</tr>
<tr>		
 <td>Enter CAT3 marks</td>
 <td><input type="text" name="txtcat3" onkeypress="return onlnum(event)" maxlength="2"/></td>
</tr>
<tr>
<td>Enter USN</td>
<td><input type="text" name="txtusn" onkeypress="return csnum(event)" maxlength="10"/></td></tr>				
<tr>
<td>Enter Final Grade</td>
<td>
<select name="txtgrade">
<option value="100">S</option>
<option value="90">A</option>
<option value="80">B</option>
<option value="70">C</option>
<option value="50">D</option>
<option value="35">E</option>
</select></td>
</tr>

<tr><td></td><td><input type="submit" name="btnsubmit"></td></tr>
				</table></form>
				
				
<script type="text/javascript">
<%
if(request.getParameter("btnsubmit")!=null)
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
    if( ((k > 64 && k < 91) || (k > 96 && k < 123) || k===9 || k===44 || k===46 || k === 8 || k === 32 || (k >= 48 && k <= 57)))
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
				
				</body></html>
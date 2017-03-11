<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.google.appengine.api.datastore.Query"%>
<%@page import="com.google.appengine.api.datastore.KeyFactory"%>
<%@page import="com.google.appengine.api.datastore.*"%>
<%@page import="java.util.*"%>


<%-- <%@page import="yahoofinance.Stock"%>
<%@page import="yahoofinance.YahooFinance"%>
<%@page import="java.util.Map"%>
 --%>

 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Rating allocation</title>
</head>
<body>
<table width="98">
    <tr><td><img src="images/logo.gif" width="1348" height="146" /></td>
</tr>
</table>
      <table align="center"><tr><td bgcolor="#CCFF66" width="165">Student-HOME-PAGE</td></tr></table>


<form method="post" action="/Rating.jsp">
<h1 align="right"><a href="student_home.jsp">Back</a></h1>
<table  border="1" border="1" align="center">
<tr>
<td>Enter USN</td>
<td><input type="text" name="txtusn" required=""></td>
</tr>
<tr>
<td></td>
<td><input type="submit" name="btnsubmit"></td>
</tr>
</table>
</form>
<%!
String usn="";
Double rating=0.0;



Double cat1marks=0.0,cat2marks=0.0,cat3marks=0.0,gradeTemp=0.0;
Double finalmarks;

Double finalstock=0.0;
public void fetch(HttpServletRequest request){
	usn=request.getParameter("txtusn").toString().trim();
}
%>
<table align="center" border="1" cellspacing="12"><tr><td>Your details</td></tr>
<tr><td>CAT1</td><td>CAT2</td><td>CAT3</td><td>SUBJECT</td><td>Grade</td></tr>

<%if(request.getParameter("btnsubmit")!=null){
	Double ratingADA=0.0;
	Double ratingFAFAL=0.0;
	Double ratingSE=0.0;
	Double ratingOOMD=0.0;
	Double ratingDS=0.0;
	Double ratingDMS=0.0;
	Double ratingDBMS=0.0;
	fetch(request);
	//LiveStock();
	DatastoreService datastore = DatastoreServiceFactory.getDatastoreService(); 
	Query q2=new Query("AcademicDetails");
	PreparedQuery pq= datastore.prepare(q2);
	for(Entity Details:pq.asIterable()){
	String usnnew=Details.getProperty("USN").toString();
	
	if(usnnew.equalsIgnoreCase(usn)){
	String cat1=Details.getProperty("CAT1").toString();	
	String cat2=Details.getProperty("CAT2").toString();
	String cat3=Details.getProperty("CAT3").toString();
	String grade=Details.getProperty("Grade").toString();
	String subject=Details.getProperty("Subject").toString();
	if(subject.equalsIgnoreCase("dms")){
		
		cat1marks=cat1marks+(Double.parseDouble(cat1.trim()));
		cat2marks=cat2marks+(Double.parseDouble(cat2.trim()));
		cat3marks=cat3marks+(Double.parseDouble(cat3.trim()));
		
		finalmarks=cat1marks+cat2marks+cat3marks;
		
		gradeTemp=Double.parseDouble(grade);
		
		finalmarks=finalmarks+gradeTemp;
		if(finalmarks == 160 || finalmarks<=150){
			ratingDMS=2.0;
		}
		else if( finalmarks >=140 && finalmarks<= 150){
			ratingDMS=ratingDMS+1.9;
			
		}
		else if (finalmarks>=130 && finalmarks <=140){
			ratingDMS=ratingDMS+1.8;
		}
		else if (finalmarks>=120 && finalmarks <=130){
			ratingDMS=ratingDMS+1.7;
		}
		else if (finalmarks>=100 && finalmarks <=120){
			ratingDMS=ratingDMS+1.5;
		}
		else if (finalmarks>=55 && finalmarks <=100){
			ratingDMS=ratingDMS+1.25;
		}
		else{ ratingDMS=10.0;}
		
	}
	else if(subject.equalsIgnoreCase("oomd")){
		
		cat1marks=cat1marks+Double.parseDouble(cat1.trim());
		cat2marks=cat2marks+Double.parseDouble(cat2.trim());
		cat3marks=cat3marks+Double.parseDouble(cat3.trim());
		finalmarks=cat1marks+cat2marks+cat3marks;
		gradeTemp=Double.parseDouble(grade);
		finalmarks=finalmarks+gradeTemp;
		if(finalmarks == 160 || finalmarks<=150){
			ratingOOMD=1.0;
		}
		else if( finalmarks >=140 && finalmarks<= 150){
			ratingOOMD=ratingOOMD+0.9;
			
		}
		else if (finalmarks>=130 && finalmarks <=140){
			ratingOOMD=ratingOOMD+0.8;
		}
		else if (finalmarks>=120 && finalmarks <=130){
			ratingOOMD=ratingOOMD+0.7;
		}
		else if (finalmarks>=100 && finalmarks <=120){
			ratingOOMD=ratingOOMD+0.5;
		}
		else if (finalmarks>=55 && finalmarks <=100){
			ratingOOMD=ratingOOMD+0.25;
		}
		else{ ratingOOMD=10.0;}

			
		
	}
	
	else if(subject.equalsIgnoreCase("se")){
		
		cat1marks=cat1marks+Double.parseDouble(cat1.trim());
		cat2marks=cat2marks+Double.parseDouble(cat2.trim());
		cat3marks=cat3marks+Double.parseDouble(cat3.trim());
		finalmarks=cat1marks+cat2marks+cat3marks;
		gradeTemp=Double.parseDouble(grade);
		finalmarks=finalmarks+gradeTemp;
		if(finalmarks == 160 && finalmarks<=150){
			rating=1.0;
		}
		else if( finalmarks >=140 && finalmarks<= 150){
			rating=rating+0.9;
			
		}
		else if (finalmarks>=130 && finalmarks <=140){
			rating=rating+0.8;
		}
		else if (finalmarks>=120 && finalmarks <=130){
			rating=rating+0.7;
		}
		else if (finalmarks>=100 && finalmarks <=120){
			rating=rating+0.5;
		}
		else if (finalmarks>=55 && finalmarks <=100){
			rating=rating+1.0;
		}
		
		}
	
else if(subject.equalsIgnoreCase("ds")){
		
		cat1marks=cat1marks+Double.parseDouble(cat1.trim());
		cat2marks=cat2marks+Double.parseDouble(cat2.trim());
		cat3marks=cat3marks+Double.parseDouble(cat3.trim());
		finalmarks=cat1marks+cat2marks+cat3marks;
		gradeTemp=Double.parseDouble(grade);
		finalmarks=finalmarks+gradeTemp;
		if(finalmarks == 160 && finalmarks<=150){
			rating=1.0;
		}
		else if( finalmarks >=140 && finalmarks<= 150){
			rating=rating+0.9;
			
		}
		else if (finalmarks>=130 && finalmarks <=140){
			rating=rating+0.8;
		}
		else if (finalmarks>=120 && finalmarks <=130){
			rating=rating+0.7;
		}
		else if (finalmarks>=100 && finalmarks <=120){
			rating=rating+0.5;
		}
		else if (finalmarks>=55 && finalmarks <=100){
			rating=rating+1.0;
		}
		
		}
	
	
	
else if(subject.equalsIgnoreCase("ada")){
	
	cat1marks=cat1marks+Double.parseDouble(cat1.trim());
	cat2marks=cat2marks+Double.parseDouble(cat2.trim());
	cat3marks=cat3marks+Double.parseDouble(cat3.trim());
	finalmarks=cat1marks+cat2marks+cat3marks;
	gradeTemp=Double.parseDouble(grade);
	finalmarks=finalmarks+gradeTemp;
	if(finalmarks == 160 && finalmarks<=150){
		rating=1.0;
	}
	else if( finalmarks >=140 && finalmarks<= 150){
		rating=rating+0.9;
		
	}
	else if (finalmarks>=130 && finalmarks <=140){
		rating=rating+0.8;
	}
	else if (finalmarks>=120 && finalmarks <=130){
		rating=rating+0.7;
	}
	else if (finalmarks>=100 && finalmarks <=120){
		rating=rating+0.5;
	}
	else if (finalmarks>=55 && finalmarks <=100){
		rating=rating+1.0;
	}
	
	}

	
	
else if(subject.equalsIgnoreCase("cn")){
	
	cat1marks=cat1marks+Double.parseDouble(cat1.trim());
	cat2marks=cat2marks+Double.parseDouble(cat2.trim());
	cat3marks=cat3marks+Double.parseDouble(cat3.trim());
	finalmarks=cat1marks+cat2marks+cat3marks;
	gradeTemp=Double.parseDouble(grade);
	finalmarks=finalmarks+gradeTemp;
	if(finalmarks == 160 && finalmarks<=150){
		rating=1.0;
	}
	else if( finalmarks >=140 && finalmarks<= 150){
		rating=rating+0.9;
		
	}
	else if (finalmarks>=130 && finalmarks <=140){
		rating=rating+0.8;
	}
	else if (finalmarks>=120 && finalmarks <=130){
		rating=rating+0.7;
	}
	else if (finalmarks>=100 && finalmarks <=120){
		rating=rating+0.5;
	}
	else if (finalmarks>=55 && finalmarks <=100){
		rating=rating+1.0;
	}
	
	}

	
	
else if(subject.equalsIgnoreCase("dbms")){
	
	cat1marks=cat1marks+Double.parseDouble(cat1.trim());
	cat2marks=cat2marks+Double.parseDouble(cat2.trim());
	cat3marks=cat3marks+Double.parseDouble(cat3.trim());
	finalmarks=cat1marks+cat2marks+cat3marks;
	gradeTemp=Double.parseDouble(grade);
	finalmarks=finalmarks+gradeTemp;
	if(finalmarks == 160 && finalmarks<=150){
		rating=1.0;
	}
	else if( finalmarks >=140 && finalmarks<= 150){
		rating=rating+0.9;
		
	}
	else if (finalmarks>=130 && finalmarks <=140){
		rating=rating+0.8;
	}
	else if (finalmarks>=120 && finalmarks <=130){
		rating=rating+0.7;
	}
	else if (finalmarks>=100 && finalmarks <=120){
		rating=rating+0.5;
	}
	else if (finalmarks>=55 && finalmarks <=100){
		rating=rating+1.0;
	}
	
	}

	
	
	
else if(subject.equalsIgnoreCase("cd")){
	
	cat1marks=cat1marks+Double.parseDouble(cat1.trim());
	cat2marks=cat2marks+Double.parseDouble(cat2.trim());
	cat3marks=cat3marks+Double.parseDouble(cat3.trim());
	finalmarks=cat1marks+cat2marks+cat3marks;
	gradeTemp=Double.parseDouble(grade);
	finalmarks=finalmarks+gradeTemp;
	if(finalmarks == 160 && finalmarks<=150){
		rating=1.0;
	}
	else if( finalmarks >=140 && finalmarks<= 150){
		rating=rating+0.9;
		
	}
	else if (finalmarks>=130 && finalmarks <=140){
		rating=rating+0.8;
	}
	else if (finalmarks>=120 && finalmarks <=130){
		rating=rating+0.7;
	}
	else if (finalmarks>=100 && finalmarks <=120){
		rating=rating+0.5;
	}
	else if (finalmarks>=55 && finalmarks <=100){
		rating=rating+1.0;
	}
	
	}

	
	
	
else if(subject.equalsIgnoreCase("ads")){
	
	cat1marks=cat1marks+Double.parseDouble(cat1.trim());
	cat2marks=cat2marks+Double.parseDouble(cat2.trim());
	cat3marks=cat3marks+Double.parseDouble(cat3.trim());
	finalmarks=cat1marks+cat2marks+cat3marks;
	gradeTemp=Double.parseDouble(grade);
	finalmarks=finalmarks+gradeTemp;
	if(finalmarks == 160 && finalmarks<=150){
		rating=1.0;
	}
	else if( finalmarks >=140 && finalmarks<= 150){
		rating=rating+0.9;
		
	}
	else if (finalmarks>=130 && finalmarks <=140){
		rating=rating+0.8;
	}
	else if (finalmarks>=120 && finalmarks <=130){
		rating=rating+0.7;
	}
	else if (finalmarks>=100 && finalmarks <=120){
		rating=rating+0.5;
	}
	else if (finalmarks>=55 && finalmarks <=100){
		rating=rating+1.0;
	}
	
	}

	
	
	
else if(subject.equalsIgnoreCase("fafl")){
	
	cat1marks=cat1marks+Double.parseDouble(cat1.trim());
	cat2marks=cat2marks+Double.parseDouble(cat2.trim());
	cat3marks=cat3marks+Double.parseDouble(cat3.trim());
	finalmarks=cat1marks+cat2marks+cat3marks;
	gradeTemp=Double.parseDouble(grade);
	finalmarks=finalmarks+gradeTemp;
	if(finalmarks == 160 && finalmarks<=150){
		rating=1.0;
	}
	else if( finalmarks >=140 && finalmarks<= 150){
		rating=rating+0.9;
		
	}
	else if (finalmarks>=130 && finalmarks <=140){
		rating=rating+0.8;
	}
	else if (finalmarks>=120 && finalmarks <=130){
		rating=rating+0.7;
	}
	else if (finalmarks>=100 && finalmarks <=120){
		rating=rating+0.5;
	}
	else if (finalmarks>=55 && finalmarks <=100){
		rating=rating+1.0;
	}
	
	}

	
	
	
else if(subject.equalsIgnoreCase("aoop")){
	
	cat1marks=cat1marks+Double.parseDouble(cat1.trim());
	cat2marks=cat2marks+Double.parseDouble(cat2.trim());
	cat3marks=cat3marks+Double.parseDouble(cat3.trim());
	finalmarks=cat1marks+cat2marks+cat3marks;
	gradeTemp=Double.parseDouble(grade);
	finalmarks=finalmarks+gradeTemp;
	if(finalmarks == 160 && finalmarks<=150){
		rating=1.0;
	}
	else if( finalmarks >=140 && finalmarks<= 150){
		rating=rating+0.9;
		
	}
	else if (finalmarks>=130 && finalmarks <=140){
		rating=rating+0.8;
	}
	else if (finalmarks>=120 && finalmarks <=130){
		rating=rating+0.7;
	}
	else if (finalmarks>=100 && finalmarks <=120){
		rating=rating+0.5;
	}
	else if (finalmarks>=55 && finalmarks <=100){
		rating=rating+1.0;
	}
	
	}

	
	
	
else if(subject.equalsIgnoreCase("os")){
	
	cat1marks=cat1marks+Double.parseDouble(cat1.trim());
	cat2marks=cat2marks+Double.parseDouble(cat2.trim());
	cat3marks=cat3marks+Double.parseDouble(cat3.trim());
	finalmarks=cat1marks+cat2marks+cat3marks;
	gradeTemp=Double.parseDouble(grade);
	finalmarks=finalmarks+gradeTemp;
	if(finalmarks == 160 && finalmarks<=150){
		rating=1.0;
	}
	else if( finalmarks >=140 && finalmarks<= 150){
		rating=rating+0.9;
		
	}
	else if (finalmarks>=130 && finalmarks <=140){
		rating=rating+0.8;
	}
	else if (finalmarks>=120 && finalmarks <=130){
		rating=rating+0.7;
	}
	else if (finalmarks>=100 && finalmarks <=120){
		rating=rating+0.5;
	}
	else if (finalmarks>=55 && finalmarks <=100){
		rating=rating+1.0;
	}
	
	}


rating=ratingDMS+ratingOOMD;


%>

<tr>
<td><%=cat1 %></td>
<td><%=cat2 %></td>
<td><%=cat3 %></td>
<td><%=subject %></td>
<td><%=grade %></td>
</tr>

<tr><td><%=rating %></td></tr>
</table><% }}} %>
</body>
</html>
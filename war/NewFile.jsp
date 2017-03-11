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
int sem=0,cat;
public void display(HttpServletRequest request){
	sem=Integer.parseInt(request.getParameter("sem").toString());
	cat=Integer.parseInt(request.getParameter("cat").toString());
	
	
}

%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Enter Student Marks and CAT Exam Details</title>
</head>
<body>
	<form method="get" action="NewFile.jsp">
		<font color="#33339F">Enter Your Details</font>
		<table border="4" align="center" bordercolor="#AFBCE8" cellspacing="5"
			cellpadding="8">
			<tr>
				<td align="center">Semester <select name="sem">
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
						<option>6</option>
						<option>7</option>
						<option>8</option>
				</select>
				</td>
				<td>CAT exam<select name="cat">
						<option>1</option>
						<option>2</option>
						<option>3</option>
				</select>
				</td>
			</tr>
			<tr>
				<td><input type="submit" name="btnsubmit"></td>
			</tr>
		</table>
		<table border="1" align="left">
			<tr>
				<td>Subject Names</td>
			</tr>
<%
if(request.getParameter("btnsubmit")!=null){

	  	input(request);
		if(sem==1){
	  	DatastoreService datastore = DatastoreServiceFactory.getDatastoreService(); 
		Query q2=new Query("Details1Sem");

	  	PreparedQuery pq= datastore.prepare(q2);

	 	for(Entity Details1Sem:pq.asIterable()){
	  
	    String subject_name=Details1Sem.getProperty("name").toString();
	    String semester=Details1Sem.getProperty("sem").toString();
	    
	    if(semester.equalsIgnoreCase("1")){
	    string sme=Details1Sem.getProperty("sem").toString();
	   	}
	    }

%>
			<tr>
				<td><%=subject_name %></td>
			</tr>
			<%} }%>
			<%
if(request.getParameter("btnsubmit")!=null){

  	input(request);

		if(sem==2){
	  	DatastoreService datastore = DatastoreServiceFactory.getDatastoreService(); 
		Query q2=new Query("Details2Sem");

	  	PreparedQuery pq= datastore.prepare(q2);

	 	for(Entity Details1Sem:pq.asIterable()){
	  
	    String subject_name=Details1Sem.getProperty("name").toString();

%>
			<tr>
				<td><%=subject_name %></td>
			</tr>
			<%} }%>

			<%
if(request.getParameter("btnsubmit")!=null){

  	input(request);

		if(sem==3){
	  	DatastoreService datastore = DatastoreServiceFactory.getDatastoreService(); 
		Query q2=new Query("Details3Sem");

	  	PreparedQuery pq= datastore.prepare(q2);

	 	for(Entity Details1Sem:pq.asIterable()){
	  
	    String subject_name=Details1Sem.getProperty("name").toString();

%>
			<tr>
				<td><%=subject_name %></td>
			</tr>
			<%} }%>

			<%
if(request.getParameter("btnsubmit")!=null){

  	input(request);

		if(sem==4){
	  	DatastoreService datastore = DatastoreServiceFactory.getDatastoreService(); 
		Query q2=new Query("Details4Sem");

	  	PreparedQuery pq= datastore.prepare(q2);

	 	for(Entity Details1Sem:pq.asIterable()){
	  
	    String subject_name=Details1Sem.getProperty("name").toString();

%>
			<tr>
				<td><%=subject_name %></td>
			</tr>
			<%} } }%>

			<%
if(request.getParameter("btnsubmit")!=null){

  	input(request);

		if(sem==5){
	  	DatastoreService datastore = DatastoreServiceFactory.getDatastoreService(); 
		Query q2=new Query("Details5Sem");

	  	PreparedQuery pq= datastore.prepare(q2);

	 	for(Entity Details1Sem:pq.asIterable()){
	  
	    String subject_name=Details1Sem.getProperty("name").toString();

%>
			<tr>
				<td><%=subject_name %></td>
			</tr>
			<%} } }%>
			<%
if(request.getParameter("btnsubmit")!=null){

  	input(request);

		if(sem==6){
	  	DatastoreService datastore = DatastoreServiceFactory.getDatastoreService(); 
		Query q2=new Query("Details6Sem");

	  	PreparedQuery pq= datastore.prepare(q2);

	 	for(Entity Details1Sem:pq.asIterable()){
	  
	    String subject_name=Details1Sem.getProperty("name").toString();

%>
			<tr>
				<td><%=subject_name %></td>
			</tr>
			<%} } }%>
			<%
if(request.getParameter("btnsubmit")!=null){

  	input(request);

		if(sem==7){
	  	DatastoreService datastore = DatastoreServiceFactory.getDatastoreService(); 
		Query q2=new Query("Details7Sem");

	  	PreparedQuery pq= datastore.prepare(q2);

	 	for(Entity Details1Sem:pq.asIterable()){
	  
	    String subject_name=Details1Sem.getProperty("name").toString();

%>
			<tr>
				<td><%=subject_name %></td>
			</tr>
			<%} } }%>

			<%
if(request.getParameter("btnsubmit")!=null){

  	input(request);

		if(sem==8){
	  	DatastoreService datastore = DatastoreServiceFactory.getDatastoreService(); 
		Query q2=new Query("Details8Sem");

	  	PreparedQuery pq= datastore.prepare(q2);

	 	for(Entity Details1Sem:pq.asIterable()){
	  
	    String subject_name=Details1Sem.getProperty("name").toString();

%>
			<tr>
				<td><%=subject_name %></td>
			</tr>
			<%} }%>


			<%} %>

		</table>
		<table align="right" border="1">
<%
if(cat==3)
for(int j=1;j<=cat;j++){
%>
			<tr>
				<td>CAT<%=j %></td>
				<td><input type="text" name="txt_cat"></td>
			</tr>
			<%
}
%>
		</table>


	</form>
</body>

</html>

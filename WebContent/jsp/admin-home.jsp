<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home - Course Management System</title>

<jsp:include page="common-include.jsp" />

</head>
<body>
	<jsp:include page="common-header.jsp" />
	<jsp:include page="common-menu.jsp" />
	<div id ="studentinfo" class="container">
	  <div class="maincontent">
		<div>
	      <h2>Admin Information</h2>
	    </div>
		
	    <br/>
	    
	      <form id="frmAdminDetails" method="post" action = "editAdmin">
	        <div class="row inter-row" id="sinfo">
		        <div class= "col-xs-3">
			        First Name: 
			        <label for="fname">
			        	<s:property value="%{adminDetails.firstName}"/>
			        </label>
		        </div>
		        <div class="col-xs-3">
		        	Last Name: 
			        <label for="lname">
			        	<s:property value="%{adminDetails.lastName}"/>
			        </label>
				</div>	        
	        </div>
	        
	        
	        <div class="row inter-row" id="phno1">
	           <div class="col-xs-3">
	             SSN: 
			        <label for="phno">
			        	<s:property value="%{adminDetails.ssn}"/>
			        </label>
	           </div>
	          
	        </div>
	        	        
	        <div class="row inter-row" id="btndiv">
	          <input type ="submit" class="btn btn-primary" id ="edit" value ="Edit" />
	        </div>
	        
	      </form>
	      <div style="margin-top: 10px">	      
		      <form id="frmStudentList" method="get" action="showStudentList">    		
			    	<input type ="submit" class="btn btn-primary" id ="btnStudentList" value ="Show Student List" />    		   		
		      </form>
	      </div>
	      <div style="margin-top: 10px">	      
		      <form id="frmCourseList" method="get" action="showCourseList">    		
			    	<input type ="submit" class="btn btn-primary" id ="btnCourseList" value ="Show Course List" />    		   		
		      </form>
	      </div>
	    </div>
	</div>
	<jsp:include page="common-footer.jsp" />
</body>
</html>
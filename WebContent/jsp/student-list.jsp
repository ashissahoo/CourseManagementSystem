<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student List</title>'
<jsp:include page="common-include.jsp" />

<script type='text/javascript' src='js/student-list-main.js'></script>
</head>



<body>

	<jsp:include page="common-header.jsp" />
	<div id ="studentTable" style="margin-top: 20px" class="container-fluid">
      <div class="maincontent">
		 <div>
		   <h2>Manage Students</h2>
		 </div>
		<ol class="breadcrumb">
		  <li><a href="#" onclick="postNavigate('home')">Home</a></li>
		  <li class="active">Manage Students</li>
		</ol>
			 
	  <form id="frmBillr" method="get" action="addStudent" style = "margin-top:15px">    		
		  <input type ="submit" class="btn btn-primary" id ="btnBill" value ="Add Student" />   		   		
	  </form>
		 <div style="margin-top: 20px">
		   <table class="table">

		      <thead class="thead-default">
			      <tr>
	                <th>User ID</th>
	                <th>First Name</th>
	                <th>Last Name</th>
	                <th>Department ID</th>
	                <th>Phone Number</th>
	                <th>Email</th>
	                <th>Address</th>
	                <th>GPA</th>
	                <th>Residency Type</th>
	                <th>Level Classification</th>
	                <th>Edit Student</th>
	                <th>Add/Edit Grades</th>
	              </tr>
              </thead>
              <tbody>
              	<s:iterator value="studentList">
              		<tr>
              			<td id="tduserId"><s:property value="userId"/></td>
              			<td id="tdfirstName"><s:property value="firstName"/></td>
              			<td id="tdlastName"><s:property value="lastName"/></td>
              			<td id="tddeptId"><s:property value="deptId"/></td>
              			<td id="tdphoneNumber"><s:property value="phoneNumber"/></td>
              			<td id="tdemail"><s:property value="email"/></td>
              			<td id="tdaddress"><s:property value="address"/></td>
              			<td id="tdgpa"><s:property value="gpa"/></td>
              			<td id="tdresidencyType"><s:property value="residencyType"/></td>
              			<td id="tdlevelClassification"><s:property value="levelClassification"/></td>
              			<td>
           					<input type ="button" data-user-id='<s:property value="userId"/>' 
           							class="btn btn-primary btn-edit-student"
									value ="Edit Student"/>
              			</td>
              			<td>
           					<input type ="button" data-user-id='<s:property value="userId"/>' 
           							class="btn btn-primary btn-enter-grades"
									value ="Add/Edit Grades"/>
              			</td>
              		</tr>
				</s:iterator>
			  
           </table>
		 </div>
	  </div>
	</div>

	<jsp:include page="common-footer.jsp" />

</body>
</html>
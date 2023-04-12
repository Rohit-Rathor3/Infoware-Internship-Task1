<%@ page isELIgnored="false"  %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    <title>All Employees</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

<div class="container shadow-lg m-5 p-2">
<c:choose> 

<c:when test="${!empty empList}">
<div class="row shadow m-2 p-2"> 
<div class="col-sm-12 d-flex justify-content-center"><h2 class="bg-dark text-warning p-2">All Registered Employees</h2> </div>
<table class="table table-dark">
  <thead>
    <tr>
    <th>ID</th>
    <th>First Name</th>
    <th>Last Name </th>
    <th>Email</th>
    <th>Contact No.</th>
    <th>Role</th>
    </tr>
  </thead>
  <tbody>
<c:forEach var="emp" items="${empList}">
    <tr >
      <td>${emp.id}</td>
      <td>${emp.firstName}</td>
      <td>${emp.lastName}</td>
      <td>${emp.email}</td>
      <td>${emp.phoneNo}</td>
      <td>${emp.role}</td>
    </tr>
 
 </c:forEach>
  </tbody>
</table>
</div>
 </c:when>
 <c:otherwise>
          <h1 style="color:red;text-align:center">No Record Found </h1>
      </c:otherwise>
</c:choose>
<div class="d-flex justify-content-center">
<a  href="/" class="btn btn-outline-success">Go to home </a>
</div>
</div>

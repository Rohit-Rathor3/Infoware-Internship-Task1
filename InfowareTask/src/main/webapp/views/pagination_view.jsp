<%@ page isELIgnored="false"  %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<link rel="stylesheet"
       href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"/> 

<div class="container m-5 p-3 shadow-lg border border-info ">       
<div class="row m-2">
<div class="col-sm-12 d-flex justify-content-center" >
<h2>Pagination View</h2>
</div>
<c:choose>
   <c:when test="${!empty empsData.getContent()}">
     <!-- <table border="1"  class="table table-striped" > -->
      <!--  <table border="1"  class="table table-hover" > -->
      <table border="1"  class="table" >
      <tr class="table-danger">
         <th>Id </th>
         <th>First Name </th>
         <th>Last Name </th>
         <th>Email</th>
         <th>Contact No</th>
         <th>Role</th>
      </tr>
      <c:forEach var="emp" items="${empsData.getContent()}">
           <tr  class="table-success">
              <td>${emp.id} </td>
              <td>${emp.firstName} </td>
              <td>${emp.lastName} </td>
             <td>${emp.email} </td>
             <td>${emp.phoneNo} </td>
             <td>${emp.role}</td>
           </tr>          
      </c:forEach>
      </table>
       
       <p  style="text-align:center">
      <c:if test="${empsData.hasPrevious()}"> 
          <a href="/get_pagination?page=${empsData.getPageable().getPageNumber()-1}"> previous </a>  &nbsp; &nbsp;
       </c:if>
       <c:if test="${!empsData.isFirst()}">
          <a href="/get_pagination?page=0">first</a>  &nbsp; &nbsp;
       </c:if>
       
               <c:forEach var="i" begin="1" end="${empsData.getTotalPages()}" step="1">
                       [<a href="/get_pagination?page=${i-1}">${i}</a>]  &nbsp;&nbsp;
               </c:forEach>
               
       <c:if test="${!empsData.isLast()}">
          <a href="/get_pagination?page=${empsData.getTotalPages()-1}">Last</a>  &nbsp; &nbsp;
       </c:if>
       
               
        <c:if test="${empsData.hasNext()}">       
            <a href="/get_pagination?page=${empsData.getPageable().getPageNumber()+1}"> next </a>
        </c:if>            
       </p>    
   </c:when>
      <c:otherwise>
          <h1 style="color:red;text-align:center"> Records not found </h1>
      </c:otherwise>
</c:choose>
  <div class="col-sm-12 d-flex justify-content-center" >
<a href="/" class="btn btn-outline-success">Back to home</a>
</div>
     </div>                 
      
</div>
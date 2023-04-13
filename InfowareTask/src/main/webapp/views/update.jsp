<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
  </head>
  <body>
    <div class="container m-5  shadow-lg border bg-dark border-dark">
    <div class="row m-2 shadow p-3 border border-warning bg-light">
    <div class="col-sm-12 d-flex justify-content-center bg-warning">
    <h2>Update Employee</h2>
    </div>
    <div class="col-sm-12 d-flex justify-content-center m-1">
    <form action="/update" method="POST" modelAttribute="emp" >
       <div class="input-group flex-nowrap m-1">
  <input type="text" class="form-control" placeholder="firstName" aria-label="Username" aria-describedby="addon-wrapping" required name="id" readonly value="${emp.id}" >
</div>
    <div class="input-group flex-nowrap m-1">
  
  <input type="text" class="form-control" placeholder="firstName" aria-label="Username" aria-describedby="addon-wrapping" required name="firstName" value="${emp.firstName}" minlength="3" maxlength="15">
</div>
<div class="input-group flex-nowrap m-1">
 
  <input type="text" class="form-control" placeholder="lastName" aria-label="Username" aria-describedby="addon-wrapping" required name="lastName" value="${emp.lastName}" minlength="3" maxlength="15">
</div>
<div class="input-group flex-nowrap m-1">
 
  <input type="email" class="form-control" placeholder="email" aria-label="Username" aria-describedby="addon-wrapping" required name="email" value="${emp.email}">
</div>
<div class="input-group flex-nowrap m-1">
  
  <input type="tel" class="form-control" placeholder="phoneNo" aria-label="Username" aria-describedby="addon-wrapping" required name="phoneNo" value="${emp.phoneNo}" minlength="10" maxlength="10">
</div>
<select class="form-select m-1" aria-label="Select Role" name="role" required >
  <option value="${emp.role}" selected>${emp.role}</option>
  <option value="NodeJs Developer">NodeJs Develope</option>
  <option value="Python Developer">Python Developer</option>
  <option value="React Developer">React Developer</option>
  <option  value="Java Developer">Java Developer</option>
</select>
<div class="justify-content-center d-flex m-1">
<button type="submit" class="btn btn-outline-success " type="submit">Update</button>
</div>
<div class="d-flex justify-content-center">
<a  href="/" class="btn btn-outline-success">Go to home </a>
</div>
</form>

    </div>
    </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
  </body>
</html>
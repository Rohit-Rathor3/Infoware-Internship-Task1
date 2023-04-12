<%@ page isELIgnored="false"  %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
  </head>
  <body>
    <div class="container mt-2 border p-5 shadow-lg border border-danger-subtle">
    <div class="row shadow p-2">
    <div class="col-sm-12 m-2 justify-content-center d-flex">
    <h2 class=" bg-dark text-white p-3">Curd Operation On Employee Details</h2>
    </div>  <span>${result}</span>
    <div class="col-sm-12 m-2">
    <div class="d-grid gap-2 col-6 mx-auto">
  <a href="/register" class="btn btn-outline-success fw-bold" type="button"><h3>Add New Employee</h3></a>
</div>
    </div>
    <div class="col-sm-12 m-2">  <div class="d-grid gap-2 col-6 mx-auto">
  <a  href="/update" class="btn  btn-outline-primary fw-bold" type="button"><h3>Update Employee</h3></a>
</div></div>
    <div class="col-sm-12 m-2">  <div class="d-grid gap-2 col-6 mx-auto">
  <a href="/show_delete" class="btn  btn-outline-danger fw-bold" type="button"><h3>Delete Employee</h3></a>
</div></div>
    <div class="col-sm-12 m-2">  <div class="d-grid gap-2 col-6 mx-auto">
  <a href="/all_employee" class="btn  btn-outline-info fw-bold" type="button"><h3>Get All Employee</h3></a>
</div></div>
    
    </div>
    
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
  </body>
</html>
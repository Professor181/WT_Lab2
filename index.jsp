<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Electricity Billing System</title>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" 
rel="stylesheet">


<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" 
rel="stylesheet">


<style>

body {
    background: linear-gradient(135deg,#667eea,#764ba2);
    min-height:100vh;
}


.card {
    border-radius:20px;
}


.btn-custom {

    background:#667eea;
    color:white;
    border-radius:25px;

}


.btn-custom:hover {

    background:#764ba2;
    color:white;

}


.logo {

    font-size:45px;

}


</style>


</head>


<body>


<nav class="navbar navbar-dark bg-dark">

<div class="container">

<span class="navbar-brand">

⚡ Electricity Billing System

</span>

</div>

</nav>




<div class="container mt-5">


<div class="row justify-content-center">


<div class="col-md-6">


<div class="card shadow-lg p-4">


<div class="text-center">


<div class="logo">

<i class="bi bi-lightning-charge-fill text-warning"></i>

</div>


<h2>
Calculate Your Bill
</h2>


<p class="text-muted">
Smart electricity consumption calculator
</p>


</div>




<form action="calculate" method="post" id="billForm">


<label class="form-label">
Consumer Name
</label>


<input 
type="text"
name="name"
id="name"
class="form-control"
placeholder="Enter your name"
required>



<br>



<label class="form-label">
Consumer ID
</label>


<input 
type="text"
name="consumerId"
id="consumerId"
class="form-control"
placeholder="Enter consumer ID"
required>



<br>



<label class="form-label">
Units Consumed
</label>


<input 
type="number"
name="units"
id="units"
class="form-control"
placeholder="Enter units"
required>



<br>



<button class="btn btn-custom btn-lg w-100">

<i class="bi bi-calculator"></i>

Calculate Bill

</button>



</form>



</div>

</div>

</div>

</div>





<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>


<script>


$(document).ready(function(){



$("#billForm").submit(function(){


let name=$("#name").val().trim();

let id=$("#consumerId").val().trim();

let units=$("#units").val();



if(name.length < 3){

alert("Name must contain minimum 3 characters");

return false;

}



if(!/^[0-9]+$/.test(id)){

alert("Consumer ID must contain only numbers");

return false;

}



if(units <= 0){

alert("Enter valid units");

return false;

}



return true;


});



});



</script>


</body>


</html>
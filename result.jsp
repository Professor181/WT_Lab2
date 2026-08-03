<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="model.ElectricityBill" %>


<%

ElectricityBill bill =
(ElectricityBill)request.getAttribute("bill");

%>



<!DOCTYPE html>
<html>


<head>


<meta charset="UTF-8">


<title>
Electricity Bill Result
</title>



<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
rel="stylesheet">



<style>


body{

background:#f4f7fb;

}


.card{

border-radius:20px;

}


.total{

font-size:32px;

font-weight:bold;

color:#198754;

}


</style>


</head>



<body>



<div class="container mt-5">


<div class="row justify-content-center">


<div class="col-md-7">



<div class="card shadow p-4">



<h2 class="text-center text-primary">

⚡ Electricity Bill Summary

</h2>



<hr>



<table class="table table-bordered">


<tr>

<th>
Consumer Name
</th>

<td>
<%=request.getAttribute("name")%>
</td>

</tr>



<tr>

<th>
Consumer ID
</th>

<td>
<%=request.getAttribute("consumerId")%>
</td>

</tr>




<tr>

<th>
Units Consumed
</th>

<td>
<%=bill.getUnits()%>
</td>

</tr>




<tr>

<th>
First 50 Units (₹3.50/unit)
</th>

<td>
&#8377; <%=bill.getFirst50()%>
</td>

</tr>




<tr>

<th>
Next 100 Units (₹4/unit)
</th>

<td>
&#8377; <%=bill.getNext100()%>
</td>

</tr>




<tr>

<th>
Next 100 Units (₹5.20/unit)
</th>

<td>
&#8377; <%=bill.getNext100_250()%>
</td>

</tr>




<tr>

<th>
Above 250 Units (₹6.50/unit)
</th>

<td>
&#8377; <%=bill.getAbove250()%>
</td>

</tr>



</table>




<div class="alert alert-success text-center">


<h4>
Total Electricity Bill
</h4>


<div class="total">

&#8377; <%=bill.getAmount()%>

</div>


</div>



<a href="index.jsp" 
class="btn btn-primary w-100">

Calculate Again

</a>




</div>


</div>


</div>


</div>



</body>


</html>
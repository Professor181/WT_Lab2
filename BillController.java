package controller;


import model.ElectricityBill;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;


@WebServlet("/calculate")
public class BillController extends HttpServlet {


protected void doPost(
HttpServletRequest request,
HttpServletResponse response)
throws ServletException, IOException {


int units = Integer.parseInt(
request.getParameter("units")
);


ElectricityBill bill =
new ElectricityBill(units);


request.setAttribute(
"bill",
bill
);

String name =
request.getParameter("name");


String consumerId =
request.getParameter("consumerId");


request.setAttribute("name",name);

request.setAttribute("consumerId",consumerId);

RequestDispatcher rd =
request.getRequestDispatcher("result.jsp");


rd.forward(request,response);


}

}
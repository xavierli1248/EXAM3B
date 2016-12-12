<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Customers"%>
<% Customers customer = (Customers) request.getAttribute("customer"); %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update A Customer</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    <body>
        <h1>Update A Customer</h1>
        <hr>
        <a href="index.jsp" id="current">Home</a>
        <br><br>
        <h2>Blue Fields are Required.</h2>
        <br>
        <form name="updateForm" action="updateCustomer" method="get">
            
            <label>Customer ID:</label>
            <input type="text" name="custID" value="<%= customer.getCustID() %>" readonly/>
            <br>
            <label>First Name:</label>
            <input type="text" name="firstName" value="<%= customer.getFirstName() %>" Required/>
            <br>
            <label>Last Name:</label>
            <input type="text" name="lastName" value="<%= customer.getLastName() %>" Required/>
            <br>
            <label>Address Line 1:</label>
            <input type="text" name="addr1" value="<%= customer.getAddr1() %>" Required/>
            <br>
            <label>Address Line 2:</label>
            <input type="text" name="addr2" value="<%= customer.getAddr2() %>" />
            <br>
            <label>City:</label>
            <input type="text" name="city" value="<%= customer.getCity() %>" Required/>
            <br>
            <label>State:</label>
            <input type="text" name="state" value="<%= customer.getState1() %>" Required/>
            <br>
            <label>Zip:</label>
            <input type="text" name="zip" value="<%= customer.getZip() %>" Required/>
            <br>
            <label>Email Address:</label>
            <input type="text" name="emailAddr" value="<%= customer.getEmailAddr() %>" Required/>
            <br>
            <input type="reset" name="reset" value="Clear" />
            <input type="submit" name="update" value="Update" />
        </form>
            <hr>
            <%@ include file="includes/footer.jsp" %>
    </body>
</html>

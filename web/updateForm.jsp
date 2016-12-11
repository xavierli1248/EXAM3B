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
        <form name="updateForm" action="updateCustomer" method="get">
            
            <label>Customer ID:</label>
            <input type="text" name="id" value="<%= customer.getCustID() %>" readonly/>
            <br>
            <label>First Name:</label>
            <input type="text" name="fname" value="<%= customer.getFirstName() %>" />
            <br>
            <label>Last Name:</label>
            <input type="text" name="lname" value="<%= customer.getLastName() %>" />
            <br>
            <label>Address Line 1:</label>
            <input type="text" name="addr1" value="<%= customer.getAddr1() %>" />
            <br>
            <label>Address Line 2:</label>
            <input type="text" name="addr2" value="<%= customer.getAddr2() %>" />
            <br>
            <label>City:</label>
            <input type="text" name="city" value="<%= customer.getCity() %>" />
            <br>
            <label>State:</label>
            <input type="text" name="state" value="<%= customer.getState() %>" />
            <br>
            <label>Zip:</label>
            <input type="text" name="zip" value="<%= customer.getZip() %>" />
            <br>
            <label>Email Address:</label>
            <input type="text" name="eaddr" value="<%= customer.getEmailAddr() %>" />
            <br>
            <input type="reset" name="reset" value="Clear" />
            <input type="submit" name="update" value="Update" />
        </form>
            <hr>
            <%@ include file="includes/footer.jsp" %>
    </body>
</html>

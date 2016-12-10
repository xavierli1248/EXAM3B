<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add A New Customer</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    <body>
        <h1>Add A New Customer</h1>
        <hr/>
        <a href="index.jsp" id="current">Home</a>
        <br><br>
        <form name="addForm" action="addCustomer" method="get">
            
            <label>First Name:</label>
            <input type="text" name="fname" value="" />
            <br>
            <label>Last Name:</label>
            <input type="text" name="lname" value="" />
            <br>
            <label>Address Line 1:</label>
            <input type="text" name="addr1" value="" />
            <br>
            <label>Address Line 2:</label>
            <input type="text" name="addr2" value="" />
            <br>
            <label>City:</label>
            <input type="text" name="city" value="" />
            <br>
            <label>State:</label>
            <input type="text" name="state" value="" />
            <br>
            <label>Zip:</label>
            <input type="text" name="zip" value="" />
            <br>
            <label>Email Address:</label>
            <input type="text" name="eaddr" value="" />
            <br>
            <input type="reset" name="reset" value="Clear" />
            <input type="submit" name="submit" value="Submit" />
        </form>
        <hr>
        <%@ include file="includes/footer.jsp" %>
    </body>
</html>

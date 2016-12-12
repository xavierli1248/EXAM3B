<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customers Database</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    
    <% String table2 = (String) request.getAttribute("table2"); %>
    
    <body>
                <div class="wrap">
            
            <%@ include file="includes/header.jsp" %>
            <hr/>
            <%@ include file="includes/menu1.jsp" %>
            <hr/>
        
            <div class="main">
        <h1>Customers</h1>
        <%= table2 %>      
        
        </div>
        <hr/>
        <%@ include file="includes/footer.jsp" %>
        
        </div>
    </body>
</html>
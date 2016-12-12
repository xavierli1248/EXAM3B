<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
        
        <script type="text/javascript">
            var invalid = 0;
            function Validate()
            {
                invalid=0;
                var fname = document.getElementById("fname").value;
                if(fname !=="123456")
                {
                    document.getElementById("fname_error").innerHTML = "Please enter a correct User Name.";
                    invalid +=1;
                    return false;
                    
                }
                else
                {
                    document.getElementById("fname_error").innerHTML = ""; 
                }
                
                var password = document.getElementById("password").value;
                if(password !=="123456")
                {
                    document.getElementById("password_error").innerHTML = "Please enter a correct password.";
                    invalid +=1;
                    return false;
                    
                }
                else
                {
                    document.getElementById("password_error").innerHTML = ""; 
                } 
            }
        </script>    
        
    </head>
    <body>
        <div class="wrap">
            <!--Header-->
            <%@ include file="includes/header.jsp"%>
            <hr/>
            <%@ include file="includes/menu1.jsp" %>
            <hr/>
            <div class="main">
            <h1>Administrator Login</h1>
            <br>
            <h2>Blue Fields are Required.</h2>
            <br>
            <h2>User Name and Password are both 123456</h2>
            <form name="LoginForm" action="admin.jsp" method="get" onsubmit="return Validate();">
            <table class="add">
            <tr>
                <td><label>User Name:</label></td>
                <td><input type="text" name="fname" id="fname" value="" required/>
                <span id="fname_error" class="error"></span></td>
            </tr>
        
            <tr>
                <td><label>Password:</label></td>
                <td><input type="password" name="password" id="password" value="" required/>
                <span id="password_error" class="error"></span></td>
            </tr>
            
            <tr>
            <td><input type="submit" name="submit" value="Login" onclick="validate();"></td>
            <td><input type="reset" value="Clear" id="clear"></td>
            </tr>
            </table>
            </form>
            </div>
        <!--Footer-->
        <%@ include file="includes/footer.jsp"%>
        </div>
    </body>
</html>  

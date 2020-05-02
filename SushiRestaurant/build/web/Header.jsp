<%-- 
    Document   : Header
    Created on : 16-03-2020
    author : quanndhe130577
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/header.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="header">
            <div class="title">The Sushi Restaurant</div>
            <div class="subtitle">Welcome to my website</div>
        </div>
        <div class="menu">
            <ul class="nav">
                <li><a class="${activeHome}" href="HomeControl">Home</a></li>
                <li><a class="${activeMenu}" href="MenuControl">Menu and price list</a></li>
                <li><a class="${activeInfor}" onclick="toBold()" href="Location.jsp">Find Us</a></li>
                
                <script>
                    function toBold() {
                        <%request.getSession().setAttribute("activeInfor", "activeInfor");%>
                    }
                </script>
            </ul>        
        </div>
    </body>
</html>

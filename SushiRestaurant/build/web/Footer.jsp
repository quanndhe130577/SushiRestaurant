<%-- 
    Document   : Footer
    Created on : 16/03/2020
    author : quanndhe130577
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/footer.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="footer">
            <a href="#" style="float: left">Create with SimpleSite</a>
            <div class="visiter_count"><%=request.getSession().getAttribute("visit_count")%></div>
        </div>
        
    </body>
</html>

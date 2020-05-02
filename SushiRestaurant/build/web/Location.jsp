<%-- 
    Document   : HomePage
    Created on : 16/03/2020
    Author     : quanndhe130577
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/location.css" rel="stylesheet" type="text/css"/>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <jsp:include page="Header.jsp"/>
            <div class="content">
                <div class="left">
                    <div class="location_title">
                        Find Maria's Cafe
                    </div>
                    <div class="location">
                        <div class="location_left">
                            <div class="location_header">
                                Address and contact:
                            </div>
                            <p>FPT University, Thach Hoa - Thach That - Hoa Lac </p>
                            <p>Tel: (024) 7300 5588</p>
                            <p>Email: daihocfpt@fpt.edu.vn</p>
                        </div>
                        <div class="location_right">
                            <div class="location_header">
                                Opening hours:<br>
                            </div>
                            <div class="location_right_time">
                                Monday : 7h30 - 17h40;<br>
                                Tuesday : 7h30 - 17h40;<br>
                                Wednesday : 7h30 - 17h40;<br>
                                Thursday : 7h30 - 17h40;<br>
                                Friday : 7h30 - 17h40;<br>
                                Saturday : closed;<br>
                                Sunday : closed;<br>
                            </div>
                        </div>
                    </div>
                    <div class="map">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.551560430365!2d105.52699556536608!3d21.010605636008226!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313454b32ca5086d%3A0xa3c62e29d8ab37e4!2sFPT%20University!5e0!3m2!1sen!2s!4v1584527668892!5m2!1sen!2s" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                    </div>
                </div>
                <jsp:include page="Right.jsp"/>
            </div>
            <jsp:include page="Footer.jsp"/>
        </div>
    </body>
</html>

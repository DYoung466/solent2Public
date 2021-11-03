<%-- 
    Document   : checkcard
    Created on : 28 Jul 2021, 17:13:43
    Author     : cgallen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="solent.ac.uk.ood.examples.cardcheck.CardValidationResult" %>
<%@ page import="solent.ac.uk.ood.examples.cardcheck.RegexCardValidator" %>


<%
    String creditcardno = request.getParameter("creditcardno");
    if (creditcardno == null) {
        session.setAttribute("creditcardno", creditcardno);
    }
   
    else {
        session.setAttribute("creditcardno", 123);
    }
    
    

    // TODO CREATE LOGIC TO CHECK A CARD HERE
    // TIP - LOOK AT THE CODE IN TestRegexCardValidator.java
    
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Check Credit Card</h1>
   
        <br>
        <form action="./checkcard.jsp" method ="get">
            <input id="creditcardno">
            <input type ="submit" value="creditcardno">
        </form> <br>
        
        <%=creditcardno %>
        

        
        
    </body>
</html>

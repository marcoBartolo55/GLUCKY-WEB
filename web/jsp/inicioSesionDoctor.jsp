<%@page import="Clases.Doctores" %>
<%!Doctores doc;
String Cedula,Pass;
boolean a;%>
<%
doc= new Doctores();
Cedula=request.getParameter("CedulaForm");
Pass=request.getParameter("PassForm");
a=doc.LoginDoctores(Cedula,Pass);
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><%=a%></h1>
    </body>
</html>

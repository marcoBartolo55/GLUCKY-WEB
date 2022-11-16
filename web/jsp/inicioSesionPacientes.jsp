<%@page import="Clases.Pacientes"%>
<%!Pacientes pa;
String Curp,Pass;
boolean a;%>
<%
    pa = new Pacientes();
    Curp = request.getParameter("CurpForm");
    Pass = request.getParameter("PassForm");
    a = pa.LoginPacientes(Curp,Pass);
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

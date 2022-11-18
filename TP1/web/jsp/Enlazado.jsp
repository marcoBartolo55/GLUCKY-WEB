<%@page import="Clases.Pacientes"%>
<%!Pacientes pa;
String Curp,Cedula,Con;
boolean a;%>
<%
  Curp = request.getParameter("CurpFrom");
  Cedula = request.getParameter("CedulaForm");
  Con = "espera";
  pa = new Pacientes();
  a = pa.Enlace(Curp,Cedula,Con);
  if(a==true){
    System.out.println("Se logro putita");
    }else{
    System.out.println("No se logro putita");}
    
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>

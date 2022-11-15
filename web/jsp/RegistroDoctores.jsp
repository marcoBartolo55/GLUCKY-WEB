<%@page import="Clases.Doctores" %>
<%! Doctores doc;
int Sexo;%>
<%
doc = new Doctores();
doc.setNombre(request.getParameter("NombreForm"));
doc.setApellidos(request.getParameter("ApellidosForm"));
doc.setEmail(request.getParameter("EmailForm"));
doc.setEdad(Integer.parseInt(request.getParameter("EdadForm")));
doc.setTelefono(request.getParameter("TelefonoForm"));
doc.setCedula(request.getParameter("CedulaForm"));
doc.setCalle(request.getParameter("CalleForm"));
doc.setNumeroCons(Integer.parseInt(request.getParameter("NumeroConsForm")));
doc.setCodigoPostal(Integer.parseInt(request.getParameter("CodigoPostalForm")));
doc.setLocalidad(request.getParameter("LocalidadForm"));
Sexo=Integer.parseInt(request.getParameter("SexoForm"));
if(Sexo==1){
    doc.setSexo("Femenino");
}
else{
    if(Sexo==2){
        doc.setSexo("Masculino");
    }
}
doc.setPass(request.getParameter("PassForm"));
doc.registrarDoctores(doc);
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1></h1>
    </body>
</html>

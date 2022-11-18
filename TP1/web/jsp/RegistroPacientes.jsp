<%@page import="Clases.Pacientes"%>
<%!Pacientes pa;
int Tipodia,Sexo;%>
<%
pa=new Pacientes();
pa.setCurp(request.getParameter("CurpForm"));
pa.setEmail(request.getParameter("EmailForm"));
pa.setPass(request.getParameter("PassForm"));
pa.setNombre(request.getParameter("NombreForm"));
pa.setApellidos(request.getParameter("ApellidosForm"));
Sexo=Integer.parseInt(request.getParameter("SexoForm"));
if(Sexo==1){
    pa.setSexo("Femenino");
}
else{
    if(Sexo==2){
        pa.setSexo("Masculino");
    }
}
pa.setTelefono(request.getParameter("TelefonoForm"));
pa.setEdad(Integer.parseInt(request.getParameter("EdadForm")));
Tipodia=Integer.parseInt(request.getParameter("DiabetesForm"));
if(Tipodia==1){
    pa.setTipoDiabetes(Tipodia);
}
else{
    if(Tipodia==2){
        pa.setTipoDiabetes(Tipodia);
        }
    else{
        if(Tipodia==3){
            pa.setTipoDiabetes(Tipodia);
        }
    }
}
pa.registrarPacientes(pa);
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%System.out.println(Sexo);%>a</title>
    </head>
    <body>
        <h1>putite</h1>
    </body>
</html>

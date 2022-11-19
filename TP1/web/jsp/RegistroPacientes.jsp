<%@page import="Clases.Pacientes"%>
<%!Pacientes pa;
int Tipodia,Sexo;
boolean si;%>
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
si=pa.registrarPacientes(pa);
if(si==true){
%>
<!DOCTYPE html>
<!-- Created by CodingLab |www.youtube.com/CodingLabYT-->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <!--<title> Responsive Sidebar Menu  | CodingLab </title>-->
    <link rel="stylesheet" href="../css/botonEmergenteDoct.css">
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
<body>

<!-- HTML !-->

<div class="ahche">Registro completado</div>
<form action="../index.html">
    
    <input type="text" class="forminvitex"><br>
            
    <input type="submit" value="Aceptar" class="button-9">
  </form>
    </body>
</html>

<%}else{%>
<!DOCTYPE html>
<!-- Created by CodingLab |www.youtube.com/CodingLabYT-->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <!--<title> Responsive Sidebar Menu  | CodingLab </title>-->
    <link rel="stylesheet" href="../css/botonEmergenteDoct.css">
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
<body>

<!-- HTML !-->

<div class="ahche">No se pudo completar tu registro debido a que esa Curp ya fue registrada</div>
<form action="../html/RegistroPacientes.html">
    
    <input type="text"  class="forminvitex"><br>
            
    <input type="submit" value="Aceptar" class="button-9">
  </form>
    </body>
</html>
<%}%>

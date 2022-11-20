<%@page import="Clases.Doctores" %>
<%! Doctores doc;
int Sexo;
boolean si;%>
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
si=doc.registrarDoctores(doc);
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

<div class="ahche">No se pudo completar tu registro debido a que esa Cedula ya fue registrada</div>
<form action="../html/RegistroDoctores.html">
    
    <input type="text"  class="forminvitex"><br>
            
    <input type="submit" value="Aceptar" class="button-9">
  </form>
    </body>
</html>
<%}%>


<%@page import="Clases.DatosMedicos"%>
<%@page import="Clases.Pacientes"%>
<%!String Curp,Cedula;
DatosMedicos niv;
Pacientes pa;
boolean si;%>
<%Curp = request.getParameter("CurpForm");
niv = new DatosMedicos();
niv.setGlucosa(Integer.parseInt(request.getParameter("GlucosaForm")));
niv.setPresionSistolica(Integer.parseInt(request.getParameter("PresiSis")));
niv.setPresionDiastolica(Integer.parseInt(request.getParameter("PresiDias")));
niv.setComida(request.getParameter("comer"));
si = niv.RegistrarNive(niv,Curp);
pa = new Pacientes();
Cedula = pa.ConecDoc(Curp);
if(!Cedula.equals("no")){
    niv.RegistraDoc(Cedula,Curp);
    }
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
<form action="formGlucosaPresionUsuario.jsp" method="post">
    
    <input type="text"  name="CURP" value="<%=Curp%>" class="forminvitex"><br>
            
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

<div class="ahche">No se pudo completar tu registro</div>
<form action="formGlucosaPresionUsuario.jsp" method="post">
    
    <input type="text"  name="CURP" value="<%=Curp%>" class="forminvitex"><br>
            
    <input type="submit" value="Aceptar" class="button-9">
  </form>
    </body>
</html>
<%}%>


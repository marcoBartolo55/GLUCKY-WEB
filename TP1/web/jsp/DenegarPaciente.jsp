<%@page import ="Clases.Doctores" %>
<%!Doctores doc;
String Cedula,Curp;%>
<%doc = new Doctores();
Cedula =request.getParameter("CEDULA");
Curp = request.getParameter("CURP");

doc.conexionDenegada(Curp);%>

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

<div class="ahche">Conexion denegada</div>
<form action="verPacientesDoctor.jsp">
    
    <input type="text" name="CEDULA" value="<%=Cedula%>" class="forminvitex"><br>
            
    <input type="submit" value="Aceptar" class="button-9">
  </form>
    </body>
</html>

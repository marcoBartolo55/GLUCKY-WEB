<%@page import="Clases.Pacientes"%>
<%!Pacientes pa;
String Curp,Cedula,Con;
String si;%>
<%
  Curp = request.getParameter("CurpFrom");
  Cedula = request.getParameter("CedulaForm");
  Con = "espera";
  pa = new Pacientes();
  si = pa.EnlaceVeri(Curp);
  System.out.println(si);
  si = pa.Enlace(si,Curp,Cedula,Con);
  System.out.println(si);
  if(si.equals("EnEspe")){
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

<div class="ahche">Su solicitud se encuentra en espera</div>
<form action="conectarmeoVerDoctores.jsp" method="post">
    
    <input type="text" name="CURP" value="<%=Curp%>" class="forminvitex"><br>
            
    <input type="submit" value="Aceptar" class="button-9">
  </form>



</body>
</html>
<%}else{
    if(si.equals("aceptada")){
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


<div class="ahche">
Su solicitud ya fue aceptada por el Doctor
</div>
<form action="conectarmeoVerDoctores.jsp" method="post">
    
    <input type="text" name="CURP" value="<%=Curp%>" class="forminvitex"><br>
            
    <input type="submit" value="Aceptar" class="button-9">
  </form> 



</body>
</html>
<%}else{
    if(si.equals("Den")){
    pa.eliminarEnla(Curp);

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

<div class="ahche">Su solicitud fue degenada por el doctor, si cree que fue un error contacte con el doctor y vuelva a intentarlo</div>
<form action="enlazarmeaDoctor.jsp" method="post">
    
    <input type="text" name="CURP" value="<%=Curp%>" class="forminvitex"><br>
            
    <input type="submit" value="Aceptar" class="button-9">
  </form>



</body>
</html>
<%}else{
    if(si.equals("Solici")){
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

<div class="ahche">Su solicitud fue enviada</div>
<form action="conectarmeoVerDoctores.jsp" method="post">
    
    <input type="text" name="CURP" value="<%=Curp%>" class="forminvitex"><br>
            
    <input type="submit" value="Aceptar" class="button-9">
  </form>

</body>
</html>
<%}else{
if(si.equals("NoSeSoli")){%>
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

<div class="ahche">Los datos del doctoctor ingresados son erroneos o el doctor no se encutra resgistrado en la porfavor vuelva a intentarlo</div>
<form action="enlazarmeaDoctor.jsp" method="post">
    
    <input type="text" name="CURP" value="<%=Curp%>" class="forminvitex"><br>
            
    <input type="submit" value="Aceptar" class="button-9">
  </form>
<%          }
        }
    }
}
}
%>
<%@page import="Clases.Doctores" %>
<%!Doctores doc;
String Cedula,Pass;
String si;%>
<%
doc= new Doctores();
Cedula=request.getParameter("CedulaForm");
Pass=request.getParameter("PassForm");
si=doc.LoginDoctores(Cedula,Pass);
if (si.equals("Excelente")){
    doc=doc.obtenerD(Cedula);
%>
<%-- Comentarios acerca de la página que tiene que estar dentro de la cosa de login --%>
 <!DOCTYPE html>
<!-- Created by CodingLab |www.youtube.com/CodingLabYT-->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <!--<title> Responsive Sidebar Menu  | CodingLab </title>-->
    <link rel="stylesheet" href="../css/dashboardDoctores.css">
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>

   <body>
    <div class="sidebar">
        <div class="logo-details">
          <i class='bx bxl-c-plus-plus icon'></i>
            <div class="logo_name">Glucky</div>
            <i class='bx bx-menu' id="btn" ></i>
        </div>
        <ul class="nav-list">
          <li>
            <a>
              <i class='bx bx-grid-alt'></i>
              <span class="links_name">Panel de control</span>
            </a>
             <span class="tooltip">Centro de información</span>
          </li>
          <li>
           <a>
             <i class='bx bx-user' ></i>
             <span class="links_name">Pacientes</span>
           </a>
           <!-- Inicio del form-->

           <form action="#" method="post" class="forminvi">
                    
            <input type="text" name="CEDULA" value="<%=Cedula%>" class="forminvitex"><br>
          
          
            <input type="submit" value="Enviarcurp" class="forminvibu">
            
          </form> 

<!-- Final del form-->
           <span class="tooltip">Buscar pacientes</span>
         </li>
         <li>
           <a>
             <i class='bx bx-chat' ></i>
             <span class="links_name">Chateo con pacientes</span>
           </a>
           <!-- Inicio del form-->

           <form action="#" method="post" class="forminvi">
                    
            <input type="text" name="CEDULA" value="<%=Cedula%>" class="forminvitex"><br>
          
          
            <input type="submit" value="Enviarcurp" class="forminvibu">
            
          </form> 

<!-- Final del form-->
           <span class="tooltip">Chatear con pacientes</span>
         </li>
       
         <li>
           <a>
             <i class='bx bx-circle' ></i>
             <span class="links_name">Peticiones</span>
           </a>
           <!-- Inicio del form-->

           <form method="post" action="verPacientesDoctor.jsp" class="forminvi">
                    
            <input type="text"  name="CEDULA" value="<%=Cedula%>" class="forminvitex"  ><br>
          
          
            <input type="submit" value="Enviarcurp" class="forminvibu">
            
          </form> 

<!-- Final del form-->
           <span class="tooltip">Ver peticiones</span>
         </li>
         <li>
           <a>
             <i class='bx bx-book-bookmark' ></i>
             <span class="links_name">Citas</span>
           </a>
           <!-- Inicio del form-->

           <form action="#" method="post" class="forminvi">
                    
            <input type="text" name="CEDULA" value="<%=Cedula%>" class="forminvitex"><br>
          
          
            <input type="submit" value="Enviarcurp" class="forminvibu">
            
          </form> 

<!-- Final del form-->
           <span class="tooltip">Ver mi agenda de citas</span>
         </li>
         
        
         <li class="profile">
             <div class="profile-details">
               <!--<img src="profile.jpg" alt="profileImg">-->
               <div class="name_job">
                   <div class="name">Nombre: <br> <%=doc.getNombre()%></div>
                 <div class="job">Doctor</div>
               </div>
             </div>
                 <a href="../index.html"><i class='bx bx-log-out' id="log_out" ></i> </a>
         </li>
        </ul>
      </div>
   
   
   
  <section class="home-section">
    <div class="text">
      
    </div>
   
  <div class="container">
      <div class="title">Buenos dias: <%=doc.getNombre()%> <%=doc.getApellidos()%>
      </div>
      <div class="content">

        <br>
         <!--<div class=textoarriba> -->
         <!--   Tu endocrinologo profesional sanitario EPS puede conectarse a tu cuenta de Glucky y realizar seguimiento s etu diabetes en remoto.-->
         <!--  Para ello el EPS debe registrarse primero en Glucky -->
         <!--  <br>-->
         <!--</div> -->
      
         <!--  Aquí va el contenido de todo lo que quieran poner -->
        
          <div class="row">
            <div class="column">
              <!-- Aquí va el contenido de todo lo que quieran poner -->


              <div class="rowdos">
                <div class="columntercera" >
                    
                    <!--   aquí va cada uno de los cuadrados que colocaremos  -->
                    <div class="cuadradodatos">
                        
                         <!--   aquí va un nuevo div de textos  -->
                         <div class="nivel">
                    <%
                    //////Promedio de los niveles de presión de los pacientes
                    System.out.println("Promedio de presión");

                    %> 
                         </div>
                    
                         <div class="categoria">
                            Presión
                         </div>  

                    </div>


                    <!-- nuevo cuadrado blanco de textos-->

                    <br>

                    <div class="cuadradodatosblancostratamientos">
                    <%
                    //////Total de pacientes que han solicitado unirse a un doctor
                    System.out.println("Total de pacientes que se han registrado para tener doctor");

                    %>  
                     Solicitudes
                        <div class="niveldetrata">
                    <%
                    //////Total de pacientes que han solicitado unirse a un doctor
                    System.out.println("Total de pacientes que se han registrado para tener doctor");

                    %> 
                            <div class="ojo">
                              <i class='fa fa-eye'></i>
                            </div>    
                        </div>
                    </div>

                    <br>

                    <div class="cuadradodatosblancostratamientos">
                    <%
                    //////Total de pacientes tipo 2
                    System.out.println("Total de pacientes tipo 2");

                    %> 
                     pacientes tipo 2
                        <div class="niveldetrataam">
                    <%
                    //////Total de pacientes tipo 2
                    System.out.println("Total de pacientes tipo 2");

                    %>  
                            <div class="ojo">
                              <i class='fa fa-eye'></i>
                            </div>    
                        </div>
                    </div>

                    <br>

                    <div class="cuadradodatosblancostratamientos">
                    <%
                    //////Total de pacientes sin dietas
                    System.out.println("Total de pacientes sin dietas");

                    %>  
                    sin dietas
                        <div class="niveldetrataroj">
                    <%
                    //////Total de pacientes sin dietas
                    System.out.println("Total de pacientes sin dietas");

                    %>  
                            <div class="ojo">
                              <i class='fa fa-eye'></i>
                            </div>    
                        </div>
                    </div>

                </div>
                <div class="columntercera" >
                  

                    <!--   aquí va cada uno de los cuadrados que colocaremos  -->
                    <div class="cuadradodatosgluco">
                        
                        <!--   aquí va un nuevo div de textos  -->
                        <div class="nivelgluco">
                    <%
                    //////Promedio de niveles de azucar de los pacientes
                    System.out.println("Promedio de niveles de azucar de los pacientes");

                    %> 
                        </div>
                   
                        <div class="categoria">
                           Azucar
                        </div>  

                     </div>

                      <!-- nuevo cuadrado blanco de textos-->

                    <br>

                    <div class="cuadradodatosblancostratamientos">
                    <%
                    //////métodos de agarrar datos de doctores total de citas
                    System.out.println("Número de citas totales");

                    %> 
                     Citas pendientes
                        <div class="niveldetratados">
                    <%
                    //////métodos de agarrar datos de doctores total de citas
                    System.out.println("Número de citas totales");

                    %> 
                            <div class="ojo">
                              <i class='fa fa-eye'></i>
                            </div>    
                        </div>
                    </div>

                    <br>

                    <div class="cuadradodatosblancostratamientos">
                    <%
                    //////métodos de agarrar datos de pacientes tipo 1
                    System.out.println("Número de pacientes tipo 1");

                    %> 
                     Paciente tipo 1
                        <div class="niveldetratadosaz">
                    <%
                    //////métodos de agarrar datos de pacientes tipo 1
                    System.out.println("Número de pacientes tipo 1");

                    %>
                            <div class="ojo">
                              <i class='fa fa-eye'></i>
                            </div>    
                        </div>
                    </div>

                    
                </div>
                <div class="columntercera">

                  <!--   aquí va cada uno de los cuadrados que colocaremos  -->
                  <div class="cuadradodatosdos">
                        
                    <!--   aquí va un nuevo div de textos  -->
                    <div class="niveldos">
                     <%
                    //////métodos de agarrar datos de doctores (numero de citas)
                    System.out.println("Número de citas totales");
             
                    %>
                    </div>

                    <div class="categoriados">
                      
                       Citas
                    </div>  

                  </div>

                    <!-- nuevo cuadrado blanco de textos-->

                    <br>

                    <div class="cuadradodatosblancostratamientos">
                    <%
                    //////métodos de agarrar datos de pacientes afiliados al doctor
                    System.out.println("Número de pacientes tipo 3");
             
                    %>
                      pacientes tipo 1
                        <div class="niveldetratatres">
                    <%
                    //////métodos de agarrar datos de pacientes afiliados al doctor
                    System.out.println("Número de pacientes tipo 3");
             
                    %>
                            <div class="ojo">
                              <i class='fa fa-eye'></i>
                            </div>    
                        </div>
                    </div>

                    <br>

                    <div class="cuadradodatosblancostratamientos">
                    <%
                    //////métodos de agarrar datos de pacientes afiliados al doctor
                    System.out.println("Número de pacientes sin tratamientos");
             
                    %>
                      Sin tratamiento
                        <div class="niveldetratatresver">
                    <%
                    //////métodos de agarrar datos de pacientes afiliados al doctor
                    System.out.println("Número de pacientes sin tratamientos");
             
                    %>
                           
                            
                            <div class="ojo">
                              <i class='fa fa-eye'></i>
                            </div>    
                        </div>
                    </div>

                </div>
              </div>


                 <!-- Aquí va la supuesta grafica  -->
              <div class="grafica">


               
              
              </div>
                <!-- Aquí va la supuesta grafica  -->

            </div>
            <div class="columna2">
              <!-- Aquí va el contenido de todo lo que quieran poner -->
               
                
                <div class="recuadrogris">
                  
                    
                    <%
                    //////métodos de agarrar nombre de mi docto
                    System.out.println("Nombre del doctor");
                    %>
                    <br>
                    <br>
                    Avisos
                    <br>
                   
                    <br>
                    
                    
                    
                     <%
                    //////debemos de hacer while de notificaciones de la bd
                    
                   /// while(condicion){
                     out.println("<div class='cuadradonoti'>");
                        
                     out.println("</div>");

                       /// este br se necesita
                     out.println("<br>");
                     

                   /// cierre de la condición
                    %>
                    }
                  
                    <!-- Este br se necesita -->

                   

                   

                   
          
                    <div class="cuadradonotideabajo">
          
                      Recibe notificaciones sobre tus pacientes y próximas citas

                  </div>

                </div>



            </div>
          </div>

         <br>
         <br>

      </div>
  </div>

    
</section>
  <script>
  let sidebar = document.querySelector(".sidebar");
  let closeBtn = document.querySelector("#btn");
  let searchBtn = document.querySelector(".bx-search");

  closeBtn.addEventListener("click", ()=>{
    sidebar.classList.toggle("open");
    menuBtnChange();//calling the function(optional)
  });

  searchBtn.addEventListener("click", ()=>{ // Sidebar open when you click on the search iocn
    sidebar.classList.toggle("open");
    menuBtnChange(); //calling the function(optional)
  });

  // following are the code to change sidebar button(optional)
  function menuBtnChange() {
   if(sidebar.classList.contains("open")){
     closeBtn.classList.replace("bx-menu", "bx-menu-alt-right");//replacing the iocns class
   }else {
     closeBtn.classList.replace("bx-menu-alt-right","bx-menu");//replacing the iocns class
   }
  }
  </script>
</body>
</html>
<%
}else{
    if(si.equals("PassIn")){
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

<div class="ahche">Contraseña incorrecta</div>
<form action="inicioSesionDoctor2.jsp" method="post">
    
    <input type="text" name="CEDULA" value="<%=Cedula%>" class="forminvitex"><br>
            
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

<div class="ahche">Cedula no registrada</div>
<form action="../html/inicioSesionDoctores.html">
    
    <input type="text" class="forminvitex"><br>
            
    <input type="submit" value="Aceptar" class="button-9">
  </form>
    </body>
</html>
<%
    }
}
%>
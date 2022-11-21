<%-- 
    Document   : enlazarmeaDoctor
    Created on : 17 nov 2022, 00:26:24
    Author     : Gonzalo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!-- Created by CodingLab |www.youtube.com/CodingLabYT-->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <link rel="shortcut icon" href="../images/iconoglucky.ico">
    <!--<title> Responsive Sidebar Menu  | CodingLab </title>-->
    <link rel="stylesheet" href="../css/enlazarmeaDoctor.css">
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
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
          <i class='bx bx-search' ></i>
         <input type="text" placeholder="Buscar...">
         <span class="tooltip">Buscar en la página</span>
      </li>
      <li>
        <a href="#">
          <i class='bx bx-grid-alt'></i>
          <span class="links_name">Panel de control</span>
        </a>

        <!-- Inicio del form-->

        <form action="#" class="forminvi">
                    
          <input type="text" id="CURP" name="CURP" value="#" class="forminvitex"   ><br>


          <input type="submit" value="Enviarcurp" class="forminvibu">
  
          </form> 

          <!-- Final del form-->

         <span class="tooltip">Centro de información</span>
      </li>
      <li>
       <a href="#">
         <i class='bx bx-user' ></i>
         <span class="links_name">Doctores</span>
       </a>

       <!-- Inicio del form-->

       <form action="#" class="forminvi">
                    
        <input type="text" id="CURP" name="CURP" value="#" class="forminvitex"   ><br>


        <input type="submit" value="Enviarcurp" class="forminvibu">

        </form> 

        <!-- Final del form-->

       <span class="tooltip">Buscar doctores</span>
     </li>
     <li>
       <a href="#">
         <i class='bx bx-chat' ></i>
         <span class="links_name">Chateo con doctor</span>
       </a>

       <!-- Inicio del form-->

       <form action="#" class="forminvi">
                    
        <input type="text" id="CURP" name="CURP" value="#" class="forminvitex"   ><br>


        <input type="submit" value="Enviarcurp" class="forminvibu">

        </form> 

        <!-- Final del form-->

       <span class="tooltip">Mensajes de mi doctor</span>
     </li>
     <li>
       <a href="#">
         <i class='bx bx-pie-chart-alt-2' ></i>
         <span class="links_name">Niveles</span>
       </a>

       <!-- Inicio del form-->

       <form action="#" class="forminvi">
                    
        <input type="text" id="CURP" name="CURP" value="#" class="forminvitex"   ><br>


        <input type="submit" value="Enviarcurp" class="forminvibu">

        </form> 

        <!-- Final del form-->

       <span class="tooltip">Estado</span>
     </li>
     <li>
       <a href="#">
         <i class='bx bx-food-menu' ></i>
         <span class="links_name">Dietas</span>
       </a>

       <!-- Inicio del form-->

       <form action="#" class="forminvi">
                    
        <input type="text" id="CURP" name="CURP" value="#" class="forminvitex"   ><br>


        <input type="submit" value="Enviarcurp" class="forminvibu">

        </form> 

        <!-- Final del form-->

       <span class="tooltip">Ver dietas</span>
     </li>
     <li>
       <a href="#">
         <i class='bx bx-book-bookmark' ></i>
         <span class="links_name">Citas</span>
       </a>

       <!-- Inicio del form-->

       <form action="#" class="forminvi">
                    
        <input type="text" id="CURP" name="CURP" value="#" class="forminvitex"   ><br>


        <input type="submit" value="Enviarcurp" class="forminvibu">

        </form> 

        <!-- Final del form-->

       <span class="tooltip">Ver mi agenda de citas</span>
     </li>
     <li>
       <a href="#">
         <i class='bx bx-heart' ></i>
         <span class="links_name">Tratamientos</span>
       </a>

       <!-- Inicio del form-->

       <form action="#" class="forminvi">
                    
        <input type="text" id="CURP" name="CURP" value="#" class="forminvitex"   ><br>


        <input type="submit" value="Enviarcurp" class="forminvibu">

        </form> 

        <!-- Final del form-->
        
       <span class="tooltip">Ver mis tratamientos</span>
     </li>
    
     <li class="profile">
         <div class="profile-details">
           <!--<img src="profile.jpg" alt="profileImg">-->
           <div class="name_job">
               <div class="name">
                   
                   
                        <%
     
           System.out.println("Nombre del paciente");
          %>
               </div>
             <div class="job">Paciente</div>
           </div>
         </div>
         <a href="../index.html"><i class='bx bx-log-out' id="log_out" ></i></a>
     </li>
    </ul>
  </div>
  <section class="home-section">
    <div class="text">
      
    </div>
   
  <div class="container">
      <div class="title">Buenos dias 
      
      
           <%
     
           System.out.println("Nombre del paciente");
          %>
      </div>
      <div class="content">

        <br>
        <div class=textoarriba>
          Tu endocrinologo profesional sanitario EPS puede conectarse a tu cuenta de Glucky y realizar seguimiento s etu diabetes en remoto.
          Para ello el EPS debe registrarse primero en Glucky
          <br>
        </div> 
      
          <!-- Aquí va el contenido de todo lo que quieran poner -->
        
        <div class="row">
            <div class="column">
              <br>
                <!-- Aquí va el form  -->
                <div class="center">
                    <div class="textillo">
                           <%
     
           System.out.println("Nombre del paciente");
          %>
                    </div>
                    <br>
                        <div class=textoarribadosform>
                            Para unirte debes de escribir la cédula y código de tu EPS
                            <br>
                        </div> 
                      <form method="post">
                        <div class="txt_field">
                          <input type="text" required>
                          <span></span>
                          <label>Cédula</label>
                        </div>
                        <div class="txt_field">
                          <input type="text" required>
                          <span></span>
                          <label>Código doctor</label>
                        </div>
                        <div class="pass">Información de Glucky...</div>
      
                         <input type="submit" value="Unirme" class="button">
      
                     
                      </form>
                  </div>
                <!-- Aquí termina el form -->
            </div>
            <div class="column">
              <br>
              <div class="recuadro2">
                <div class="imagen"></div>
              </div>
              <div class="vercosos">
                <a href=""></a> 
            </div>
            </div>
        </div>

          <div class="texto">
        
           
            Mi endocrinologo profesinal sanitario ya es usuario de Glucky...
          </div>

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

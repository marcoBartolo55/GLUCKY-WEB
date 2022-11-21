<%-- 
    Document   : nivelesPacienteGlucosaPresion
    Created on : 17 nov 2022, 00:31:31
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
    <link rel="stylesheet" href="../css/nivelesPacienteGlucosaPresion.css">
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
             <div class="name">Nombre usuario</div>
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
      <div class="title">Buenos dias usuario</div>
      <div class="content">

        <br>
        <div class=textoarriba>
          Puedes realizar el seguimiento de tu presión y glucosa Glucky en este apartado
          <br>
        </div> 
      
          <!-- Aquí va el contenido de todo lo que quieran poner -->
        
        <div class="row">
            <div class="column">
              <br>
                <!-- Aquí va el texxto de arriba  -->
                <div class=textoarribaPre>
                    Presión
                    <br>
                  </div> 
                <!-- Aquí termina el texxto de arriba -->

             

            <!-- e -->
                 <br>
               
                 <div class="doctores">
                     <div class=cuadradoblancodos>
                         Dia
                     </div> 
                     <div class="puestodoc">
                         <div class="puesto">
                             El promedio de presión es de:
                         </div>
                         <div class="nombredoc">
                         XXX
                         </div>  
                         Estado "XXXXX"
                     </div>
                 </div>
             <!-- e -->

        <!-- e -->
            <br>
               
            <div class="doctores">
                <div class=cuadradoblancodos>
                    Mes
                </div> 
                <div class="puestodoc">
                    <div class="puesto">
                        El promedio de presión es de:
                    </div>
                    <div class="nombredoc">
                    XXX
                    </div>  
                    Estado "XXXXX"
                </div>
            </div>
        <!-- e -->
        
        <!-- e -->
            <br>
               
            <div class="doctores">
                <div class=cuadradoblancodos>
                    Año
                </div> 
                <div class="puestodoc">
                    <div class="puesto">
                        El promedio de presión es de:
                    </div>
                    <div class="nombredoc">
                    XXX
                    </div>  
                    Estado "XXXXX"
                </div>
            </div>
        <!-- e -->

            </div>
            <div class="column">
              <br>
                <!-- Aquí va el texxto de arriba  -->
                <div class=textoarribaPreDos>
                    Glucosa
                    <br>
                  </div> 
               <!-- Aquí termina el texxto de arriba -->


               <!-- e -->
               <br>
                
                    <div class="doctoresdos">
                        <div class=cuadradoblanco>
                            Dia
                        </div> 
                        <div class="puestodoc">
                            <div class="puesto">
                               El promedio de glucosa es de:
                            </div>
                            <div class="nombredoc">
                           XXX
                            </div>  
                            Estado "XXXXX"
                        </div>
                    </div>
             
              
               <!-- e -->

                 <!-- e -->
                 <br>
                
                 <div class="doctoresdos">
                     <div class=cuadradoblanco>
                         Mes
                     </div> 
                     <div class="puestodoc">
                         <div class="puesto">
                            El promedio de glucosa es de:
                         </div>
                         <div class="nombredoc">
                        XXX
                         </div>  
                         Estado "XXXXX"
                     </div>
                 </div>
          
           
            <!-- e -->

              <!-- e -->
              <br>
                
              <div class="doctoresdos">
                  <div class=cuadradoblanco>
                      Año
                  </div> 
                  <div class="puestodoc">
                      <div class="puesto">
                         El promedio de glucosa es de:
                      </div>
                      <div class="nombredoc">
                     XXX
                      </div>  
                      Estado "XXXXX"
                  </div>
              </div>
       
        
         <!-- e -->

             
               
            </div>
        </div>

        <br>

        <div class=textoarribaPregrafica>
           Gráfico de presión
            <br>
          </div> 


          <br>

          <div class=textoarribaPregrafica2>
            Gráfico de glucosa
             <br>
           </div> 

          <div class="texto">
        
           <br>
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
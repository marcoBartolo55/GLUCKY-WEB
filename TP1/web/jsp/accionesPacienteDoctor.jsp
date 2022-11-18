<%-- 
    Document   : accionesPacienteDoctor
    Created on : 18/11/2022, 12:29:58 PM
    Author     : Sadiputo
--%>

<!DOCTYPE html>
<!-- Created by CodingLab |www.youtube.com/CodingLabYT-->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <link rel="shortcut icon" href="../images/iconoglucky.ico">
    <title>Asiganción de Tratamientos</title>
    <link rel="stylesheet" href="../css/accionesPacienteDoctor.css">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link rel="shortcut icon" href="../img/iconoglucky.ico">
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
                    
              <input type="text" id="CURP" name="CURP" value="#" class="forminvitex" disabled  ><br>
            
            
              <input type="submit" value="Enviarcurp" class="forminvibu">
              
            </form> 

  <!-- Final del form-->
             <span class="tooltip">Centro de información</span>
          </li>
          <li>
           <a href="#">
             <i class='bx bx-user' ></i>
             <span class="links_name">Pacientes</span>
           </a>
           <!-- Inicio del form-->

           <form action="#" class="forminvi">
                    
            <input type="text" id="CURP" name="CURP" value="#" class="forminvitex" disabled  ><br>
          
          
            <input type="submit" value="Enviarcurp" class="forminvibu">
            
          </form> 

<!-- Final del form-->
           <span class="tooltip">Buscar pacientes</span>
         </li>
         <li>
           <a href="#">
             <i class='bx bx-chat' ></i>
             <span class="links_name">Chateo con pacientes</span>
           </a>
           <!-- Inicio del form-->

           <form action="#" class="forminvi">
                    
            <input type="text" id="CURP" name="CURP" value="#" class="forminvitex" disabled  ><br>
          
          
            <input type="submit" value="Enviarcurp" class="forminvibu">
            
          </form> 

<!-- Final del form-->
           <span class="tooltip">Chatear con pacientes</span>
         </li>
       
         <li>
           <a href="#">
             <i class='bx bx-circle' ></i>
             <span class="links_name">Peticiones</span>
           </a>
           <!-- Inicio del form-->

           <form action="#" class="forminvi">
                    
            <input type="text" id="CURP" name="CURP" value="#" class="forminvitex" disabled  ><br>
          
          
            <input type="submit" value="Enviarcurp" class="forminvibu">
            
          </form> 

<!-- Final del form-->
           <span class="tooltip">Ver peticiones</span>
         </li>
         <li>
           <a href="#">
             <i class='bx bx-book-bookmark' ></i>
             <span class="links_name">Citas</span>
           </a>
           <!-- Inicio del form-->

           <form action="#" class="forminvi">
                    
            <input type="text" id="CURP" name="CURP" value="#" class="forminvitex" disabled  ><br>
          
          
            <input type="submit" value="Enviarcurp" class="forminvibu">
            
          </form> 

<!-- Final del form-->
           <span class="tooltip">Ver mi agenda de citas</span>
         </li>
         
        
         <li class="profile">
             <div class="profile-details">
               <!--<img src="profile.jpg" alt="profileImg">-->
               <div class="name_job">
                 <div class="name">Nombre usuario</div>
                 <div class="job">Doctor</div>
               </div>
             </div>
             <i class='bx bx-log-out' id="log_out" ></i>
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
          Tu endocrinologo profesional sanitario EPS puede conectarse a tu cuenta de Glucky y realizar seguimiento s etu diabetes en remoto.
          Para ello el EPS debe registrarse primero en Glucky
          <br>
        </div> 
      
          <!-- Aquí va el contenido de todo lo que quieran poner -->
        
        <div class="row">
            <div class="column">
              <br>
                <!-- Aquí va el form  -->
                <br>
                <div class="recuadro2">
                  <div class="imagen5">
                    <div class="imagen6">
                    </div>
                  </div>

                  <div class="imagen">

                    Paciente
                  </div>

                  <div class="imagen2">

                    Nombre Apellido Apellido
                  </div>

                  <div class="imagen3">

                    Estado X
                    <br>
                    X citas
                    <br>
                    Diabetes tipo X
                  </div>


                  <br>
                  <div class="imagen4">

                  
                  </div>


                </div>
                
                <!-- Aquí termina el form -->
            </div>
            <div class="column">
                <br>
                <br>
<!--  coso -->

                <div class=textocuadrados>
                    <br>
                    Gestionar citas del paciente
                    <br>
                    <br>

                    <div class="botonver">
                        <a href="#" class="linkear">Vamos</a>
                        <br>
                    </div>
                  </div> 
                  
                  <br>

                  

                  <div class=cuadradoblancodos> 
                    <form action="#" class="formu3">
                      <input type="text" id="CURP" name="CURP" value="#" class="forminvitexDOS" disabled  ><br>
                  
                  
                    <input type="submit" value="Agendar" class="formi">
                  </form> 
                  
                  <div>?</div>
                  
                  <form action="#" class="formu3">
                    <input type="text" id="CURP" name="CURP" value="#" class="forminvitexDOS" disabled  ><br>
                  
                  
                  <input type="submit" value="Ver" class="formi">
                  </form>
             </div> 

<!--  coso -->


<!--  coso -->

<div class=textocuadrados>
  <br>
  Gestionar tratamientos del paciente
  <br>
  <br>

  <div class="botonver">
      <a href="#" class="linkear">Vamos</a>
      <br>
  </div>
</div> 

<br>



<div class=cuadradoblancodos> 
  <form action="#" class="formu3">
    <input type="text" id="CURP" name="CURP" value="#" class="forminvitexDOS" disabled  ><br>


  <input type="submit" value="Agendar" class="formi">
</form> 

<div>?</div>

<form action="#" class="formu3">
  <input type="text" id="CURP" name="CURP" value="#" class="forminvitexDOS" disabled  ><br>


<input type="submit" value="Ver" class="formi">
</form>
</div> 

<!--  coso -->

<!--  coso -->

<div class=textocuadrados>
  <br>
  Gestionar dietas del paciente
  <br>
  <br>

  <div class="botonver">
      <a href="#" class="linkear">Vamos</a>
      <br>
  </div>
</div> 

<br>



<div class=cuadradoblancodos> 
  <form action="#" class="formu3">
    <input type="text" id="CURP" name="CURP" value="#" class="forminvitexDOS" disabled  ><br>


  <input type="submit" value="Agendar" class="formi">
</form> 

<div>?</div>

<form action="#" class="formu3">
  <input type="text" id="CURP" name="CURP" value="#" class="forminvitexDOS" disabled  ><br>


<input type="submit" value="Ver" class="formi">
</form>
</div> 

<!--  coso -->

<!--  coso -->

<div class=textocuadrados>
  <br>
  Gestionar datos del paciente
  <br>
  <br>

  <div class="botonver2">
      <a href="#" class="linkear2">Observar</a>
      <br>
  </div>
</div> 

<br>



<div class=cuadradoblancodos> 
  <form action="#" class="formu3">
    <input type="text" id="CURP" name="CURP" value="#" class="forminvitexDOS" disabled  ><br>


  <input type="submit" value="Agendar" class="formi">
</form> 

<div>?</div>

<form action="#" class="formu3">
  <input type="text" id="CURP" name="CURP" value="#" class="forminvitexDOS" disabled  ><br>


<input type="submit" value="Ver" class="formi">
</form> 
</div> 

<!--  coso -->

<br>

            </div>
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
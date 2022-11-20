<%!String Curp;%>
<%Curp =request.getParameter("CURP");%>
<!DOCTYPE html>
<!-- Created by CodingLab |www.youtube.com/CodingLabYT-->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <!--<title> Responsive Sidebar Menu  | CodingLab </title>-->
    <link rel="stylesheet" href="../css/inicioSesionDoctor_1.css">
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
<body>
 
    
    
    
  <section class="home-section">
    <div class="text">
      
    </div>
   
  <div class="container">
      <div class="title">Buenos dias usuario</div>
      <div class="content">

        
        <br>
        <div class=textoarriba>
          Aqu� podr�s iniciar sesi�n
          <br>
        </div> 
       

            <div class="center">
              <div class="textillo">
                Glucky pacientes
              </div>
                <form method="post" action="../jsp/inicioSesionPacientes.jsp">
                  <div class="txt_field">
                      <input type="text" value="<%=Curp%>" style="text-transform:uppercase;" maxlength="18" minlength="18" name="CurpForm" pattern="[A-Z0-9]+" placeholder="                         Ejemplo: SASO750909HDFNNS05" required >
                    <span></span>
                    <label>CURP</label>
                  </div>
                  <div class="txt_field">
                    <input type="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" maxlength="30" name="PassForm" placeholder="                         Escribe la contrase�a. Ejemplo: ehdfEHDF12345*?'\!" required>
                    <span></span>
                    <label>Contrase�a</label>
                  </div>
                  <div class="pass">Informaci�n de Glucky...</div>

                   <input type="submit" value="Iniciar sesi�n" class="button">

                  <div class="signup_link">
                    �No te has registrado? <a href="../html/RegistroPacientes.html">Registrate como Paciente</a>
                  </div>
                </form>
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
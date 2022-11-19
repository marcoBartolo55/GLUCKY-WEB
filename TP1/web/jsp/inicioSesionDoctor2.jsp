<%!String Cedula;%>
<%Cedula =request.getParameter("CEDULA");%>
<!DOCTYPE html>
<!-- Created by CodingLab |www.youtube.com/CodingLabYT-->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <!--<title> Responsive Sidebar Menu  | CodingLab </title>-->
 
     <link rel="stylesheet" href="../css/inicioSesionPaciente_1.css">
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
          Aquí podrás iniciar sesión
          <br>
        </div> 
       

            <div class="center">
              <div class="textillo">
                Glucky doctores
              </div>
                <form method="post" action="inicioSesionDoctor.jsp">
                  <div class="txt_field">
                      <input value="<%=Cedula%>" type="text" maxlength="8" minlength="8" placeholder="                                       Ejemplo:12345678" name="CedulaForm" pattern="[0-9]{8}" required>
                    <span></span>
                    <label>Cédula profesional</label>
                  </div>
                  <div class="txt_field">
                      <input type="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" name="PassForm" maxlength="30" placeholder="                          Ejemplo: ehdfEHDF12345*?'\!" required>
                    <span></span>
                    <label>Contraseña</label>
                  </div>
                  <div class="pass">Información de Glucky...</div>

                   <input type="submit" value="Iniciar sesión" class="button">

                  <div class="signup_link">
                    ¿No te has registrado? <a href="../html/RegistroDoctores.html">Registrate como doctor</a>
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
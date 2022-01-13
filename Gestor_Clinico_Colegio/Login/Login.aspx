<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Gestor_Clinico_Colegio.Login.Login" %>

<!DOCTYPE html>
<html lang="es">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <title> Principal</title>   
    <link href="../Img/rcm-80x36px.png" rel="shortcut icon" type="image/x-icon" />

    <style>
        body{
            margin:0;
            top:0;
            left:0;
            right:0;
            bottom:0;

        }
        .footer{
            left:0;
            right:0;
            width:100%;
            position:sticky;
            bottom:0;
            text-align:center; 
            overflow:auto;
            background-color:cornflowerblue;
        }

    </style>

</head>
<body>
        <div class="w3-sidebar w3-bar-block w3-card w3-animate-left" style="background-color:cornflowerblue;display:none" id="mySidebar">
          <button class="w3-bar-item w3-button w3-xlarge" style="background-color:cornflowerblue" onclick="w3_close()">
              &times;
          </button>
          <a href="FichaClinica/AgendarAtencion.aspx" class="w3-bar-item w3-button">Ficha medica</a>
          <a href="../FichaClinica/VistaMedico.aspx" class="w3-bar-item w3-button">Agenda</a>
          <a href="#" class="w3-bar-item w3-button">Link 3</a>
        </div>

    <!-- Barra de horizontal -->
    
    
        <div id="main">

            <div class="w3-xxlarge"  style="background-color:cornflowerblue">
              <button id="openNav" class="w3-button w3-large" style="background-color:cornflowerblue" onclick="w3_open()">&#9776;</button>
                <img src="../Img/rcm-80x36px.png"  alt="Imagen RCMSalud" >
            </div>


           
                <div class="row">
                    <div class="col-sm-6 col-md-6 col-lg-6 mx-auto">
                        <img src="../Img/rcm-80x36px.png" class="w-50" />
                    </div>
                </div>
                    <h5>Para continuar, ingrese su usuario y contraseña</h5>
                    <div class="row">
                        <div class="col-sm-12 col-md-12 col-lg-12">
                            <label>Usuario</label>
                            <input type="text" />

                            <label>Contraseña</label>
                            <input type="password">
                        </div>
                    </div>
                    <div class="row">
                            <div class="col-sm-6 col-md-6 col-lg-6 mx-auto">
                                <button class="btn btn-primary" height="40px" width="200px" onclick="BtnIngresar_Click">Ingresar</button>
                            </div>
                        </div>
                    </div>
               

            <div>
                    <div class="col-6">
                    <br />
                    <img src="../Img/rcm_clinico_portada_op2.png"   alt="">
                </div>
            </div>
            

             <script>
                 function w3_open() {
                     document.getElementById("main").style.marginLeft = "15%";
                     document.getElementById("mySidebar").style.width = "15%";
                     document.getElementById("mySidebar").style.display = "block";
                     document.getElementById("openNav").style.display = 'none';
                 }
                 function w3_close() {
                     document.getElementById("main").style.marginLeft = "0%";
                     document.getElementById("mySidebar").style.display = "none";
                     document.getElementById("openNav").style.display = "inline-block";
                 }
             </script>

            <div class="footer">
                <p>&copy; all Copyrigth reserved <%: DateTime.Now.Year %> - Mi aplicación ASP.NET By: Juan Uribe </p>
            </div>
        </div>
     
</body>
</html>
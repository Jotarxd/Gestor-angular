<%@ Page Language="C#" AutoEventWireup="true"  CodeBehind="AgendarAtencion.aspx.cs" Inherits="Gestor_Clinico_Colegio.FichaClinica.AgendarAtencion" %>

<!DOCTYPE html>
<html lang="es">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>     
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    
    <title> Principal</title>   
    <link href="../Img/rcm-80x36px.png" rel="shortcut icon" type="image/x-icon"/>

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
          <button class="w3-bar-item w3-button w3-xlarge"onclick="w3_close()">
              &times;
          </button>
          <a href="../Default.aspx" class="w3-bar-item w3-button">Principal</a>
          <a href="VistaMedico.aspx" class="w3-bar-item w3-button">Agenda</a>
          <a href="../Login/Login.aspx" class="w3-bar-item w3-button">Salir</a>
        </div>

    <!-- Barra de horizontal -->
    
    
        <div id="main">

            <div class="w3-xxlarge" style="background-color:cornflowerblue">
              <button id="openNav" class="w3-button w3-xlarge" style="background-color:cornflowerblue" onclick="w3_open()">&#9776;</button>
                <img src="../Img/rcm-80x36px.png"  alt="Imagen RCMSalud" >
            </div>

            <div style="margin:1%" >
                <div class="card-body" style="margin-left: 5%;">

                    <div class="row">

                        <div class="col-sm-8 col-md-8 col-lg-8">
                            <center>
                                <h1>Ficha de paciente</h1>
                                <label>Rut:
                                    <input id="txt_rut" required/></label>
                            </center>
                        </div>

                        <div class="col-sm-4 col-md-4 col-lg-4" style="border: solid 0.5px gray; border-radius: 5px; padding: 1em; margin: 1%; width: 235px;">
                            <header>Historial Medico</header>
                            <textarea style="border: solid 0.5px gray; width: 100%; border-radius: 5px; border-color: gray; padding: 1em"></textarea>
                        </div>

                    </div>

                    <div style="margin-bottom:8px">
                    <div class="row">

                        <div class="col-sm-4 col-md-4 col-lg-4">
                            <label>Nombre:</label><input id="Txt_rut" type="text" style="width:90%"/><br/>
                            <label>Apellido : </label><input id="Txt_apPaterno" type="text" style="width:90%"/><br />                        
                            <label>Apellido Materno:  </label> <input id="Txt_apmaterno" type="text" style="width:90%"/><br />
                        </div>

                        <div class="col-sm-4 col-md-4 col-lg-4">
                            <label>Fecha Nacimiento: </label><input id="fecha" type="date" style="width:90%"/><br />                        
                            <label>Genero:  </label><input id="Txt_genero" type="text"style="width:90%" /> <br />
                            <label>Estado Civil: </label><input id="Txt_Ecivil" type="text" style="width:90%" /><br />
                        </div>

                        <div class="col-sm-4 col-md-4 col-lg-4">
                            <label>Direccion:  </label><input id="Txt_dir" type="text"style="width:90%" /> <br />
                            <label>Cuidad: </label><input id="Txt_cuidad" type="text" style="width:90%" /><br />                        
                            <label>Comuna:  </label><input id="Txt_comuna" type="text"style="width:90%" /> <br />
                        </div>

                    </div>

                    <div class="row">

                        <h4 style="margin-left:1%;margin-top:1%">Datos De Contacto</h4>

                        <div class="col-sm-4 col-md-4 col-lg-4">
                            <label>Telefono: </label><br />+<input name="+" id="Txt_cod" type="number" style="width:45px" /><input id="Txt_tel" title="numero" pattern="[0-9]{3}-[0-9]{2}-[0-9]{3}" type="tel" style="width:75%;margin-left:1%" /><br />
                        </div>

                        <div class="col-sm-4 col-md-4 col-lg-4">
                             <label>Email: (opcional)</label><input id="Txt_email" type="email" style="width:90%" /> <br />
                        </div>
                    </div>

                    <div class="row">

                        <div class="col-sm-4 col-md-4 col-lg-4">
                             <label>Procedimiento: </label><input id="Txt_procedimiento" type="email" style="width:90%" /> <br />
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                             <label>Horario: </label><input id="Txt_horario" type="time" style="width:90%" /> <br />
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                             <label>Profesional: </label><input id="Txt_profesional" type="text" style="width:90%" /> <br />
                        </div>  

                    </div>

                    <div class="row">

                        <div class="col-sm-4 col-md-4 col-lg-4">
                             <label>Sala: </label><br /><input id="Txt_sala" type="number" style="width:90%" /> <br />
                        </div>

                        <div class="col-sm-4 col-md-4 col-lg-4">
                             <label>Camilla: </label><br /><input id="Txt_camilla" type="number" style="width:90%" /> <br />
                        </div>

                    </div>

                        <!-- The Modal -->
                        <div class="modal" id="myModal">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">

                                    <!-- Modal Header -->
                                    <div class="modal-header">
                                        <h4 class="modal-title">Ficha De Atencion</h4>
                                    </div>

                                    <!-- Modal body -->
                                    <div class="modal-body">

                                        <div class="row">
                                            <div class="col-sm-4 col-md-4 col-lg-4">
                                                <label>Paciente </label><br /><input id="Txt_Modal_Paciente" type="text" style="width: 90%" /><br />
                                            </div>

                                            <div class="col-sm-4 col-md-4 col-lg-4">
                                                <label>Edad: </label><br /><input id="Txt_Modal_Edad" type="number" style="width: 90%" /><br />
                                            </div>
                                            
                                            <div class="col-sm-4 col-md-4 col-lg-4">
                                                <label>Fecha Prestacion: </label><br /><input id="Txt_Modal_fec_prestacion" type="date" style="width: 90%" /><br />
                                            </div>
                                        </div>

                                         <div class="row">
                                            <div class="col-sm-4 col-md-4 col-lg-4">
                                                <label>Grupo Sanguineo (opcional):</label><br /><input id="Txt_Modal_Gsangre" type="text" style="width: 90%" /><br />
                                            </div>

                                            <div class="col-sm-4 col-md-4 col-lg-4">
                                                <label>Peso (kg) : </label><br /><input id="Txt_Modal_peso" type="number" style="width: 90%" /><br />
                                            </div>
                                            
                                            <div class="col-sm-4 col-md-4 col-lg-4">
                                                <label>Talla (cm): </label><br /><input id="Txt_Modal_talla" type="number" style="width: 90%" /><br />
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-sm-4 col-md-4 col-lg-4">
                                                <label>Prestacion </label><br /><input id="Txt_Modal_prestacion" type="text" style="width: 90%" /><br />
                                            </div>

                                            <div class="col-sm-4 col-md-4 col-lg-4">
                                                <label>Profesional: </label><br /><input id="Txt_Modal_profesional" type="number" style="width: 90%" /><br />
                                            </div>
                                            
                                            <div class="col-sm-4 col-md-4 col-lg-4">
                                                <label>N° Sesiones(cm): </label><br /><input id="Txt_Modal_Nsesiones" type="number" style="width: 90%" /><br />
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-sm-11 col-md-11 col-lg-11" style="border:solid 0.5px gray; border-radius:5px; padding:1em; margin:1%">
                                                <header> Evaluacion:</header>
                                                <textarea style="border:solid 0.5px gray;width:98%; border-radius:5px;border-color:gray; padding:1em; text-size-adjust:auto"></textarea>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-sm-11 col-md-11 col-lg-11" style="border:solid 0.5px gray; border-radius:5px; padding:1em; margin:1%">
                                                <header> Procedimiento:</header>
                                                <textarea style="border:solid 0.5px gray;width:98%; border-radius:5px;border-color:gray; padding:1em; text-size-adjust:auto"></textarea>
                                            </div>
                                        </div>

                                    </div>

                                    <!-- Modal footer -->
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                                        <button type="button" class="btn btn-primary">Guardar</button>
                                    </div>

                                </div>
                            </div>
                        </div>

                </div>
                
                <center>
                    <div class="row" style="white-space:nowrap">
                        <div class="col-sm-12 col-md-12 col-lg-12">
                            <input type="submit" Value="Guardar" class="btn-primary" style="border-radius:5px"/>
                       
                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#myModal"> Ficha  </button>
                        
                            <input type="submit" Value="Pagar" class="btn-primary" style="background-color:gray;border-radius:5px;border-color:gray"/>
                       
                            <input type="submit" Value="Volver" class="btn-primary" style="background-color:gray;border-radius:5px;border-color:gray"/>
                        
                            <input type="submit" Value="Eliminar" class="btn-danger" style="border-radius:5px"/>
                        </div>
                    </div>
                </center>
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
        </div>
   
        <div class="footer">
            <p>&copy; all Copyrigth reserved <%: DateTime.Now.Year %> - Mi aplicación ASP.NET By: Juan Uribe </p>
        </div>
    </div>
</body>
</html>

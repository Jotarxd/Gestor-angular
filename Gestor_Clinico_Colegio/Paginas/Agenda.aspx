<%@ Page Title="Ficha" Language="C#" MasterPageFile="~/Intranet.Master" AutoEventWireup="true" CodeBehind="Agenda.aspx.cs" Inherits="Gestor_Clinico_Colegio.FichaPaciente" %>


<asp:Content ContentPlaceHolderID="titulo" runat="server">
    Agenda
</asp:Content>


<asp:Content ContentPlaceHolderID="head" runat="server" ID="contenido" >

        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>     
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    
        <link href="Img/rcm-80x36px.png" rel="shortcut icon" type="image/x-icon" />
</asp:Content>

<asp:Content ContentPlaceHolderID="bodycontent" runat="server">
    
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

    <style>
        body{
            left:100%;
            right:100%;
        }
        .leftagenda {
          position:absolute;
          padding: 5px;
          float: left;
          width: 23%;
          top:10%;
          bottom:40%;
        }
        .leftrevisado {
          position:absolute;
          padding: 5px;
          float: left;
          width:23%;
          top:65%;
          bottom:0%
        }
        div.scrollmenu {
          overflow: auto;
          white-space: nowrap;
        }
        div.scrollmenu a {
          display: inline-block;
          color: black;
          text-align: center;
          padding: 14px;
          text-decoration: none;
        }
        .scrollmenu {
          position:relative;
          border: solid 0.5px gray;
          border-radius: 5px;
          margin-top:8px;
          margin-right:1%;
          margin-bottom:8px;
          top:10%;
          padding:20px;
          float: right;
          width: 72%;
        }
        .rightbody {
          position:relative;
          border: solid 0.5px gray;
          border-radius: 5px;
          top:40%;
          margin-right:1%;
          padding: 10px;
          float: right;
          width: 72%;
        }
        @media screen and (max-width:200px){
            .right,.rightbody{
                width:100%;
                height:auto;
                position:relative;
            }
        }
        @media screen and (max-width:200px){
            .left{
                width: 130px;
            }
        }
        .footer{
            width:100%;
            position:sticky;
            bottom:0;
            left:0;
            text-align:center; 
            background-color:cornflowerblue;
            overflow:auto;
        }
        #item{
            background-color:transparent;
            border:hidden;
            margin:10px;
        }
        #item:hover{
            background-color:dodgerblue;
            border-radius: 5px;
            cursor:pointer;
        }
        #revisado{
            background-color:transparent;
            border:hidden;
            margin:10px;
        }
        #revisado:hover{
            background-color:green;
            border-radius: 5px;
            cursor:pointer;
        }
        #menuitem:hover{
            cursor:pointer;
        }
    </style>

  <div style="margin-top:1%"> 
            <header style="margin-left:1%" >Agenda</header>

            <div class="leftagenda" style="margin-top:30px;overflow-y:scroll;overflow-x:hidden">
                
                <button id="item" style="width:300px;height:75px" type="submit">
                <img src="../Img/user-icon.png"  width="60" height="60" style="float:left; text-align:center"/>
                    {{Nombre.Paciente}}+{{Apellido.Paciente}}<br />{{Hora.Atencion}}
                </button>
                
                <button id="item" style="width:300px;height:75px" type="submit">
                <img src="../Img/user-icon.png"  width="60" height="60" style="float:left; text-align:center"/>
                    {{Nombre.Paciente}}+{{Apellido.Paciente}}<br />{{Hora.Atencion}}
                </button>
                
                <button id="item" style="width:300px;height:75px" type="submit">
                <img src="../Img/user-icon.png"  width="60" height="60" style="float:left; text-align:center"/>
                    {{Nombre.Paciente}}+{{Apellido.Paciente}}<br />{{Hora.Atencion}}
                </button>
                
                <button id="item" style="width:300px;height:75px" type="submit">
                <img src="../Img/user-icon.png"  width="60" height="60" style="float:left; text-align:center"/>
                    {{Nombre.Paciente}}+{{Apellido.Paciente}}<br />{{Hora.Atencion}}</button>
                
                <button id="item" style="width:300px;height:75px" type="submit">
                <img src="../Img/user-icon.png"  width="60" height="60" style="float:left; text-align:center"/>
                    {{Nombre.Paciente}}+{{Apellido.Paciente}}<br />{{Hora.Atencion}}
                </button>
                
                <button id="item" style="width:300px;height:75px" type="submit">
                <img src="../Img/user-icon.png"  width="60" height="60" style="float:left; text-align:center"/>
                    {{Nombre.Paciente}}+{{Apellido.Paciente}}<br />{{Hora.Atencion}}
                </button>
                
            </div>

             <header class="leftrevisado">Pacientes Listos</header>
            <div class="leftrevisado" disabled="true" style="margin-top:30px;overflow-y:scroll;overflow-x:hidden">
               
                <button id="revisado" style="width:300px;height:75px" onclick="">
               <img src="../Img/user-icon.png"  width="60" height="60" style="float:left; text-align:center"/>
                    {{Nombre.Paciente}}+{{Apellido.Paciente}}<br />{{Hora.Atencion}}
                </button>

                <button id="revisado" style="width:300px;height:75px" type="submit">
                <img src="../Img/user-icon.png"  width="60" height="60" style="float:left; text-align:center"/>
                    {{Nombre.Paciente}}+{{Apellido.Paciente}}<br />{{Hora.Atencion}}
                </button>

                <button id="revisado" style="width:300px;height:75px" type="submit">
                <img src="../Img/user-icon.png"  width="60" height="60" style="float:left; text-align:center"/>
                    {{Nombre.Paciente}}+{{Apellido.Paciente}}<br />{{Hora.Atencion}}
                </button>

                <button id="revisado" style="width:300px;height:75px" type="submit">
                <img src="../Img/user-icon.png"  width="60" height="60" style="float:left; text-align:center"/>
                    {{Nombre.Paciente}}+{{Apellido.Paciente}}<br />{{Hora.Atencion}}
                </button>

                <button id="revisado" style="width:300px;height:75px" type="submit">
                <img src="../Img/user-icon.png"  width="60" height="60" style="float:left; text-align:center"/>
                    {{Nombre.Paciente}}+{{Apellido.Paciente}}<br />{{Hora.Atencion}}
                </button>
            </div>


        </div>       

        <div class="scrollmenu">
            <header>Menu</header>
            <center>
                <a href="#">
                    <img id="menuitem" src="../Img/receta.png" style="width:50px" /> <br />
                    <textbox>Receta</textbox>
                </a>

                <a href="#">           
                    <img id="menuitem" src="../Img/derivacion.png" style="width:50px"/>  <br />
                    <textbox >Derivacion</textbox>
                </a>

                <a href="#">      
                    <img id="menuitem" src="../Img/examenes.png"   style="width:50px"/> <br />
                    <textbox>Examenes</textbox>
                </a> 
            
                <a href="#">
                    <img id="menuitem" src="../Img/telemedicina.png"   style="width:50px"/> <br />
                    <textbox>Telemedicina</textbox>
                </a>

                <a href="#">
                    <img id="menuitem" src="../Img/Licencia.png"   style="width:50px"/> <br />
                    <textbox>Licencia Medica</textbox>
                </a>                    

                <a href="#">
                <img id="menuitem" src="../Img/imprimir.png"   style="width:50px"/> <br />
                <textbox>Imprimir</textbox>
                </a>
            </center>
        </div>

        <div class="rightbody" style="margin-bottom:5%" >
            <header>Datos Pacientes</header>
            <div class="card-body " style="margin-left:2%" >

                <div class="row">
                    <center>
                        <div class="col-sm-9 col-md-9 col-lg-9">
                            <textbox>Fecha Atencion:</textbox>
                            <input type="date"/>
                        </div>
                    </center>
                </div>

                <div class="row"">
                    <div class="col-sm-3 col-md-3 col-lg-3">
                        <label style="width:100px">Rut:</label><input id="Txt_rut" disabled type="text" style="width:90%"/><br/>
                        <label>Genero: </label><input id="Txt_genero" disabled type="text" style="width:90%"/>
                    </div>
                    <div class="col-sm-3 col-md-3 col-lg-3">
                        <label>Paciente:  </label> <input id="Txt_paciente" type="text" disabled style="width:90%"/>
                        <label>Peso: </label><input id="Txt_peso" disabled type="text"style="width:90%"/>
                    </div>
                    <div class="col-sm-2 col-md-2 col-lg-2">
                        <label>Edad:  </label><input id="Txt_edad" disabled type="text"style="width:90%" onload="cargardato" /> <br />
                        <label>Talla: </label><input id="Txt_talla" disabled type="text" style="width:90%" />
                    </div>

                    <div class="col-sm-3 col-md-3 col-lg-3" style="border:solid 0.5px gray; border-radius:5px; padding:1em;margin:1%">
                        <header>Historial Medico</header>
                        <textarea style="border:solid 0.5px gray;width:100% ; border-radius:5px;border-color:gray;"></textarea>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-11 col-md-11 col-lg-11" style="border:solid 0.5px gray; border-radius:5px; padding:1em; margin:1%">
                        <header> Motivo Consulta</header>
                        <textarea style="border:solid 0.5px gray;width:98%; border-radius:5px;border-color:gray; padding:1em; text-size-adjust:auto"></textarea>
                    </div>                    
                </div>

                <div class="row">
                    <div class="col-sm-11 col-md-11 col-lg-11" style="border:solid 0.5px gray; border-radius:5px; padding:1em; margin:1%">
                        <header>Detalle</header>
                        <textarea style="border:solid 0.5px gray;width:100%;border-radius:5px;border-color:gray; padding:1em"></textarea>
                    </div>
                </div>

                <div class="row">    
                    <img  src="../Img/CIE 10.png" style="width:85px;height:85px" />
                    <div class="col-sm-10 col-md-10 col-lg-10" style="border:solid 0.5px gray; border-radius:5px; padding:1em;margin:1%">
                        <header">Diagnostico</header>                        
                        <textarea style="border:solid 0.5px gray;width:100%; border-radius:5px; border-color:gray;padding:1%"></textarea> 
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Gestor_Clinico_Colegio._Default" %>


<asp:Content ContentPlaceHolderID="titulo" runat="server">
    Login
</asp:Content>

<asp:Content ContentPlaceHolderID="head" runat="server">    

        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>     
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>     
        
</asp:Content>

<asp:Content ContentPlaceHolderID="bodycontent" runat="server">
<style>
   @media screen and (max-width: 990px) {
    #imagenlogin{
    display:none;
    }
    }
 </style>

<div class="container-fluid">
    <div class="row" style="margin-bottom=150px;">
        <div class="col-lg-1 col-md-1 col-sm-1">
        </div>
        <div class="col-lg-6 col-md-6 col-sm-10">       
             <table class="w3-table">
                <tr>
                     <th></th>
                     <th><img src="../Img/rcm_clinico_logo (1).png" style="width:150px" /></th>
                </tr>
                <tr>
                     <th></th>
                     <th><h7>Para continuar, ingrese su usuario y contraseña</h7></th> 
                </tr>
                <tr>
                      <td>Nombre de Usuario</td>
                      <td><input style="width:300px" ID="TextUsuario" type="password"  ></td>
                </tr>
                <tr>
                      <td>Ingresar Contraseña</td>
                      <td><input style="width:300px" ID="TextPassword" type="password"></td>
                </tr>
                <tr>
                      <td></td>       
                      <td><a href="../Paginas/Buscador.aspx" class="btn btn-secondary btn-md">volver</a>
                          <button class="btn btn-primary btn-md" style="width:100px">Ingresar</button>
                      </td>
                </tr>
             </table>                
       </div>
<div id="imagenlogin" class="col-lg-3  "  >
    <img src="../Img/rcm_clinico_portada_op2.png" style="max-width:500px;">
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
    </div>
</asp:Content>


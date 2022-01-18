<%@ Page Title="" Language="C#" MasterPageFile="~/Inicio.master" AutoEventWireup="true" CodeBehind="CompraBono.aspx.cs" Inherits="Gestor_Clinico_Colegio.FichaPaciente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="titulo" runat="server">
    Compra Bono
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>     
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>     
        
        <link href="../Img/rcm-80x36px.png" rel="shortcut icon" type="image/x-icon" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="bodycontent" runat="server">

    <div id="main">
        <center>
            <h1>Cita confirmada Exitosamente </h1>
        </center>           
     </div>
    
    <div class="w3-row ">
        <div class="w3-col w3-container" style="width:10%"></div>
            <div class="w3-col w3-container " style="width:20%">
                <p>
                    <a>Paciente </a> <hr />
                    <a>Profesional</a><hr />
                    <a>Especialidad</a><hr />
                    <a>Fecha</a><br />       
                </p>
            </div>
            <div class="w3-col w3-container w3-silver" style="width:60%">
                <p>
                         
                </p>
            </div>
  
        <div class="w3-col w3-container" style="width:10%"></div>


        <div class="w3-row ">
            <div class="w3-col w3-container" style="width:10%"></div>
            <div class="w3-col w3-container" style="width:20%">
                <a>Descargar Bono</a>
            </div>
            <div class="w3-col w3-container" style="width:60%">
                <a href="#" class="w3-bar-item w3-button w3-dark-grey ">Descargar Bono</a>
            </div>
            <div class="w3-col w3-container" style="width:10%"></div>
        </div>
        <hr />
        <div class="w3-row ">
            <div class="w3-col w3-container" style="width:10%"></div>
            <div class="w3-col w3-container" style="width:20%">
            <a href="Buscador.aspx" class="w3-bar-item w3-button w3-blue w3-padding-large ">Pedir nueva cita</a></div>
            <div class="w3-col w3-container" style="width:60%"></div>
        </div>

    </div>
</asp:Content>
 

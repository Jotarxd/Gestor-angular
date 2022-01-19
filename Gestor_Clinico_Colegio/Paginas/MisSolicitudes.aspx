<%@ Page Title="" Language="C#" MasterPageFile="~/Intranet.Master" AutoEventWireup="true" CodeBehind="MisSolicitudes.aspx.cs" Inherits="Gestor_Clinico_Colegio.FichaPaciente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="titulo" runat="server">
    Mis Solicitudes
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>     
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="bodycontent" runat="server">

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

    
    <div class="card container" style="padding:1%;margin:1%">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6">
                <label">Mis Solicitudes</label><br /> 
                <input type="search" id="busqueda"/>
            </div>

            <div class="col-lg-6 col-md-6 col-sm-6">
                <button style="background:none;border:hidden">
                    Agregar 
                    <img src="../Img/PlusIcon.png" style="width:50px" />
                </button>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 mt-3">
                <center>
                    <table border="1" style="position:static;right:100px;width:500px">
		                <tr style="border:1px solid black">
			                <th>Col.Cab.1</th>
			                <th>Col.Cab.2</th>
                            <th>col</th>
		                </tr>
		                <tr style="border:1px solid black">
			                <td>Celda 1</td>
			                <td>Celda 2</td>
                            <td>aaa</td>
		                </tr>
		            </table>
                </center>
            </div>
        </div>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Gestor_Clinico_Colegio.FichaPaciente" %>
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


    <form runat="server" style="position:relative; top:100px; left: 8px;">
        <asp:Login ID="Login1" OnAuthenticate="Login1_Authenticate1" runat="server" Height="189px" Width="436px"></asp:Login>
        
      
        
        <img src="../Img/rcm_clinico_portada_op2.png" style="width:497px; position:relative; top: -259px; left: 513px; height: 309px;"/>
   </form>


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
</asp:Content>

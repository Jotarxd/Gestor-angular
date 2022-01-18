<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"/>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>     
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    

    <style>
        body{
            margin:50px
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <div class="row">

            <header>Area De Examenes</header>

            <div class="col-lg-4 col-md-4 col-sm-4">
                <select>
                        <option>Seleccione una opcion</option>
                </select>
            </div>

            <div class="col-lg-4 col-md-4 col-sm-4">
                <button class="btn-primary">Agregar</button>
            </div>                    
        </div>

        <div class="row-cols-lg-4 row-cols-md-6 row-cols-sm-6">
            <table border="1">
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
        </div>

        <div class="row">
            <label>Cantidad</label>
            <textbox> {{cantidadExamenes}} <p>Examenes Selecionados</p> </textbox>
        </div>
    </form>
</body>
</html>

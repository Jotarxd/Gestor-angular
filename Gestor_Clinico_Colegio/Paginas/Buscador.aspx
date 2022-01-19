﻿<%@ Page Title="buscador" Language="C#" MasterPageFile="~/Inicio.master" AutoEventWireup="true" CodeBehind="Buscador.aspx.cs" Inherits="Gestor_Clinico_Colegio.FichaPaciente" %>


<asp:Content  ContentPlaceHolderID="titulo" runat="server">
    Buscador
</asp:Content>

<asp:Content ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>     
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    
        <link href="Img/rcm-80x36px.png" rel="shortcut icon" type="image/x-icon" />
</asp:Content>

<asp:Content  ContentPlaceHolderID="bodycontent" runat="server">

<style>
      
           body {
                    counter-reset: rows;
               }
            
            table tbody tr {
              counter-increment: rows;
            }
             table .total:before {
                content: counter(rows);
             }

        
</style>



 <div class="container-fluid">
     <div class="container">    
     
    <div class="row" style="margin-top:5px;margin-bottom:25px">
        
        <div class=" col-lg-3 col-md-8 col-sm-12 " style="margin-right=2px;margin-left=2px">                      
                    <br /><h5>Email</h5>                   
                    <input type="text" style="width:235px"/>
            <br />
                    <h5>WhatsApp</h5>
                   +<input name="+" id="Txt_cod" style="width:25px" />
                   <input id="Txt_tel" title="numero" pattern="" type="tel" style="width:auto;margin-left:1%" /><br />                                               
               </div>  
 
           
         <div class="col-lg-5 col-md-4 col-sm-12 "  style="margin-right=5px;margin-left=5px">                                
                   <br /> <div class="form-check form-check-inline" (change)="cambiaVer($event.target.value)">
                                <input class="form-check-input" type="radio" name="inlineRadioOptions" id="rdDia" value="1" checked>
                                <label class="form-check-label" for="rdDia">Ver día  </label>
                    </div>
                    <div class="form-check form-check-inline" (change)="cambiaVer($event.target.value)">
                                <input class="form-check-input" type="radio" name="inlineRadioOptions" id="rdSemana" value="2">
                                <label class="form-check-label" for="rdSemana">Ver Semana</label>
                    </div><br /><br />
                      
                      
                        <label >Inicio:</label>
                        <input type="date" (change)="cambiaFecha($event.target)" [formControl]="fecha1" style="width:130px"/>&nbsp;&nbsp;&nbsp;
                        <label >Termino:</label>
                        <input type="date" (change)="cambiaFecha($event.target)" [formControl]="fecha2" style="width:130px"/>
                        <br /><br />
                         <label >Hora Inicio:</label>
                        <input type="time" id="hrinicio" style="width:100px" />&nbsp;&nbsp;&nbsp;
                        <label >Hora Fin:</label>
                        <input type="time" id="hrtermino" style="width:100px" />
           </div>
        
           <div class="col-lg-3 col-md-8 col-sm-12"  style="margin-right=5px;margin-left=5px">

                       <br /> <div class="radio">
                            <input type="radio" class="btn-check" formcontrolname="tipoDoc" value="1" autocomplete="on" >
                            <label class="btn btn-outline-primary ">RUT</label>
                            <input type="radio" class="btn-check" formcontrolname="tipoDoc" value="2" autocomplete="on">
                            <label class="btn btn-outline-primary ">OTRO DOCUMENTO</label>
                        </div><br />
                         <div class="radio" >
                            <label><input type="radio" name="optradio" value="rafonasa" >  Fonasa  </label>&nbsp;&nbsp;&nbsp;
                            <label><input type="radio" name="optradio" value="raotro" > Otro</label>
                         </div>
                                <input type="text" /><br />
                            
 <!-- Button to Open the Modal Preagendamiento --> 
              <br /> <button type="button" class="btn btn-secondary btn-align-center" data-bs-toggle="modal" data-bs-target="#myModal">Enviar</button>
                         
                  </div><br />  
            
            
            <div class="col-lg-1 col-md-4 col-sm-12 " style="margin-right=5px;margin-left=5px">
                <br /><button class="button button1"; (click)=buscarCita() type="submit"> Agregar Prestacion</button>
            </div>
         </div>
         </div>
     </div>
        
    


    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-12">
                
                <div class="card" style="padding:1px">
                    <div class="card-header">
                        <h5>Prestacion</h5>
                    </div>
                    <div class="container">
                        <div class="radio">
                            <label><input type="radio" name="optradio" value="raconsulta" checked="checked" >Consulta</label>
                        </div>
                        <div class="radio">
                            <label><input type="radio" name="optradio" value="ratelemedicina" >Telemedicina</label>
                        </div>
                        <div class="radio">
                            <label><input type="radio" name="optradio" value="raimagen" >Imagen</label>
                        </div>
                        <div class="radio">
                            <label><input type="radio" name="optradio" value="ralaboratorio" >Laboratorio Clinico</label>
                        </div>
                    </div>
                </div>

                <div class="card" style="padding:1px;margin-top:5px">
                    <div class="card-header">
                            <h5>Especialidad</h5>
                    </div>                        
                    <div>
                        <select name="especialidades" class="form-select"><option selected >Seleccione Especialidad</option></select>
                    </div>
                </div>

                
                <div class="card" style="padding:1px;margin-top:5px">
                    <div class="card-header">
                        <h5>Georeferenciacion</h5>                            
                    </div>

                    <div>
                        <select name="regiones"  class="form-select" (change)="cambiaRegion($event.target.value)">
                            <option selected >Seleccione Region</option>
                            <option [value]="item.reg_idregion" *ngFor="let item of regiones">{{ item.reg_nombrecorto}}</option>
                        </select>
                    </div>
                    <hr />
                    <div>
                        <select name="comunas"  class="form-select" (change)="cambiaComuna($event.target.value)">
                            <option selected >Seleccione Comuna</option>
                            <option [value]="item.com_idcomuna" *ngFor="let item of comunas">{{ item.com_nombrecorto}}</option>
                        </select>
                    </div>
                </div>

            </div>
       
            <div class="col-lg-8 col-md-8 col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <div  class="col-md-12 col-sm-12 col-lg-12" id="raconsulta" >
                                 <table class="w3-table">
                                    <thead>
                                    <tr>
                                        <th>Fecha</th>
                                        <th>hora inicio</th>
                                        <th>Hora Fin</th>
                                        <th>Prestacion</th>
                                        <th>Especialidad</th>
                                        <th>Comuna</th>
                                        <th>Seleccion</th>
                                       </tr>
                                    </thead>
                                    <tbody>
                                     <tr>
                                        <td>20-01-2022</td>
                                        <td>11:00</td>
                                        <td>15:00</td>
                                        <td>Consulta</td>
                                        <td>Broncopulmonar</td>
                                        <td>Renca</td>
                                        <td><input class="w3-check" type="checkbox" checked="checked"></td>
                                   </tr>
                                     
                                    <tr>
                                        <td>18-01-2022</td>
                                        <td>18:00</td>
                                        <td>19:00</td>
                                        <td>Consulta</td>
                                        <td>Obstetra</td>
                                        <td>San Bernardo</td>
                                        <td><input class="w3-check" type="checkbox" checked="checked" ></td>
                                             </tr>
                                         </tbody>
                                          
                                        <tfoot>
                                            <tr>
                                                <th>Total de servicios registrados: <span class="total"> </span></th>
                                                <th></th>
                                                <th></th>
                                            </tr>
                                        </tfoot>
                                    </table>
                            </div>

                         
                        

                        <div id="ratelemedicina"style="display:none">
                                 <table class="w3-table">
                                    <thead>
                                    <tr>
                                        <th>Fecha</th>
                                        <th>hora inicio</th>
                                        <th>Hora Fin</th>
                                        <th>Prestacion</th>
                                        <th>Especialidad</th>
                                        <th>Comuna</th>
                                        <th>Seleccion</th>
                                       </tr>
                                    </thead>
                                    <tbody>
                                     <tr>
                                        <td>18-03-2022</td>
                                        <td>08:00</td>
                                        <td>10:00</td>
                                        <td>Telemedicina</td>
                                        <td>Cardiologo</td>
                                        <td>Estacion Central</td>
                                        <td><input class="w3-check" type="checkbox" checked="checked"></td>
                                   </tr>
                                     
                                    <tr>
                                        <td>27-03-2022</td>
                                        <td>12:00</td>
                                        <td>15:00</td>
                                        <td>Telemedicina</td>
                                        <td>Pediatra</td>
                                        <td>La Florida</td>
                                        <td><input class="w3-check" type="checkbox" checked="checked" ></td>
                                             </tr>
                                         </tbody>
                                          
                                        <tfoot>
                                            <tr>
                                                <th>Total de servicios registrados: <span class="total"> </span></th>
                                                <th></th>
                                                <th></th>
                                            </tr>
                                        </tfoot>
                                    </table>
                        </div>


                        <div id="raimagen" style="display:none">
                            <h1>volvi mundo</h1> 
                        </div>

                        <div id="ralaboratorio" style="display:none">
                            <h1> me vuelvo a ir mundo</h1>
                        </div>
                    </div>
                </div>
            </div>

        </div>
   </div>
    </div>

    
                 <script>
                     $(document).ready(function () {
                         $("input[type=radio]").click(function (event) {
                             var valor = $(event.target).val();
                             if (valor == "raconsulta") {
                                 $("#raconsulta").show();
                                 $("#ratelemedicina").hide();
                                 $("#raimagen").hide();
                                 $("#ralaboratorio").hide();
                             } if (valor == "ratelemedicina") {
                                 $("#raconsulta").hide();
                                 $("#ratelemedicina").show();
                                 $("#raimagen").hide();
                                 $("#ralaboratorio").hide();

                             } if (valor == "raimagen") {
                                 $("#raconsulta").hide();
                                 $("#ratelemedicina").hide();
                                 $("#raimagen").show();
                                 $("#ralaboratorio").hide();
                             }
                              if (valor == "ralaboratorio") {
                                 $("#raconsulta").hide();
                                 $("#ratelemedicina").hide();
                                 $("#raimagen").hide();
                                 $("#ralaboratorio").show();
                              } else if (valor == "raconsulta") {
                                  $("#raconsulta").show();
                                  $("#ratelemedicina").hide();
                                  $("#raimagen").hide();
                                  $("#ralaboratorio").hide();
                              }                                
                 
                         });
                     });
                 </script> 
    
   
    <!--MODAL PREAGENDAMIENTO PARA CONSULTA Y TELEMEDICINA-->

    <div class="modal" data-backdrop="static" data-keyboard="false" id="myModal">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Pre Agendamiento</h4>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>

                <!-- Modal body -->
                <div class="modal-body">

                    <div class="row">
                        <div class="form-group col-md-4">
                            <label class="form-label" for="txtRut">Rut</label>
                            <input type="text" class="form-control" id="txtRut" value="{{citasReservadas.run}}" disabled>
                        </div>
                        <div class="form-group col-md-4">
                            <label class="form-label" for="txtPaciente">Paciente</label>
                            <input type="text" class="form-control" id="txtPaciente" value="{{citasReservadas.beneficiario}}" disabled>
                        </div>
                        <div class="form-group col-md-4">
                            <label class="form-label" for="txtNivel">Nivel</label>
                            <input type="text" class="form-control" id="txtNivel" value="{{citasReservadas.nivel}} " disabled>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-4">
                            <label class="form-label" for="txtPrfesional">Profesional</label>
                            <input type="text" class="form-control" id="txtProfesional" value="{{citasReservadas.nombre_profesional}}" disabled>
                        </div>
                        <div class="form-group col-md-4">
                            <label class="form-label" for="slcPrestacion">Prestacion</label>
                            <input type="text" class="form-control" id="txtPrestacion" value="{{ citasReservadas.nombre }}" disabled>
                        </div>
                        <div class="form-group col-md-4">
                            <label class="form-label" for="txtCodPrestacion">Código Prestación</label>
                            <input type="text" class="form-control" id="txtCodPrestacion" value="{{ citasReservadas.codigo }}" disabled>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-4">
                            <label class="form-label" for="txtValorT">Valor total</label>
                            <input type="text" class="form-control" id="txtValorT" value="{{ citasReservadas.valortotal }}" disabled>
                        </div>
                        <div class="form-group col-md-4">
                            <label class="form-label" for="txtBonificacion">Bonificación</label>
                            <input type="text" class="form-control" id="txtBonificacion" value="{{ citasReservadas.bonificacion }}" disabled>
                        </div>
                        <div class="form-group col-md-4">
                            <label class="form-label" for="txtValorC">Valor Copago</label>
                            <input type="text" class="form-control" id="txtValorC" value="{{ citasReservadas.copago }}" disabled>
                        </div>
                    </div>
                    <div class="row mb-4">
                        <div class="form-group col-md-4">
                            <label class="form-label" for="txtFecha">Fecha</label>
                            <input type="text" class="form-control" id="txtFecha" value="{{ citasReservadas.fecha }}" disabled>
                        </div>
                        <div class="form-group col-md-4">
                            <label class="form-label" for="txtHora">Hora</label>
                            <input type="text" class="form-control" id="txtHora" value="{{ citasReservadas.agen_hora }}" disabled>
                        </div>
                        <div class="form-group col-md-2"></div>
                    </div>

                    <div class="d-grid gap-2 d-md-flex justify-content-md">

                        <a href="CompraBono.aspx" class="w3-bar-item w3-button btn-primary ">Comprar Bono</a> 

                        <button class="btn btn-secondary">Copago</button>
                        <button class="btn btn-danger">Volver</button>
                    </div>

                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-success" data-bs-dismiss="modal">Guardar</button>
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Cerrar</button>

                </div>

            </div>
        </div>
    </div>
     
</asp:Content>
<%@ Page Title="Buscador" Language="C#" MasterPageFile="~/Inicio.Master" AutoEventWireup="true" CodeBehind="Buscador.aspx.cs" Inherits="Gestor_Clinico.WebForm1" %>

<asp:Content ContentPlaceHolderID="titulo" runat="server">
    Buscador
</asp:Content>

<asp:Content ContentPlaceHolderID="head" runat="server">
    
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>     
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    
     
</asp:Content>

    
     
  <asp:Content ContentPlaceHolderID="bodycontent" runat="server"> 
    <div class="container">
        <div class="card mt-2">
            <div class="row mt-2">
                <div class="col-lg">
                  
                         <h5>Prestador</h5>
                        <center>
                            <div>
                            <select name="prestador" class="form-select"><option selected >Seleccione</option></select>
                        </div>

                        </center>
                        
                    
               
                    <center>
                        <div class="lign-center mt-2 " style="margin:1% ; padding:1%" >
                        <div class="form-check form-check-inline" (change)="cambiaVer($event.target.value)">
                            <input class="form-check-input" type="radio" name="inlineRadioOptions" id="rdDia" value="1" checked>
                            <label class="form-check-label" for="rdDia">Ver día</label>
                        </div>

                        <div class="form-check form-check-inline" (change)="cambiaVer($event.target.value)">
                            <input class="form-check-input" type="radio" name="inlineRadioOptions" id="rdSemana" value="2">
                            <label class="form-check-label" for="rdSemana">Ver Semana</label>
                        </div>
                    </div>
                    </center>
                    


                    <div class="form">
                        <label for="fechaDesde">Inicio</label>
                        <input type="date" (change)="cambiaFecha($event.target)" [formControl]="fecha1">
                        <label for="fechaDesde">Termino</label>
                        <input type="date" (change)="cambiaFecha($event.target)" [formControl]="fecha2">
                    </div>
                
                </div>

                <div class="col-lg">
                    <h5>Profesional</h5>
                    <select name="profesionales" class="form-select" (change)="cambiaProfesional($event.target.value)">
                                <option selected >Seleccione Profesional</option>
                            </select>

                    <div class="d-grid gap-2 col-3 mx-auto mt-5">
                        <button class="btn btn-primary" (click)=buscarCita() type="submit">Buscar Cita</button>
                    </div>
                </div>

                <div class="col-lg">
                    <div class="row">
                        <div class="d-flex justify-content-center bd-highlight mb-2">
                            <div class="btn-group">
                                <input type="radio" class="btn-check" formcontrolname="tipoDoc" value="1" autocomplete="off" checked>
                                <label class="btn btn-outline-primary btn-block">RUT</label>
                                <input type="radio" class="btn-check" formcontrolname="tipoDoc" value="2" autocomplete="off">
                                <label class="btn btn-outline-primary btn-block">OTRO DOCUMENTO</label>
                                
                            </div>
                    </div>
                    <div class="row">
                        <input type="text" />
                    </div>
                    <div class="row">
                        <div class="d-grid gap-2 col-3 mx-auto mt-5">
                            <!-- Button to Open the Modal Preagendamiento -->
                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#myModal">Enviar</button>
                        </div>
                    </div>
                    
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
  
    <div class="container">
        <div class="row">
            <div class="col-4">
            <div class="row">
                <div class="card">
                    <div class="card-header">
                        <h5>Prestacion</h5>
                        </div>
                        <div class="container">
                                <div class="radio">
                            <label><input type="radio" name="optradio" checked>Consulta</label>
                            </div>
                            <div class="radio"><label><input type="radio" name="optradio">Telemedicina</label>
                                </div>
                            <div class="radio"><label><input type="radio" name="optradio">Imagen</label>
                                </div>
                            <div class="radio"><label><input type="radio" name="optradio">Laboratorio Clinico</label>
                                </div>
                        </div>
                    </div>
            </div>
           
            <div class="row mt-2">
                <div class="card">
                    <div class="card-header">
                         <h5>Especialidad</h5>
                        <div>
                            <select name="especialidades" class="form-select"><option selected >Seleccione Especialidad</option></select>
                        </div>

                    </div>
                </div>
            </div>

            <div class="row m-2">
                <div class="card">
                    <div class="card-header">
                        <h5>Georeferenciacion</h5>
                                <div>
                                    <select name="regiones"  class="form-select" (change)="cambiaRegion($event.target.value)">
                                        <option selected >Seleccione Region</option>
                                        <option [value]="item.reg_idregion" *ngFor="let item of regiones">{{ item.reg_nombrecorto}}</option>
                                    </select>
                                </div><br />
                                <div>
                                    <select name="comunas"  class="form-select" (change)="cambiaComuna($event.target.value)">
                                        <option selected >Seleccione Comuna</option>
                                        <option [value]="item.com_idcomuna" *ngFor="let item of comunas">{{ item.com_nombrecorto}}</option>
                                    </select>
                                </div>
                    </div>
                </div>
            </div>
        </div>
       
        <div class="col-8">
                <div class="card">
                     <div class="card-header">
                         <h1>Aqui va el calendario</h1>
                     </div>
                </div>
            </div>
        </div>
        
       
    </div>
   
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
                        <label class="form-label"  for="txtPaciente">Paciente</label>
                        <input type="text" class="form-control" id="txtPaciente" value="{{citasReservadas.beneficiario}}" disabled>
                    </div>
                    <div class="form-group col-md-4">
                        <label  class="form-label"  for="txtNivel">Nivel</label>
                        <input type="text" class="form-control" id="txtNivel" value="{{citasReservadas.nivel}} " disabled>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-4">
                        <label class="form-label"  for="txtPrfesional">Profesional</label>
                        <input type="text" class="form-control" id="txtProfesional" value="{{citasReservadas.nombre_profesional}}" disabled>
                    </div>
                    <div class="form-group col-md-4">
                        <label class="form-label"  for="slcPrestacion">Prestacion</label>
                          <input type="text" class="form-control" id="txtPrestacion" value="{{ citasReservadas.nombre }}" disabled>
                    </div>
                    <div class="form-group col-md-4">
                        <label class="form-label"  for="txtCodPrestacion">Código Prestación</label>
                        <input type="text" class="form-control" id="txtCodPrestacion" value="{{ citasReservadas.codigo }}" disabled>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-4">
                        <label class="form-label"  for="txtValorT">Valor total</label>
                        <input type="text" class="form-control" id="txtValorT" value="{{ citasReservadas.valortotal }}" disabled>
                    </div>
                    <div class="form-group col-md-4">
                        <label class="form-label"  for="txtBonificacion">Bonificación</label>
                        <input type="text" class="form-control" id="txtBonificacion" value="{{ citasReservadas.bonificacion }}"disabled>
                    </div>
                    <div class="form-group col-md-4">
                        <label class="form-label"  for="txtValorC">Valor Copago</label>
                        <input type="text" class="form-control" id="txtValorC" value="{{ citasReservadas.copago }}" disabled>
                    </div>
                </div>
                <div class="row mb-4">
                    <div class="form-group col-md-4">
                        <label  class="form-label"  for="txtFecha">Fecha</label>
                        <input type="text" class="form-control" id="txtFecha" value="{{ citasReservadas.fecha }}" disabled>
                    </div>
                    <div class="form-group col-md-4">
                        <label class="form-label"  for="txtHora">Hora</label>
                        <input type="text" class="form-control" id="txtHora" value="{{ citasReservadas.agen_hora }}" disabled>
                    </div>
                    <div class="form-group col-md-2"></div>
                </div>

                <div class="d-grid gap-2 d-md-flex justify-content-md">
                   
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#ModalConfirmacionCita" >Comprar Bono</button>

                    <button class="btn btn-secondary">Copago</button>
                    <button class="btn btn-danger">Volver</button>
                </div>
           
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-success" data-bs-dismiss="modal" >Guardar</button>
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Cerrar</button>
        
      </div>

    </div>
  </div>
</div>
      </asp:Content>
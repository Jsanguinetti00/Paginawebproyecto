<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Home.Master" AutoEventWireup="true" CodeBehind="DashBoard_Usuario.aspx.cs" Inherits="Diabetes_Final.FormsPages.DashBoard.DashBoard_Usuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_heder_blanc" runat="server">
    <title>Dashboard Usuario || P.E.D 7 PASOS</title>
    <script src="../../lib/jquery/jquery.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_contenido_blanco" runat="server">
    
    <script type="text/javascript">
            $(document).ready(function () {
                cargar();
                cargar1();
            });


            function cargar() {
              

                if ($("#NumEdades").val() == "") {

                    $("#id_dashboardUsuario").load('DashBoardUsuario.aspx');
                } else {

                    $("#id_dashboardUsuario").load('DashBoardUsuario.aspx?EdadesNum=' + $("#NumEdades").val());
                }

            }

            function cargar1() {

                if ($("#RegistrosAnios").val() == "") {

                    $("#id_dashboardUsuario").load('DashBoardUsuario.aspx');
                } else {

                    $("#id_dashboardUsuario").load('DashBoardUsuario.aspx?AniosRegistro=' + $("#RegistrosAnios").val());
                }
            }


</script>

<script>

    function soloNumeros(e) {

        key = e.keyCode || e.which;

        teclado = String.fromCharCode(key);

        numero = "0123456789";

        especiales = "8-37-38-46";

        teclado_Especial = false;

        for (var i in especiales) {

            if (key == especiales[i]) {
                teclado_Especial = true;
            }
        }
        if (numero.indexOf(teclado) == -1 && !teclado_Especial) {
            return false;
        }
    }

</script>

    <div class="row mt">
       <div class="col-lg-6">
           <p>
               Ingresa la Edad que Desee Buscar:
           </p>
           <div class="input-group">
           <input type="text" id="NumEdades" class="form-control" onkeypress="return soloNumeros(event)" maxlength="2" name="NumEdades" /><br><br>
           <span class="input-group-addon"><i class="fas fa-user"></i></span>
           </div>
           <input type="button" class="btn btn-theme btn-block" value="Aceptar" onclick="cargar()" id="boton_ejemplo" />  
       </div>
       <div class="col-lg-6">
           <p>
              NOTA: Esta Grafica sirve para buscar el numero de Pacientes que se Registaron en años en especificos EJEMPLO: Ingresa solo los cuatro digitos del año "2000 - 2020"
           </p>
           <div class="input-group">
           <input type="text" id="RegistrosAnios" class="form-control" onkeypress="return soloNumeros(event)" placeholder="Ingresa el Año que desee Buscar" maxlength="4" name="RegistrosAnios"><br><br>
           <span class="input-group-addon"><i class="fas fa-calendar-alt"></i></span>
           </div>
           <input type="button" class="btn btn-theme btn-block" value="Aceptar" onclick="cargar1()" id="boton_ejemplo1" />  
       </div>
    </div>

    <div id="id_dashboardUsuario">
        
    </div>
</asp:Content>

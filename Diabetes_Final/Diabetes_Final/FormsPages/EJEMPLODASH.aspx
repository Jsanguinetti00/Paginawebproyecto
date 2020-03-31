<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Home.Master" AutoEventWireup="true" CodeBehind="EJEMPLODASH.aspx.cs" Inherits="Diabetes_Final.FormsPages.EJEMPLODASH" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_heder_blanc" runat="server">
    <script src="../lib/jquery/jquery.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_contenido_blanco" runat="server">
        <script type="text/javascript">
            $(document).ready(function () {
                cargar();
                cargar1();
            });


            function cargar() {
              

                if ($("#lname").val() == "") {

                    $("#id_ejemplodash").load('DASHejemplo.aspx');
                } else {

                    $("#id_ejemplodash").load('DASHejemplo.aspx?texto=' + $("#lname").val());
                }

            }

            function cargar1() {

                if ($("#lname2").val() == "") {

                    $("#id_ejemplodash").load('DASHejemplo.aspx');
                } else {

                    $("#id_ejemplodash").load('DASHejemplo.aspx?EDAD=' + $("#lname2").val());
                }
            }


</script>

    <div class="row mt">
       <div class="col-lg-6">
           <input type="text" id="lname" name="lname"><br><br>
           <input type="button" value="Aceptar" onclick="cargar()" id="boton_ejemplo" />  
       </div>
       <div class="col-lg-6">
           <input type="text" id="lname2" name="lname2"><br><br>
           <input type="button" value="Aceptar" onclick="cargar1()" id="boton_ejemplo1" />  
       </div>
    </div>

    <div id="id_ejemplodash">
        
    </div>

</asp:Content>

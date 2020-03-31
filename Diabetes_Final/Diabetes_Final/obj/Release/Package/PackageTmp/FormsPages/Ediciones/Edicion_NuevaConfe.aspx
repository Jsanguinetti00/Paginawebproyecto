<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Home.Master" AutoEventWireup="true" CodeBehind="Edicion_NuevaConfe.aspx.cs" Inherits="Diabetes_Final.FormsPages.Ediciones.Edicion_NuevaConfe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_heder_blanc" runat="server">
    <title>Edicion Nueva Conferencia || P.E.D 7 PASOS</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_contenido_blanco" runat="server">
     <form runat="server"> <h3><i class="fa fa-angle-right"></i> Agregar Especialista</h3>
         <asp:Button class="btn btn-theme btn-block" type="submit" runat="server" OnClick="regresarGestion" Text="Regresar" ></asp:Button>
         <br />
         <asp:Button class="btn btn-theme btn-block" type="submit" runat="server" OnClick="ModificarDatos" Text="Modificar Persona" ></asp:Button>
         <br />
         <asp:Button class="btn btn-theme btn-block" type="submit" runat="server" OnClick="EliminarNuevaConfe" Text="Eliminar Conferencia"></asp:Button>
       <div class="row mt">
        <div class="col-lg-12">
        <div class="login-wrap">
            <div class="input-group">
                <input type="text" class="form-control" runat="server" id="nombre_conf" placeholder="Nombre de la Nueva Conferencia"/>
                <span class="input-group-addon"><i class="fas fa-user"></i></span>
            </div>
            <br>
        </div>
        </div>
       </div>
   </form>
</asp:Content>

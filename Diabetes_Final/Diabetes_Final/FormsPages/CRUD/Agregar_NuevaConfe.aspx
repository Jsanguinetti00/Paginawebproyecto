<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Home.Master" AutoEventWireup="true" CodeBehind="Agregar_NuevaConfe.aspx.cs" Inherits="Diabetes_Final.FormsPages.CRUD.Agregar_NuevaConf" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_heder_blanc" runat="server">
    <title>Nueva Conferencia || P.E.D 7 PASOS</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_contenido_blanco" runat="server">
    <form runat="server"> <h3><i class="fa fa-angle-right"></i> AGREGAR NUEVA CONFERENCIA</h3>
       <div class="row mt">
        <div class="col-lg-12">
        <div class="login-wrap">
            <div class="input-group">
                <input type="text" class="form-control" runat="server" id="nombre_conf" placeholder="Nombre de la Nueva Conferencia"/>
                <span class="input-group-addon"><i class="fas fa-user"></i></span>
            </div>
            <br>
          <asp:Button class="btn btn-theme btn-block" type="submit" runat="server" OnClick="AgregarNuevaConf" Text="Agregar Nueva Conferencia" ></asp:Button>
        </div>
        </div>
       </div>
   </form>
</asp:Content>

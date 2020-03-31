<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Home.Master" AutoEventWireup="true" CodeBehind="Agregar_Persona.aspx.cs" Inherits="Diabetes_Final.FormsPages.Agregar_Usuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_heder_blanc" runat="server">
    <title>Nueva Persona || P.E.D 7 PASOS</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_contenido_blanco" runat="server">
    <form runat="server">
        <h3><i class="fa fa-angle-right"></i>Agregar Persona</h3>
       <div class="row mt">
        <div class="col-lg-12">
        <div class="login-wrap">
            <div class="input-group">
                <input type="text" class="form-control" runat="server" id="nombre_persona" placeholder="Nombre (S)"/>
                <span class="input-group-addon"><i class="fas fa-user"></i></span>
            </div>
            <br>
            <div class="input-group">
                <input type="text" class="form-control" runat="server" id="apellido_pa" placeholder="Apellido Paterno"/>
                <span class="input-group-addon"><i class="fas fa-user"></i></span>
            </div>
            <br>
            <div class="input-group">
                <input type="text" class="form-control" runat="server" id="apellido_ma" placeholder="pellido Materno"/>
                <span class="input-group-addon"><i class="fas fa-user"></i></span>
            </div>
            <br>
            <div class="input-group">
                <input type="text" class="form-control" runat="server" id="edad_persona" placeholder="Edad"/>
                <span class="input-group-addon"><i class="fas fa-user"></i></span>
            </div>
            <br>
            <div class="input-group">
                <input type="text" class="form-control" runat="server" id="anios_persona" placeholder="Años con Diabetes"/>
                <span class="input-group-addon"><i class="fas fa-user-md"></i></span>
            </div>
            <br>
          <p>
            Fecha de Inicio del Usuario:
          </p>
          <div class="input-group mb-3">
            <input type="date" runat="server" id="fecha" min="" 
            max=" " step="2" class="form-control"  >
          </div>
          <br>
            <div class="input-group">
                <input type="text" runat="server" id="telefono_persona" class="form-control" placeholder="Telefono"/>
                <span class="input-group-addon"><i class="fas fa-phone"></i></span>
            </div>
            <br>
            <div class="input-group">
                <input type="text" class="form-control" runat="server" id="direccion_persona" placeholder="Dirección"/>
                <span class="input-group-addon"><i class="fas fa-home"></i></span>
            </div>
            <br>
            <asp:Button class="btn btn-theme btn-block" type="submit" runat="server" OnClick="agregarPersonas" Text="Agregar Usuario" ></asp:Button>
        </div>
        </div>
       </div>
    </form>
    
</asp:Content>

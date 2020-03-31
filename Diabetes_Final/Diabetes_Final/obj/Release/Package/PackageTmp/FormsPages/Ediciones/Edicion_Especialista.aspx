﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Home.Master" AutoEventWireup="true" CodeBehind="Edicion_Especialista.aspx.cs" Inherits="Diabetes_Final.FormsPages.Ediciones.Edicion_Especialista" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_heder_blanc" runat="server">
    <title>Edicion Especilista || P.E.D 7 PASOS</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_contenido_blanco" runat="server">
     <form runat="server"> <h3><i class="fa fa-angle-right"></i> Edicion Especialista</h3>
         <asp:Button class="btn btn-theme btn-block" type="submit" runat="server" OnClick="regresarGestion" Text="Regresar" ></asp:Button>
         <br />
         <asp:Button class="btn btn-theme btn-block" type="submit" runat="server" OnClick="ModificarDatos" Text="Modificar Persona" ></asp:Button>
         <br />
         <asp:Button class="btn btn-theme btn-block" type="submit" runat="server" OnClick="EliminarEspecialistas" Text="Eliminar Persona"></asp:Button>
       <div class="row mt">
        <div class="col-lg-12">
        <div class="login-wrap">
            <div class="input-group">
                <input type="text" class="form-control" runat="server" id="nombre_esp" placeholder="Nombre (S)"/>
                <span class="input-group-addon"><i class="fas fa-user"></i></span>
            </div>
            <br>
            <div class="input-group">
                <input type="text" class="form-control" runat="server" id="apellido_pa_esp" placeholder="Apellido Paterno"/>
                <span class="input-group-addon"><i class="fas fa-user"></i></span>
            </div>
            <br>
            <div class="input-group">
                <input type="text" class="form-control" runat="server" id="apellido_ma_esp" placeholder="pellido Materno"/>
                <span class="input-group-addon"><i class="fas fa-user"></i></span>
            </div>
            <br>
            <asp:DropDownList ID="DropTipoEsp" runat="server" class="form-control" DataSourceID="SqlDataSource1" DataTextField="NOM_TIPOESPECIALISTA" DataValueField="ID_TIPOESP" ></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbDiabetesConnectionString %>" SelectCommand="SELECT [ID_TIPOESP], [NOM_TIPOESPECIALISTA] FROM [TIPO_ESPECIALISTA]"></asp:SqlDataSource>
            <br>
        </div>
        </div>
       </div>
   </form>
</asp:Content>

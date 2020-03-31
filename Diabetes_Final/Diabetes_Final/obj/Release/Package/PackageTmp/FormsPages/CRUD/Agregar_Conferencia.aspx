﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Home.Master" AutoEventWireup="true" CodeBehind="Agregar_Conferencia.aspx.cs" Inherits="Diabetes_Final.FormsPages.CRUD.Agregar_Conferencia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_heder_blanc" runat="server">
    <title>Nueva Conferencia || P.E.D 7 PASOS</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_contenido_blanco" runat="server">
    <form runat="server">
        <h3><i class="fa fa-angle-right"></i>Agrega Conferencia</h3>
       <div class="row mt">
        <div class="col-lg-12">
        <div class="login-wrap">
            <p>
                Nombre:
            </p>
            <asp:DropDownList ID="DropIdPersona" runat="server" class="form-control" DataSourceID="SqlDataSource1" DataTextField="NOMBRE" DataValueField="ID_PERSONA" AutoPostBack="True"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbDiabetesConnectionString %>" SelectCommand="SELECT [ID_PERSONA], [NOMBRE] FROM [PERSONAS]"></asp:SqlDataSource>
            <br>
            <p>
            Fecha de La Conferencia:
            </p>
          <div class="input-group mb-3">
            <input type="date" runat="server" id="fecha_confe" min=""  max=" " step="2" class="form-control"  >
          </div>
          <br>
          <p>
            Hora de La Conferencia:
          </p>
          <div class="input-group mb-3">
            <input type="time" id="hora_confe" runat="server"  min="" max="" step="3600" class="form-control">
          </div>
            <br />
            <p>
                Nombre de La Conferencia:
            </p>
            <asp:DropDownList ID="DropNomConfe" class="form-control" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="NOMBRE_CONF" DataValueField="ID_NOMCONFERENCIA"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbDiabetesConnectionString %>" SelectCommand="SELECT [ID_NOMCONFERENCIA], [NOMBRE_CONF] FROM [NOM_CONFERENCIA]"></asp:SqlDataSource>
            <br>
            <asp:Button class="btn btn-theme btn-block" type="submit" runat="server" OnClick="AgregarConferencia" Text="Agregar Usuario" ></asp:Button>
        </div>
        </div>
       </div>
    </form>
</asp:Content>

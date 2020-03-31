<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Home.Master" AutoEventWireup="true" CodeBehind="Agregar_Cita.aspx.cs" Inherits="Diabetes_Final.FormsPages.Agregar_Cita" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_heder_blanc" runat="server">
    <title>Nueva Cita || P.E.D 7 PASOS</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_contenido_blanco" runat="server">
    <h3><i class="fa fa-angle-right"></i> AGREGAR CITA</h3>
    <form runat="server">
       <div class="row mt">
        <div class="col-lg-12">
        <div class="login-wrap">
            <p>
                Persona:
            </p>
            <asp:DropDownList ID="DropIdPersona" runat="server" class="form-control" DataSourceID="SqlDataSource1" DataTextField="NOMBRE" DataValueField="ID_PERSONA" AutoPostBack="True"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbDiabetesConnectionString %>" SelectCommand="SELECT [ID_PERSONA], [NOMBRE] FROM [PERSONAS]"></asp:SqlDataSource>            
            <br>
            <p>
                Tipo Cita:
            </p>
            <asp:DropDownList ID="DropTipoCita" class="form-control" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="NIOMBRE_TIPO_CITAS" DataValueField="ID_TIPO_CITAS"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:dbDiabetesConnectionString %>" SelectCommand="SELECT [ID_TIPO_CITAS], [NIOMBRE_TIPO_CITAS] FROM [TIPO_CITAS]"></asp:SqlDataSource>
            <br>
            <p>
                Consultorio:
            </p>
            <asp:DropDownList ID="DropConsultorio" runat="server" class="form-control" DataSourceID="SqlDataSource2" DataTextField="CONSULTORIO" DataValueField="ID_DATOSCITA" AutoPostBack="True"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbDiabetesConnectionString %>" SelectCommand="SELECT [ID_DATOSCITA], [CONSULTORIO] FROM [DATOS_CITA]"></asp:SqlDataSource>
            <br>
          <p>
            Fecha de Cita del Usuario:
          </p>
          <div class="input-group mb-3">
            <input type="date" runat="server" id="fecha" min=""  max=" " step="2" class="form-control"  >
          </div>
          <br>
          <p>
            Hora de la Cita del Usuario:
          </p>
          <div class="input-group mb-3">
            <input type="time" id="hora" runat="server"  min="" max="" step="3600" class="form-control">
          </div>
            <br />
          <asp:Button class="btn btn-theme btn-block" type="submit" runat="server" OnClick="AgregarCita" Text="Agregar Cita" ></asp:Button>
        </div>
        </div>
       </div>
        </form>
</asp:Content>

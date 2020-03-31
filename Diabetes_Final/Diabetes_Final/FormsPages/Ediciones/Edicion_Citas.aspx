<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Home.Master" AutoEventWireup="true" CodeBehind="Edicion_Citas.aspx.cs" Inherits="Diabetes_Final.FormsPages.Ediciones.Edicion_Citas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_heder_blanc" runat="server">
    <title>Edicion Citas || P.E.D 7 PASOS</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_contenido_blanco" runat="server">
    <form runat="server"><h3><i class="fa fa-angle-right"></i> EDICION CITAS</h3>
         <asp:Button class="btn btn-theme btn-block" type="submit" runat="server" OnClick="regresarGestion" Text="Regresar" ></asp:Button>
         <br />
         <asp:Button class="btn btn-theme btn-block" type="submit" runat="server" OnClick="ModificarDatos" Text="Modificar Cita" ></asp:Button>
         <br />
         <asp:Button class="btn btn-theme btn-block" type="submit" runat="server" OnClick="EliminarCitas" Text="Eliminar Cita"></asp:Button>
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
        </div>
        </div>
       </div>
        </form>
</asp:Content>

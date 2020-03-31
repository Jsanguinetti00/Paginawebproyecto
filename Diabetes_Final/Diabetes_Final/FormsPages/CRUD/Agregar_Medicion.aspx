<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Home.Master" AutoEventWireup="true" CodeBehind="Agregar_Medicion.aspx.cs" Inherits="Diabetes_Final.FormsPages.CRUD.Agregar_Medicion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_heder_blanc" runat="server">
    <title>Nueva Medicion || P.E.D 7 PASOS</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_contenido_blanco" runat="server">
        <form runat="server">
        <h3><i class="fa fa-angle-right"></i>AGREGAR MEDICION</h3>
       <div class="row mt">
        <div class="col-lg-12">
        <div class="login-wrap">
            <div class="input-group">
                <input type="text" class="form-control" runat="server" id="medicion" placeholder="Ingresa la Medicion" />
                <span class="input-group-addon"><i class="fas fa-user"></i></span>
            </div>
            <br>
            <p>
                Selecciona el Tipo de Medición:
            </p>
            <asp:DropDownList ID="DropDownList2" runat="server" class="form-control" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="NOMBRE_MEDICION" DataValueField="ID_TIPMEDICION"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbDiabetesConnectionString %>" SelectCommand="SELECT [ID_TIPMEDICION], [NOMBRE_MEDICION] FROM [Tipo_De_Medicion]"></asp:SqlDataSource>
            <br>
            <p>
                Fecha de Medicion:
            </p>
            <asp:Label ID="Fecha" runat="server" class="form-control" Text="Label" OnLoad="Label1_Load"></asp:Label>
            <br>
            <p>
                Hora de Medicion:
            </p>
            <asp:Label ID="Hora" runat="server" class="form-control" Text="Label" OnLoad="Label1_Load"></asp:Label>
            <br>
            <p>
                Selecciona al Paciente:
            </p>
            <asp:DropDownList ID="DropDownList3" runat="server" class="form-control" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="NOMBRE" DataValueField="ID_PERSONA"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:dbDiabetesConnectionString %>" SelectCommand="SELECT [ID_PERSONA], [NOMBRE] FROM [PERSONAS]"></asp:SqlDataSource>
            <br>
            <asp:Button class="btn btn-theme btn-block" type="submit" runat="server" OnClick="AgregarMedicion" Text="Agregar Medición" ></asp:Button>
        </div>
         </div>
           </div>
            </form>
</asp:Content>

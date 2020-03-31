<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Home.Master" AutoEventWireup="true" CodeBehind="Gestion_NombreConfe.aspx.cs" Inherits="Diabetes_Final.FormsPages.Gestiones.Gestion_NombreConfe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_heder_blanc" runat="server">
    <title>Gestion Nueva Conferencia || P.E.D 7 PASOS</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_contenido_blanco" runat="server">
        <form id="form1" runat="server">
    <h3><i class="fa fa-angle-right"></i>GESTION DE NUEVA CONFERENCIA</h3>
        <input type="button" value="Nueva Persona" runat="server" class="btn btn-theme btn-block" name="btn_agregarpersona" OnClick="location.href = '../../FormsPages/CRUD/Agregar_NuevaConfe.aspx'">
        <br />
        <div class="content-panel">
        <asp:DataList ID="DataList1" runat="server" DataKeyField="ID_NOMCONFERENCIA" CssClass="table" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand">
            <HeaderTemplate>
                <th scope="col">ID CONFERENCIA</th>
                <th scope="col">NOMBRE CONFERENCIA</th>
                <th scope="col">EDITAR</th>
            </HeaderTemplate>
            <ItemTemplate>
                <td><%# Eval("ID_NOMCONFERENCIA") %></td>
                <td><%# Eval("NOMBRE_CONF") %></td>
                <td><asp:LinkButton runat="server" ID="boton_id" CssClass="btn btn-theme btn-block" CommandName="Update" Text="Editar" CommandArgument='<%#Eval("ID_NOMCONFERENCIA") %>'></asp:LinkButton></td>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbDiabetesConnectionString %>" SelectCommand="SELECT [ID_NOMCONFERENCIA], [NOMBRE_CONF] FROM [NOM_CONFERENCIA]"></asp:SqlDataSource>
            </div>
            <br>
    </form>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Home.Master" AutoEventWireup="true" CodeBehind="Gestion_Especialista.aspx.cs" Inherits="Diabetes_Final.FormsPages.Gestiones.Gestion_Especialista" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_heder_blanc" runat="server">
    <title>Gestion Especialista || P.E.D 7 PASOS</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_contenido_blanco" runat="server">
    <form id="form1" runat="server">
    <h3><i class="fa fa-angle-right"></i>Gestion de Especialistas</h3>
        <input type="button" value="Nueva Persona" runat="server" class="btn btn-theme btn-block" name="btn_agregarpersona" OnClick="location.href = '../../FormsPages/CRUD/Agregar_Especialista.aspx'">
        <br />
        <asp:DataList ID="DataList1" runat="server" DataKeyField="ID_ESPECIALISTA" CssClass="table" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand">
            <HeaderTemplate>
                <th scope="col">ID ESPECIALISTA</th>
                <th scope="col">NOMBRE</th>
                <th scope="col">APELLIDO PATERNO</th>
                <th scope="col">APELLIDO MATERNO</th>
                <th scope="col">TIPO</th>
                <th scope="col">EDITAR</th>
            </HeaderTemplate>
            <ItemTemplate>
                <td><%# Eval("ID_ESPECIALISTA") %></td>
                <td><%# Eval("NOMBRE_ESP") %></td>
                <td><%# Eval("APELLIDOP_ESP") %></td>
                <td><%# Eval("APELLIDOM_ESP") %></td>
                <td><%# Eval("NOM_TIPOESPECIALISTA") %></td>
                <td><asp:LinkButton runat="server" ID="boton_id" CssClass="btn btn-theme btn-block" CommandName="Update" Text="Editar" CommandArgument='<%#Eval("ID_ESPECIALISTA") %>'></asp:LinkButton></td>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbDiabetesConnectionString %>" SelectCommand="SELECT [ID_ESPECIALISTA], [NOMBRE_ESP], [APELLIDOP_ESP], [APELLIDOM_ESP], [NOM_TIPOESPECIALISTA] FROM [ESPECIALISTA] AS E INNER JOIN [TIPO_ESPECIALISTA] AS TE ON E.[ID_TIPOESP] = TE.[ID_TIPOESP]"></asp:SqlDataSource>
    <br>
    </form>
</asp:Content>

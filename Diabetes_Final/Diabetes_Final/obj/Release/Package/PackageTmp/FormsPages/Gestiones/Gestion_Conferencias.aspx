<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Home.Master" AutoEventWireup="true" CodeBehind="Gestion_Conferencias.aspx.cs" Inherits="Diabetes_Final.FormsPages.Gestiones.Gestion_Conferencias" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_heder_blanc" runat="server">
    <title>Gestion Conferencias || P.E.D 7 PASOS</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_contenido_blanco" runat="server">
    <form id="form1" runat="server">
    <h3><i class="fa fa-angle-right"></i>Gestion de Conferencias</h3>
        <input type="button" value="Nueva Persona" runat="server" class="btn btn-theme btn-block" name="btn_agregarpersona" OnClick="location.href = '../../FormsPages/CRUD/Agregar_Conferencia.aspx'">
        <br />
        <asp:DataList ID="DataList1" runat="server" DataKeyField="ID_CONFERENCIAS" CssClass="table" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand">
            <HeaderTemplate>
                <th scope="col">ID CONFERENCIA</th>
                <th scope="col">NOMBRE</th>
                <th scope="col">FECHA CONFERENCIA</th>
                <th scope="col">HORA CONFERENCIA</th>
                <th scope="col">NOMBRE DE CONFERENCIA</th>
                <th scope="col">EDITAR</th>
            </HeaderTemplate>
            <ItemTemplate>
                <td><%# Eval("ID_CONFERENCIAS") %></td>
                <td><%# Eval("NOMBRE") %></td>
                <td><%# Eval("FECHA_CONFERENCIAS") %></td>
                <td><%# Eval("HORA_CONFERENCIAS") %></td>
                <td><%# Eval("NOMBRE_CONF") %></td>
                <td><asp:LinkButton runat="server" ID="boton_id" CssClass="btn btn-theme btn-block" CommandName="Update" Text="Editar" CommandArgument='<%#Eval("ID_CONFERENCIAS") %>'></asp:LinkButton></td>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbDiabetesConnectionString %>" SelectCommand="SELECT [ID_CONFERENCIAS], [NOMBRE], [FECHA_CONFERENCIAS], [HORA_CONFERENCIAS], [NOMBRE_CONF] FROM [CONFERENCIAS] AS C INNER JOIN [PERSONAS] AS P ON C.[ID_PERSONA] = P.[ID_PERSONA] INNER JOIN [NOM_CONFERENCIA] AS NC ON C.[ID_NOMCONFERENCIA] = NC.[ID_NOMCONFERENCIA]"></asp:SqlDataSource>
    <br>
    </form>
</asp:Content>

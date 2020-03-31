<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Home.Master" AutoEventWireup="true" CodeBehind="Gestion_Persona.aspx.cs" Inherits="Diabetes_Final.FormsPages.GestionUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_heder_blanc" runat="server">
    <title>Gestion Persona || P.E.D 7 PASOS</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_contenido_blanco" runat="server">
<form id="form1" runat="server">
    <h3><i class="fa fa-angle-right"></i>Gestion de Personas</h3>
        <input type="button" value="Nueva Persona" runat="server" class="btn btn-theme btn-block" name="btn_agregarpersona" OnClick="location.href = '../../FormsPages/CRUD/Agregar_Persona.aspx'">
        <br />
        <asp:DataList ID="DataList1" runat="server" DataKeyField="ID_PERSONA" CssClass="table" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand">
            <HeaderTemplate>
                <th scope="col">ID PERSONA</th>
                <th scope="col">NOMBRE</th>
                <th scope="col">APELLIDO PATERNO</th>
                <th scope="col">APELLIDO MATERNO</th>
                <th scope="col">EDAD</th>
                <th scope="col">AÑOS CON DIABETES</th>
                <th scope="col">FECHA INICIO</th>
                <th scope="col">TELEFONO</th>
                <th scope="col">DIRECCION</th>
                <th scope="col">EDITAR</th>
            </HeaderTemplate>
            <ItemTemplate>
                <td><%# Eval("ID_PERSONA") %></td>
                <td><%# Eval("NOMBRE") %></td>
                <td><%# Eval("APELLIDO_PATER") %></td>
                <td><%# Eval("APELLIDO_MATER") %></td>
                <td><%# Eval("EDAD") %></td>
                <td><%# Eval("ANIOSCONDIABETES") %></td>
                <td><%# Eval("FECHA_INICIO") %></td>
                <td><%# Eval("TELEFONO") %></td>
                <td><%# Eval("DIRECCION") %></td>
                <td><asp:LinkButton runat="server" ID="boton_id" CssClass="btn btn-theme btn-block" CommandName="Update" Text="Editar" CommandArgument='<%#Eval("ID_PERSONA") %>'></asp:LinkButton></td>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbDiabetesConnectionString %>" SelectCommand="SELECT [ID_PERSONA], [NOMBRE], [APELLIDO_PATER], [APELLIDO_MATER], [EDAD], [ANIOSCONDIABETES], [FECHA_INICIO], [TELEFONO], [DIRECCION] FROM [PERSONAS]"></asp:SqlDataSource>
    <br>
    </form>
</asp:Content>

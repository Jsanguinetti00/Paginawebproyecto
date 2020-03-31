<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Home.Master" AutoEventWireup="true" CodeBehind="Gestion_Usuarios.aspx.cs" Inherits="Diabetes_Final.FormsPages.Gestiones.Gestion_Usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_heder_blanc" runat="server">
    <title>Gestion Usuarios || P.E.D 7 PASOS</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_contenido_blanco" runat="server">
    <form id="form1" runat="server">
    <h3><i class="fa fa-angle-right"></i>GESTION DE USUARIOS</h3>
        <br />
        <div class="content-panel">
        <asp:DataList ID="DataList1" runat="server" DataKeyField="ID_USUARIO" CssClass="table" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand">
            <HeaderTemplate>
                <th scope="col">ID USUARIO</th>
                <th scope="col">NUMERO DE TELEFONO</th>
                <th scope="col">CONTRASEÑA</th>
                <th scope="col">PERSONA</th>
                <th scope="col">TIPO</th>
                <th scope="col">ESTATUS</th>
                <th scope="col">EDITAR</th>
            </HeaderTemplate>
            <ItemTemplate>
                <td><%# Eval("ID_USUARIO") %></td>
                <td><%# Eval("TELEFONO") %></td>
                <td><%# Eval("CONTRASENA") %></td>
                <td><%# Eval("NOMBRE") %></td>
                <td><%# Eval("NOMBRE_TIPO_USUARIO") %></td>
                <td><%# Eval("NOM_ESTATUS") %></td>
                <td><asp:LinkButton runat="server" ID="boton_id" CssClass="btn btn-theme btn-block" CommandName="Update" Text="Editar" CommandArgument='<%#Eval("ID_USUARIO") %>'></asp:LinkButton></td>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbDiabetesConnectionString %>" SelectCommand="SELECT [ID_USUARIO], U.[TELEFONO], [CONTRASENA], [NOMBRE], [NOMBRE_TIPO_USUARIO], [NOM_ESTATUS] FROM [USUARIO] AS U INNER JOIN [ESTATUS_USU] AS EU ON U.[ID_ESTATUS] = EU.[ID_ESTATUS] INNER JOIN [PERSONAS] AS P ON U.[ID_PERSONA]=P.[ID_PERSONA] INNER JOIN [TIPO_USUARIO] AS T ON U.[ID_TIPO_USUARIO]=T.[ID_TIPO_USUARIO]"></asp:SqlDataSource>
            </div>
            <br>
    </form>
</asp:Content>

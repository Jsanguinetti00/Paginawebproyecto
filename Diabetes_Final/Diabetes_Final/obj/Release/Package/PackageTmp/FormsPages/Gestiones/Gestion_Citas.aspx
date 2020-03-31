<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Home.Master" AutoEventWireup="true" CodeBehind="Gestion_Citas.aspx.cs" Inherits="Diabetes_Final.FormsPages.Gestiones.Gestion_Citas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_heder_blanc" runat="server">
    <title>Gestion CITAS || P.E.D 7 PASOS</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_contenido_blanco" runat="server">
    <form id="form1" runat="server">
    <h3><i class="fa fa-angle-right"></i>Gestion de Especialistas</h3>
        <input type="button" value="Nueva Cita" runat="server" class="btn btn-theme btn-block" name="btn_agregarcita" OnClick="location.href = '../../FormsPages/CRUD/Agregar_Cita.aspx'">
        <br />
        <asp:DataList ID="DataList1" runat="server" DataKeyField="ID_CITAS" CssClass="table" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand">
            <HeaderTemplate>
                <th scope="col">ID CITA</th>
                <th scope="col">PERSONA</th>
                <th scope="col">TIPO DE CITA</th>
                <th scope="col">DATOS DE CITA</th>
                <th scope="col">FECHA CITA</th>
                <th scope="col">HORA CITA</th>
                <th scope="col">EDITAR</th>
            </HeaderTemplate>
            <ItemTemplate>
                <td><%# Eval("ID_CITAS") %></td>
                <td><%# Eval("NOMBRE") %></td>
                <td><%# Eval("NIOMBRE_TIPO_CITAS") %></td>
                <td><%# Eval("CONSULTORIO") %></td>
                <td><%# Eval("FECHA_CITA") %></td>
                <td><%# Eval("HORA_CITA") %></td>
                <td><asp:LinkButton runat="server" ID="boton_id" CssClass="btn btn-theme btn-block" CommandName="Update" Text="Editar" CommandArgument='<%#Eval("ID_CITAS") %>'></asp:LinkButton></td>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbDiabetesConnectionString %>" SelectCommand="SELECT [ID_CITAS], [NOMBRE], [NIOMBRE_TIPO_CITAS], [CONSULTORIO], [FECHA_CITA], [HORA_CITA] FROM [CITAS] AS C INNER JOIN [TIPO_CITAS] AS TC ON  C.[ID_TIPO_CITAS] = TC.[ID_TIPO_CITAS] INNER JOIN [PERSONAS] AS P ON C.[ID_PERSONA] = P.[ID_PERSONA] INNER JOIN [DATOS_CITA] AS DC ON C.[ID_DATOSCITA] = DC.[ID_DATOSCITA]"></asp:SqlDataSource>
    <br>
    </form>
</asp:Content>

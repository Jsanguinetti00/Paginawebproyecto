<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Home.Master" AutoEventWireup="true" CodeBehind="Gestion_Mediciones.aspx.cs" Inherits="Diabetes_Final.FormsPages.Gestiones.Gestion_Mediciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_heder_blanc" runat="server">
    <title>Gestion Mediciones || P.E.D 7 PASOS</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_contenido_blanco" runat="server">
    <form id="form1" runat="server">
    <h3><i class="fa fa-angle-right"></i>GESTION DE MEDICIONES</h3>
        <input type="button" value="Nueva Medición" runat="server" class="btn btn-theme btn-block" name="btn_agregarcita" OnClick="location.href = '../../FormsPages/CRUD/Agregar_Medicion.aspx'">
        <br />
        <div class="content-panel">
        <asp:DataList ID="DataList1" runat="server" DataKeyField="ID_MEDICION_GLUCOSA" CssClass="table" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand">
            <HeaderTemplate>
                <th scope="col">ID MEDICION</th>
                <th scope="col">TIPO MEDICION</th>
                <th scope="col">PACIENTE</th>
                <th scope="col">FECHA</th>
                <th scope="col">HORA</th>
                <th scope="col">RESULTADO</th>
            </HeaderTemplate>
            <ItemTemplate>
                <td><%# Eval("ID_MEDICION_GLUCOSA") %></td>
                <td><%# Eval("NOMBRE_MEDICION") %></td>
                <td><%# Eval("NOMBRE") %></td>
                <td><%# Eval("FECHA_MEDICION_GLUCOSA") %></td>
                <td><%# Eval("HORA_MEDICION_GLUCOSA") %></td>
                <td><asp:LinkButton runat="server" ID="boton_id" CssClass="btn btn-theme btn-block" CommandName="Update" Text="Editar" CommandArgument='<%#Eval("ID_MEDICION_GLUCOSA") %>'></asp:LinkButton></td>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbDiabetesConnectionString %>" SelectCommand="SELECT [ID_MEDICION_GLUCOSA], TM.[NOMBRE_MEDICION], [NOMBRE], [FECHA_MEDICION_GLUCOSA], [HORA_MEDICION_GLUCOSA] FROM [MEDICION_GLUCOSA] AS M INNER JOIN [Tipo_De_Medicion] AS TM ON M.[ID_TIPMEDICION] = TM.[ID_TIPMEDICION] INNER JOIN [PERSONAS] AS P ON M.[ID_PERSONA]=P.[ID_PERSONA]"></asp:SqlDataSource>
            </div>
            <br>
    </form>
</asp:Content>

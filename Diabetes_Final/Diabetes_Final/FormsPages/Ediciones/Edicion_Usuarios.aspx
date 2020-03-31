<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Home.Master" AutoEventWireup="true" CodeBehind="Edicion_Usuarios.aspx.cs" Inherits="Diabetes_Final.FormsPages.Ediciones.Gestion_Usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_heder_blanc" runat="server">
    <title>Edicion Usuario || P.E.D 7 PASOS</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_contenido_blanco" runat="server">
     <form runat="server"> <h3><i class="fa fa-angle-right"></i> EDICION USUARIO</h3>
         <asp:Button class="btn btn-theme btn-block" type="submit" runat="server" OnClick="regresarGestion" Text="Regresar" ></asp:Button>
         <br />
         <asp:Button class="btn btn-theme btn-block" type="submit" runat="server" OnClick="ModificarDatos" Text="Modificar Usuario" ></asp:Button>
         <br />
         <asp:Button class="btn btn-theme btn-block" type="submit" runat="server" OnClick="EliminarUsuarios" Text="Eliminar Usuario"></asp:Button>
       <div class="row mt">
        <div class="col-lg-12">
        <div class="login-wrap">
            <div class="input-group">
                <input type="text" class="form-control" runat="server" id="telfono_usu" placeholder="Numero de Telefono"/>
                <span class="input-group-addon"><i class="fas fa-user"></i></span>
            </div>
            <br>
            <div class="input-group">
                <input type="text" class="form-control" runat="server" id="contrasenia_usu" placeholder="Contraseña"/>
                <span class="input-group-addon"><i class="fas fa-user"></i></span>
            </div>
            <br>
            <asp:DropDownList ID="DropIdPersona" runat="server" class="form-control" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="NOMBRE" DataValueField="ID_PERSONA"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:dbDiabetesConnectionString %>" SelectCommand="SELECT [ID_PERSONA], [NOMBRE] FROM [PERSONAS]"></asp:SqlDataSource>
            <br>
            <asp:DropDownList ID="DroptipoUsuario" class="form-control" runat="server" DataSourceID="SqlDataSource3" DataTextField="NOMBRE_TIPO_USUARIO" DataValueField="ID_TIPO_USUARIO" AutoPostBack="True"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:dbDiabetesConnectionString %>" SelectCommand="SELECT [ID_TIPO_USUARIO], [NOMBRE_TIPO_USUARIO] FROM [TIPO_USUARIO]"></asp:SqlDataSource>
            <br>
            <asp:DropDownList ID="DropStatus" runat="server" class="form-control" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="NOM_ESTATUS" DataValueField="ID_ESTATUS"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbDiabetesConnectionString %>" SelectCommand="SELECT [ID_ESTATUS], [NOM_ESTATUS] FROM [ESTATUS_USU]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            <br>
            <br>
        </div>
        </div>
       </div>
   </form>
</asp:Content>

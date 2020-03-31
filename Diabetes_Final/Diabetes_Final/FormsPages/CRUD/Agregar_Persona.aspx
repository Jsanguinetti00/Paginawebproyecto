<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Home.Master" AutoEventWireup="true" CodeBehind="Agregar_Persona.aspx.cs" Inherits="Diabetes_Final.FormsPages.Agregar_Usuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_heder_blanc" runat="server">
    <title>Nuevo Paciente || P.E.D 7 PASOS</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_contenido_blanco" runat="server">
    <form runat="server">
        <h3><i class="fa fa-angle-right"></i>AGREGAR PACIENTE</h3>
       <div class="row mt">
        <div class="col-lg-12">
        <div class="login-wrap">
            <div class="input-group">
                <input type="text" class="form-control" runat="server" id="nombre_persona" placeholder="Nombre (S)" />
                <span class="input-group-addon"><i class="fas fa-user"></i></span>
            </div>
            <br>
            <div class="input-group">
                <input type="text" class="form-control" runat="server" id="apellido_pa" placeholder="Apellido Paterno" />
                <span class="input-group-addon"><i class="fas fa-user"></i></span>
            </div>
            <br>
            <div class="input-group">
                <input type="text" class="form-control" runat="server" id="apellido_ma" placeholder="Apellido Materno" />
                <span class="input-group-addon"><i class="fas fa-user"></i></span>
            </div>
            <br>
            <div class="input-group">
                <input type="password" class="form-control" runat="server" id="contrasenia" placeholder="Contraseña" />
                <span class="input-group-addon"><i class="fas fa-unlock"></i></span>
            </div>
            <br>
            <div class="input-group">
                <input type="text" class="form-control" runat="server" id="edad_persona" placeholder="Edad" />
                <span class="input-group-addon"><i class="fas fa-user"></i></span>
            </div>
            <br>
            <div class="input-group">
                <input type="text" class="form-control" runat="server" id="anios_persona" placeholder="Años con Diabetes" />
                <span class="input-group-addon"><i class="fas fa-user-md"></i></span>
            </div>
            <br>         
          <p>
            Fecha de Inicio del Usuario:
          </p>
          <div class="input-group mb-3">
            <input type="date" runat="server" id="fecha" min="01/01/2020" 
            max="31/12/2025 " step="2" class="form-control" >
              <span class="validity"></span>
          </div>
          <br>
            <br>
            <asp:DropDownList ID="DroptipoUsuario" class="form-control" runat="server" DataSourceID="SqlDataSource3" DataTextField="NOMBRE_TIPO_USUARIO" DataValueField="ID_TIPO_USUARIO" AutoPostBack="True"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:dbDiabetesConnectionString %>" SelectCommand="SELECT [ID_TIPO_USUARIO], [NOMBRE_TIPO_USUARIO] FROM [TIPO_USUARIO]"></asp:SqlDataSource>
            <br>
            <asp:DropDownList ID="DropStatus" runat="server" class="form-control" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="NOM_ESTATUS" DataValueField="ID_ESTATUS"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbDiabetesConnectionString %>" SelectCommand="SELECT [ID_ESTATUS], [NOM_ESTATUS] FROM [ESTATUS_USU]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            <br>
            <div class="input-group">
                <input type="text" runat="server" id="telefono_persona" class="form-control" placeholder="Telefono"/>
                <span class="input-group-addon"><i class="fas fa-phone"></i></span>
            </div>
            <br>
            <div class="input-group">
                <input type="text" class="form-control" runat="server" id="direccion_persona" placeholder="Dirección"/>
                <span class="input-group-addon"><i class="fas fa-home"></i></span>
            </div>
            <br>
            <asp:Button class="btn btn-theme btn-block" type="submit" runat="server" OnClick="agregarPersonas" Text="Agregar Paciente" ></asp:Button>
        </div>
        </div>
       </div>
    </form>
    
</asp:Content>

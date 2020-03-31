<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Blanco.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Diabetes_Final.FormsPages.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_heder_blanco" runat="server">
    <title>Log In || P.E.D 7 PASOS</title>

  <!-- Favicons -->
  <link href="../../img/favicon.png" rel="icon">
  <link href="../../img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="../../lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="../../lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="../../css/style.css" rel="stylesheet">
  <link href="../../css/style-responsive.css" rel="stylesheet">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_contenido_blanco" runat="server">
    <div id="login-page">
    <div class="container">
      <div class="form-login">
        <h2 class="form-login-heading">P.E.D 7 PASOS</h2>
        <div class="login-wrap">
          <h2 class="form-login-heading">Inicia Sesion para Ingresar</h2>
          <br>
          <input type="text" class="form-control" id="idusuario" runat="server" placeholder="Usuario o Telefono" autofocus>
          <br>
          <input type="password" class="form-control" id="idcontrasenia" runat="server" placeholder="Ingresa tu Contraseña">
          <label class="checkbox">
            <input type="checkbox" value="remember-me"> Recuérdame
            <span class="pull-right">
            <a data-toggle="modal" href="index.html"> ¿Se te Olvido tu Contraseña?</a>
            </span>
            </label>
            <asp:Button class="btn btn-theme btn-block" type="submit" runat="server" OnClick="IniciarSesion" Text="Inisiar Sesion"></asp:Button>
          <hr>
          <div class="registration">
              Aún no tengo una cuenta?<br/>
            <a class="" href="#">
              Registarte 
              </a>
          </div>
        </div>
        <!-- Modal -->
        <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Forgot Password ?</h4>
              </div>
              <div class="modal-body">
                <p>Enter your e-mail address below to reset your password.</p>
                <input type="text" name="email" placeholder="Email" autocomplete="off" class="form-control placeholder-no-fix">
              </div>
              <div class="modal-footer">
                <button data-dismiss="modal" class="btn btn-default" type="button">Cancel</button>
                <button class="btn btn-theme" type="button">Submit</button>
              </div>
            </div>
          </div>
        </div>
        <!-- modal -->
      </div>
    </div>
  </div>
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="../../lib/jquery/jquery.min.js"></script>
  <script src="../../lib/bootstrap/js/bootstrap.min.js"></script>
  <!--BACKSTRETCH-->
  <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
  <script type="text/javascript" src="../../lib/jquery.backstretch.min.js"></script>
  <script>
    $.backstretch("../img/login-ped.jpg", {
      speed: 500
    });
  </script>
</asp:Content>

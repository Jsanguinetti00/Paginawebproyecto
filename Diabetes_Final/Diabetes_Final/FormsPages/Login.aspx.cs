using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Diabetes_Final.DataBD;

namespace Diabetes_Final.FormsPages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void IniciarSesion(object sender, EventArgs e)
        {
            string usuarioo = idusuario.Value;
            string contrasenia = idcontrasenia.Value;

            USUARIO usuario = new USUARIO();

            var dbDiabetes = new dbDiabetesEntities();

            var query = dbDiabetes.USUARIO.Where(u => u.TELEFONO == usuarioo && u.CONTRASENA == contrasenia);

            if (query.Any())
            {
                usuario = query.FirstOrDefault() as USUARIO;

                Session["LoginUsuario"] = usuario;

                Response.Redirect("~/FormsPages/Inicio.aspx");
            }
            else
            {
                Response.Write("<script>alert('Su Usuario o Contraseña son Incorrectas')"); 
            }

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Diabetes_Final.DataBD;

namespace Diabetes_Final.FormsPages.Ediciones
{
    public partial class Gestion_Usuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var id_str = Request.QueryString["ID"];
                if (id_str != string.Empty)
                {
                    int id = int.Parse(id_str);
                    RecuperarInformacion(id);
                }
            }

        }

        protected void RecuperarInformacion(int id_usuario)
        {
            
            using (dbDiabetesEntities db = new dbDiabetesEntities())
            {
                USUARIO usu = new USUARIO();
                usu = db.USUARIO.Find(id_usuario);
                telfono_usu.Value = usu.TELEFONO;
                contrasenia_usu.Value = usu.CONTRASENA;
                DropIdPersona.Text = usu.ID_PERSONA.ToString();
                DroptipoUsuario.Text = usu.ID_TIPO_USUARIO.ToString();
                DropStatus.Text = usu.ID_ESTATUS.ToString();

            }
        }

        protected void ModificarDatos(object sender, EventArgs e)
        {
            var id_str = Request.QueryString["ID"];
            int id = int.Parse(id_str);
            using (dbDiabetesEntities db = new dbDiabetesEntities())
            {
                USUARIO usu = db.USUARIO.FirstOrDefault(s => s.ID_USUARIO == id);
                usu.TELEFONO = telfono_usu.Value;
                usu.CONTRASENA = contrasenia_usu.Value;
                usu.ID_PERSONA = int.Parse(DropIdPersona.Text);
                usu.ID_TIPO_USUARIO = int.Parse(DroptipoUsuario.Text);
                usu.ID_ESTATUS = int.Parse(DropStatus.Text);

                db.Entry(usu).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
            }
            Response.Redirect("~/FormsPages/Gestiones/Gestion_Usuarios.aspx");
        }

        protected void EliminarUsuarios(object sender, EventArgs e)
        {
            var id_str = Request.QueryString["ID"];
            int id = int.Parse(id_str);
            using (dbDiabetesEntities db = new dbDiabetesEntities())
            {
                USUARIO usu = db.USUARIO.FirstOrDefault(s => s.ID_USUARIO == id);

                db.USUARIO.Remove(usu);
                db.SaveChanges();
            }
            Response.Redirect("~/FormsPages/Gestiones/Gestion_Usuarios.aspx");
        }

        protected void regresarGestion(object sender, EventArgs e)
        {
            Response.Redirect("~/FormsPages/Gestiones/Gestion_Usuarios.aspx");
        }
    }
}
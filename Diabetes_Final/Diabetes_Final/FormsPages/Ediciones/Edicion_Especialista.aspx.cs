using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Diabetes_Final.DataBD;

namespace Diabetes_Final.FormsPages.Ediciones
{
    public partial class Edicion_Especialista : System.Web.UI.Page
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

        protected void RecuperarInformacion(int id_especialista)
        {
            using(dbDiabetesEntities db = new dbDiabetesEntities())
            {
                ESPECIALISTA especialista = new ESPECIALISTA();
                especialista = db.ESPECIALISTA.Find(id_especialista);
                nombre_esp.Value = especialista.NOMBRE_ESP;
                apellido_pa_esp.Value = especialista.APELLIDOP_ESP;
                apellido_ma_esp.Value = especialista.APELLIDOM_ESP;
                DropTipoEsp.Text = especialista.ID_TIPOESP.ToString();
            }
        }

        protected void ModificarDatos(object sender, EventArgs e)
        {
            var id_str = Request.QueryString["ID"];
            int id = int.Parse(id_str);
            using (dbDiabetesEntities db = new dbDiabetesEntities())
            {
                ESPECIALISTA esp = db.ESPECIALISTA.FirstOrDefault(s => s.ID_ESPECIALISTA == id);
                esp.NOMBRE_ESP = nombre_esp.Value;
                esp.APELLIDOP_ESP = apellido_pa_esp.Value;
                esp.APELLIDOM_ESP = apellido_ma_esp.Value;
                esp.ID_TIPOESP = int.Parse(DropTipoEsp.Text);

                db.Entry(esp).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
            }
            Response.Redirect("~/FormsPages/Gestiones/Gestion_Especialista.aspx");
        }
        
        protected void EliminarEspecialistas(object sender, EventArgs e)
        {
            var id_str = Request.QueryString["ID"];
            int id = int.Parse(id_str);
            using(dbDiabetesEntities db = new dbDiabetesEntities())
            {
                ESPECIALISTA esp = db.ESPECIALISTA.FirstOrDefault(s => s.ID_ESPECIALISTA == id);

                db.ESPECIALISTA.Remove(esp);
                db.SaveChanges();
            }
            Response.Redirect("~/FormsPages/Gestiones/Gestion_Especialista.aspx");
        }

        protected void regresarGestion(object sender, EventArgs e)
        {
            Response.Redirect("~/FormsPages/Gestiones/Gestion_Especialista.aspx");
        }
    }
}
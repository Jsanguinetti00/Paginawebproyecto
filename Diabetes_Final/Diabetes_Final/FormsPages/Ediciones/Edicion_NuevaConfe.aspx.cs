using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Diabetes_Final.DataBD;

namespace Diabetes_Final.FormsPages.Ediciones
{
    public partial class Edicion_NuevaConfe : System.Web.UI.Page
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

        protected void RecuperarInformacion(int id_nombrecof)
        {
            using (dbDiabetesEntities db = new dbDiabetesEntities())
            {
                NOM_CONFERENCIA NomCof = new NOM_CONFERENCIA();
                NomCof = db.NOM_CONFERENCIA.Find(id_nombrecof);
                nombre_conf.Value = NomCof.NOMBRE_CONF;
            }
        }

        protected void ModificarDatos(object sender, EventArgs e)
        {
            var id_str = Request.QueryString["ID"];
            int id = int.Parse(id_str);
            using (dbDiabetesEntities db = new dbDiabetesEntities())
            {
                NOM_CONFERENCIA nombreconf = db.NOM_CONFERENCIA.FirstOrDefault(s => s.ID_NOMCONFERENCIA == id);
                nombreconf.NOMBRE_CONF = nombre_conf.Value;

                db.Entry(nombreconf).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
            }
            Response.Redirect("~/FormsPages/Gestiones/Gestion_NombreConfe.aspx");
        }

        protected void EliminarNuevaConfe(object sender, EventArgs e)
        {
            var id_str = Request.QueryString["ID"];
            int id = int.Parse(id_str);
            using (dbDiabetesEntities db = new dbDiabetesEntities())
            {
                NOM_CONFERENCIA nombreCof = db.NOM_CONFERENCIA.FirstOrDefault(s => s.ID_NOMCONFERENCIA == id);

                db.NOM_CONFERENCIA.Remove(nombreCof);
                db.SaveChanges();
            }
            Response.Redirect("~/FormsPages/Gestiones/Gestion_NombreConfe.aspx");
        }

        protected void regresarGestion(object sender, EventArgs e)
        {
            Response.Redirect("~/FormsPages/Gestiones/Gestion_NombreConfe.aspx");
        }
    }
}
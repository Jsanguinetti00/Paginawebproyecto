using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Diabetes_Final.DataBD;

namespace Diabetes_Final.FormsPages.Ediciones
{
    public partial class Edicion_Conferencia : System.Web.UI.Page
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

        protected void RecuperarInformacion(int id_conferencias)
        {
            using (dbDiabetesEntities db = new dbDiabetesEntities())
            {
                CONFERENCIAS confe = new CONFERENCIAS();
                confe = db.CONFERENCIAS.Find(id_conferencias);
                DropIdPersona.Text = confe.ID_PERSONA.ToString();
                fecha_confe.Value = confe.FECHA_CONFERENCIAS.ToString("yyyy-MM-dd");
                hora_confe.Value = confe.HORA_CONFERENCIAS.ToString();
                DropNomConfe.Text = confe.ID_NOMCONFERENCIA.ToString();
            }
        }

        protected void ModificarDatos(object sender, EventArgs e)
        {
            var id_str = Request.QueryString["ID"];
            int id = int.Parse(id_str);
            using (dbDiabetesEntities db = new dbDiabetesEntities())
            {
                CONFERENCIAS confe = db.CONFERENCIAS.FirstOrDefault(s => s.ID_CONFERENCIAS == id);
                confe.ID_PERSONA = int.Parse(DropIdPersona.Text);
                confe.FECHA_CONFERENCIAS = DateTime.Parse(fecha_confe.Value);
                confe.HORA_CONFERENCIAS = TimeSpan.Parse(hora_confe.Value);
                confe.ID_NOMCONFERENCIA = int.Parse(DropNomConfe.Text);

                db.Entry(confe).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
            }
            Response.Redirect("~/FormsPages/Gestiones/Gestion_Conferencias.aspx");
        }

        protected void EliminarCOnferencia(object sender, EventArgs e)
        {
            var id_str = Request.QueryString["ID"];
            int id = int.Parse(id_str);
            using (dbDiabetesEntities db = new dbDiabetesEntities())
            {
                CONFERENCIAS confe = db.CONFERENCIAS.FirstOrDefault(s => s.ID_CONFERENCIAS == id);

                db.CONFERENCIAS.Remove(confe);
                db.SaveChanges();
            }
            Response.Redirect("~/FormsPages/Gestiones/Gestion_Conferencias.aspx");
        }

        protected void regresarGestion(object sender, EventArgs e)
        {
            Response.Redirect("~/FormsPages/Gestiones/Gestion_Conferencias.aspx");
        }
    }
}
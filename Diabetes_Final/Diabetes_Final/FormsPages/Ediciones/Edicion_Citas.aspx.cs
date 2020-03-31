using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Diabetes_Final.DataBD;

namespace Diabetes_Final.FormsPages.Ediciones
{
    public partial class Edicion_Citas : System.Web.UI.Page
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

        protected void RecuperarInformacion(int id_cita)
        {
            using (dbDiabetesEntities db = new dbDiabetesEntities())
            {
                CITAS citas = new CITAS();
                citas = db.CITAS.Find(id_cita);
                DropIdPersona.Text = citas.ID_CITAS.ToString();
                DropTipoCita.Text = citas.ID_TIPO_CITAS.ToString();
                DropConsultorio.Text = citas.ID_DATOSCITA.ToString();
                fecha.Value = citas.FECHA_CITA.ToString("yyyy-MM-dd");
                hora.Value = citas.HORA_CITA.ToString();

            }
        }

        protected void ModificarDatos(object sender, EventArgs e)
        {
            var id_str = Request.QueryString["ID"];
            int id = int.Parse(id_str);
            using (dbDiabetesEntities db = new dbDiabetesEntities())
            {
                CITAS cita = db.CITAS.FirstOrDefault(s => s.ID_CITAS == id);
                cita.ID_PERSONA = int.Parse(DropIdPersona.Text);
                cita.ID_TIPO_CITAS = int.Parse(DropTipoCita.Text);
                cita.ID_DATOSCITA = int.Parse(DropConsultorio.Text);
                cita.FECHA_CITA = DateTime.Parse(fecha.Value);
                cita.HORA_CITA = TimeSpan.Parse(hora.Value);

                db.Entry(cita).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
            }
            Response.Redirect("~/FormsPages/Gestiones/Gestion_Citas.aspx");
        }

        protected void EliminarCitas(object sender, EventArgs e)
        {
            var id_str = Request.QueryString["ID"];
            int id = int.Parse(id_str);
            using (dbDiabetesEntities db = new dbDiabetesEntities())
            {
                CITAS cita = db.CITAS.FirstOrDefault(s => s.ID_CITAS == id);

                db.CITAS.Remove(cita);
                db.SaveChanges();
            }
            Response.Redirect("~/FormsPages/Gestiones/Gestion_Citas.aspx");
        }

        protected void regresarGestion(object sender, EventArgs e)
        {
            Response.Redirect("~/FormsPages/Gestiones/Gestion_Citas.aspx");
        }
    }
}
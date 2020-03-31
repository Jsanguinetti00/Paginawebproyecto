using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Diabetes_Final.DataBD;

namespace Diabetes_Final.FormsPages.Ediciones
{
    public partial class Edicion_Medicion : System.Web.UI.Page
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

        protected void RecuperarInformacion(int id_medicion)
        {

            using (dbDiabetesEntities db = new dbDiabetesEntities())
            {
                MEDICION_GLUCOSA med = new MEDICION_GLUCOSA();
                med = db.MEDICION_GLUCOSA.Find(id_medicion);
                medicion.Value = med.PRIMERA_MEDICION;
                DropDownList2.Text = med.ID_TIPMEDICION.ToString();
                DropDownList3.Text = med.ID_PERSONA.ToString();
                Fecha.Text = med.FECHA_MEDICION_GLUCOSA.ToString("dd-MM-yyyy");
                Hora.Text = med.HORA_MEDICION_GLUCOSA.ToString();

            }
        }

        protected void ModificarDatos(object sender, EventArgs e)
        {
            var id_str = Request.QueryString["ID"];
            int id = int.Parse(id_str);
            using (dbDiabetesEntities db = new dbDiabetesEntities())
            {
                MEDICION_GLUCOSA med = db.MEDICION_GLUCOSA.FirstOrDefault(s => s.ID_MEDICION_GLUCOSA == id);
                med.PRIMERA_MEDICION = medicion.Value;
                med.ID_TIPMEDICION = int.Parse(DropDownList2.Text);
                med.ID_PERSONA = int.Parse(DropDownList3.Text);
                med.FECHA_MEDICION_GLUCOSA = DateTime.Parse(Fecha.Text);
                med.HORA_MEDICION_GLUCOSA = TimeSpan.Parse(Hora.Text);

                db.Entry(med).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
            }
            Response.Redirect("~/FormsPages/Gestiones/Gestion_Mediciones.aspx");
        }

        protected void EliminarUsuarios(object sender, EventArgs e)
        {
            var id_str = Request.QueryString["ID"];
            int id = int.Parse(id_str);
            using (dbDiabetesEntities db = new dbDiabetesEntities())
            {
                MEDICION_GLUCOSA med = db.MEDICION_GLUCOSA.FirstOrDefault(s => s.ID_MEDICION_GLUCOSA == id);

                db.MEDICION_GLUCOSA.Remove(med);
                db.SaveChanges();
            }
            Response.Redirect("~/FormsPages/Gestiones/Gestion_Mediciones.aspx");
        }

        protected void regresarGestion(object sender, EventArgs e)
        {
            Response.Redirect("~/FormsPages/Gestiones/Gestion_Mediciones.aspx");
        }
    }
}
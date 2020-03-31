using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Diabetes_Final.DataBD;

namespace Diabetes_Final.FormsPages.CRUD
{
    public partial class Agregar_Conferencia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AgregarConferencia(object sender, EventArgs e)
        {
            int nombre = int.Parse(DropIdPersona.Text);
            DateTime fecha = DateTime.Parse(fecha_confe.Value);
            TimeSpan hora = TimeSpan.Parse(hora_confe.Value);
            int nombreConf = int.Parse(DropNomConfe.Text);
            

            using (dbDiabetesEntities db = new dbDiabetesEntities())
            {
                CONFERENCIAS confe = new CONFERENCIAS()
                {
                    ID_PERSONA = nombre,
                    FECHA_CONFERENCIAS = Convert.ToDateTime(fecha),
                    HORA_CONFERENCIAS = hora,
                    ID_NOMCONFERENCIA = nombreConf, 

                };
                db.CONFERENCIAS.Add(confe);
                db.SaveChanges();
            }

            Response.Redirect("~/FormsPages/Gestiones/Gestion_Conferencias.aspx");
        }
    }
}
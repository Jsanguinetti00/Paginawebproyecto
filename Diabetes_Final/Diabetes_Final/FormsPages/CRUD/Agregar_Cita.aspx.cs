using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Diabetes_Final.DataBD;

namespace Diabetes_Final.FormsPages
{
    public partial class Agregar_Cita : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AgregarCita(object sender, EventArgs e)
        {
            int nombre = int.Parse(DropIdPersona.Text);
            int tipo_cita = int.Parse(DropTipoCita.Text);
            int datos_consulta = int.Parse(DropConsultorio.Text);
            DateTime dia_Consulta = DateTime.Parse(fecha.Value);
            TimeSpan hora_cita = TimeSpan.Parse(hora.Value);

            using (dbDiabetesEntities db = new dbDiabetesEntities())
            {
                CITAS citas = new CITAS()
                {
                    ID_PERSONA = nombre,
                    ID_TIPO_CITAS = tipo_cita,
                    ID_DATOSCITA = datos_consulta,
                    FECHA_CITA = Convert.ToDateTime(dia_Consulta),
                    HORA_CITA = hora_cita,

                };
                db.CITAS.Add(citas);
                db.SaveChanges();
            }

            Response.Redirect("~/FormsPages/Gestiones/Gestion_Citas.aspx");
        }
    }
}
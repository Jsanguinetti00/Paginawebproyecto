using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Diabetes_Final.DataBD;

namespace Diabetes_Final.FormsPages
{
    public partial class Doctor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AgregarEspecialista(object sender, EventArgs e)
        {
            string nombre = nombre_esp.Value;
            string apellido_pa = apellido_pa_esp.Value;
            string apellido_ma = apellido_ma_esp.Value;
            int tipo_esp = int.Parse(DropTipoEsp.Text);

            using(dbDiabetesEntities db = new dbDiabetesEntities())
            {
                ESPECIALISTA especialista = new ESPECIALISTA()
                {
                    NOMBRE_ESP = nombre,
                    APELLIDOP_ESP = apellido_pa,
                    APELLIDOM_ESP = apellido_ma,
                    ID_TIPOESP = tipo_esp,

                };
                db.ESPECIALISTA.Add(especialista);
                db.SaveChanges();
            }

            Response.Redirect("~/FormsPages/Gestiones/Gestion_Especialista.aspx");
        }
    }
}
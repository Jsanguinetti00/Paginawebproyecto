using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Diabetes_Final.DataBD;

namespace Diabetes_Final.FormsPages.CRUD
{
    public partial class Agregar_Medicion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Label1_Load(object sender, EventArgs e)
        {
            Fecha.Text = DateTime.Now.ToString("dd-MM-yyyy");
            Hora.Text = DateTime.Now.ToString("hh:mm:ss");
        }

        protected void AgregarMedicion(object sender, EventArgs e)
        {
            int Medicion = int.Parse(medicion.Value);
            int tipoMedicion = int.Parse(DropDownList2.Text);
            DateTime fecha = DateTime.Parse(Fecha.Text);
            TimeSpan  hora = TimeSpan.Parse(Hora.Text);
            int persona = int.Parse(DropDownList3.Text);

            using (dbDiabetesEntities db = new dbDiabetesEntities())
            {
                MEDICION_GLUCOSA medi = new MEDICION_GLUCOSA
                {
                    PRIMERA_MEDICION = Medicion,
                    ID_TIPMEDICION = tipoMedicion,
                    FECHA_MEDICION_GLUCOSA = fecha,
                    HORA_MEDICION_GLUCOSA = hora,
                    RESULTADO_MEDICION_GLUCOSA = Convert.ToDouble(Medicion),
                    ID_PERSONA = persona,
                };

                db.Entry(medi).State = System.Data.Entity.EntityState.Added;
                db.SaveChanges();
            }
        }
    }
}
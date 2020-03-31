using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Diabetes_Final.DataBD;

namespace Diabetes_Final.FormsPages
{
    public partial class _1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected string AgregarAño()
        {
            string Recuperar = Request.QueryString["texto"];
            int aniostotales = Convert.ToInt32(Recuperar);

            var db = new dbDiabetesEntities();

            int NumerodeEdades = db.PERSONAS.Where(s => s.EDAD == aniostotales).Count();

            string arrayEdad = $"[{NumerodeEdades}]";

            return arrayEdad;
        }

        protected string RegistrosFecha()
        {
            string Recuperar = Request.QueryString["EDAD"];
            int fechainicio = Convert.ToInt32(Recuperar);
            
            var db = new dbDiabetesEntities();

            int registroFecha = db.PERSONAS.Where(s => s.FECHA_INICIO.Year == fechainicio).Count();

            string FechaRegistro = $"[{registroFecha}]";

            return FechaRegistro;
        }
    }
}
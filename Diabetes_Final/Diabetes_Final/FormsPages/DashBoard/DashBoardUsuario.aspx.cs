using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Diabetes_Final.DataBD;

namespace Diabetes_Final.FormsPages.DashBoard
{
    public partial class DashBoardUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected string NumeroEdades()
        {
            string Recuperar = Request.QueryString["EdadesNum"];
            int aniostotales = Convert.ToInt32(Recuperar);

            var db = new dbDiabetesEntities();

            int NumerodeEdades = db.PERSONAS.Where(s => s.EDAD == aniostotales).Count();

            string arrayEdad = $"[{NumerodeEdades}]";

            return arrayEdad;
        }

        protected string FechaRegistros()
        {
            string Recuperar = Request.QueryString["AniosRegistro"];
            int fechainicio = Convert.ToInt32(Recuperar);

            var db = new dbDiabetesEntities();

            int registroFecha = db.PERSONAS.Where(s => s.FECHA_INICIO.Year == fechainicio).Count();

            string FechaRegistro = $"[{registroFecha}]";

            return FechaRegistro;
        }

        protected string EdadesRangosChart()
        {
            var db = new dbDiabetesEntities();

            int GrupoPersonas1 = db.PERSONAS.Where(p => p.EDAD >= 0 && p.EDAD <= 15).Count();
            int GrupoPersonas2 = db.PERSONAS.Where(p => p.EDAD >= 16 && p.EDAD <= 30).Count();
            int GrupoPersonas3 = db.PERSONAS.Where(p => p.EDAD >= 31 && p.EDAD <= 45).Count();
            int GrupoPersonas4 = db.PERSONAS.Where(p => p.EDAD >= 46 && p.EDAD <= 60).Count();
            int GrupoPersonas5 = db.PERSONAS.Where(p => p.EDAD >= 61 && p.EDAD <= 75).Count();
            int GrupoPersonas6 = db.PERSONAS.Where(p => p.EDAD >= 76 && p.EDAD <= 90).Count();
            int GrupoPersonas7 = db.PERSONAS.Where(p => p.EDAD >= 91 && p.EDAD <= 100).Count();

            string arrayTotalTable = $"[{GrupoPersonas1},{GrupoPersonas2},{GrupoPersonas3},{GrupoPersonas4},{GrupoPersonas5}" +
                $",{GrupoPersonas6},{GrupoPersonas7}]";

            return arrayTotalTable;
        }

        protected string StatusPersona()
        {
            var db = new dbDiabetesEntities();

            int EstatusPersona1 = db.USUARIO.Where(p => p.ID_ESTATUS == 1).Count();
            int EstatusPersona2 = db.USUARIO.Where(p => p.ID_ESTATUS == 3).Count();

            string arrayEstatusPersona = $"[{EstatusPersona1}, {EstatusPersona2}]";

            return arrayEstatusPersona;
        }
    }
}
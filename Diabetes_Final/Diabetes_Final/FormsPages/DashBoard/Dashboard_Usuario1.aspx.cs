using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Diabetes_Final.DataBD;

namespace Diabetes_Final.FormsPages
{
    public partial class Dashboard_usuario : System.Web.UI.Page
    {
        int _edad = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

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

        protected string EdadesRangosDiabetes()
        {
            var db = new dbDiabetesEntities();

            int GrupoDiabetes1 = db.PERSONAS.Where(p => p.ANIOSCONDIABETES >= 1 && p.ANIOSCONDIABETES <= 3).Count();
            int GrupoDiabetes2 = db.PERSONAS.Where(p => p.ANIOSCONDIABETES >= 4 && p.ANIOSCONDIABETES <= 6).Count();
            int GrupoDiabetes3 = db.PERSONAS.Where(p => p.ANIOSCONDIABETES >= 7 && p.ANIOSCONDIABETES <= 9).Count();
            int GrupoDiabetes4 = db.PERSONAS.Where(p => p.ANIOSCONDIABETES >= 10 && p.ANIOSCONDIABETES <= 12).Count();
            int GrupoDiabetes5 = db.PERSONAS.Where(p => p.ANIOSCONDIABETES >= 13 && p.ANIOSCONDIABETES <= 15).Count();
            int GrupoDiabetes6 = db.PERSONAS.Where(p => p.ANIOSCONDIABETES >= 16 && p.ANIOSCONDIABETES <= 100).Count();

            string arrayTotalDiabetes = $"[{GrupoDiabetes1},{GrupoDiabetes2},{GrupoDiabetes3},{GrupoDiabetes4},{GrupoDiabetes5}" +
                $",{GrupoDiabetes6}]";
            
            return arrayTotalDiabetes;
        }

        protected string StatusPersona()
        {
            var db = new dbDiabetesEntities();

            int EstatusPersona1 = db.USUARIO.Where(p => p.ID_ESTATUS == 1).Count();
            int EstatusPersona2 = db.USUARIO.Where(p => p.ID_ESTATUS == 3).Count();

            string arrayEstatusPersona = $"[{EstatusPersona1}, {EstatusPersona2}]";

            return arrayEstatusPersona;
        }

        protected string EdadIngresado()
        {
            var db = new dbDiabetesEntities();
            int edad = this._edad ;

            int NumerodeEdades = db.PERSONAS.Where(s => s.EDAD == edad).Count();

            string arrayEdad = $"[{NumerodeEdades}]";
            
            return arrayEdad;
        }

        protected void btnEdad_Click(object sender, EventArgs e)
        {
            this._edad = int.Parse(_quantity.Value);
        }
    }
}
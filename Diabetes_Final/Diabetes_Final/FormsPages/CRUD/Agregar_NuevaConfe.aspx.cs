using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Diabetes_Final.DataBD;

namespace Diabetes_Final.FormsPages.CRUD
{
    public partial class Agregar_NuevaConf : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AgregarNuevaConf(object sender, EventArgs e)
        {
            string nombre = nombre_conf.Value; ;

            using (dbDiabetesEntities db = new dbDiabetesEntities())
            {
                NOM_CONFERENCIA nomrbreCof = new NOM_CONFERENCIA()
                {
                    NOMBRE_CONF = nombre,

                };
                db.NOM_CONFERENCIA.Add(nomrbreCof);
                db.SaveChanges();
            }

            Response.Redirect("~/FormsPages/Gestiones/Gestion_NombreConfe.aspx");
        }
    }
}
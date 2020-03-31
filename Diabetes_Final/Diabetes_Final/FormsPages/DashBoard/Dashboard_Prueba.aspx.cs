using Diabetes_Final.DataBD;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Diabetes_Final.FormsPages
{
    public partial class Dasboard_Prueba : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected string ObtenerDatos()
        {
            var db = new dbDiabetesEntities();


            return "";
        }
    }
}
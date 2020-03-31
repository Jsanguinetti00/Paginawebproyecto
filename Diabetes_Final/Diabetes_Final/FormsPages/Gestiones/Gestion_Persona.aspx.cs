using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Diabetes_Final.FormsPages
{
    public partial class GestionUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Update")
            {
                var IdPersonas = e.CommandArgument.ToString();

                Response.Redirect($"~/FormsPages/Ediciones/Edicion_Persona.aspx?ID={IdPersonas}");
            }
        }
    }
}
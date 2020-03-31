using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Diabetes_Final.FormsPages.Gestiones
{
    public partial class Gestion_Usuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Update")
            {
                var IdUsuario = e.CommandArgument.ToString();

                Response.Redirect($"~/FormsPages/Ediciones/Edicion_Usuarios.aspx?ID={IdUsuario}");
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Diabetes_Final.FormsPages.Gestiones
{
    public partial class Gestion_Conferencias : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Update")
            {
                var IdConferencia = e.CommandArgument.ToString();

                Response.Redirect($"~/FormsPages/Ediciones/Edicion_Conferencia.aspx?ID={IdConferencia}");
            }
        }
    }
}
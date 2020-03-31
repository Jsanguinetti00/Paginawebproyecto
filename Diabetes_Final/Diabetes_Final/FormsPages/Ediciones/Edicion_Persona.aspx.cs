using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Diabetes_Final.DataBD;

namespace Diabetes_Final.FormsPages
{
    public partial class EdicionUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack) {
                var id_str = Request.QueryString["ID"];
                if (id_str != string.Empty)
                {
                    int id = int.Parse(id_str);
                    RecuperarInformacion(id);
                }
            }            
        }

        protected void RecuperarInformacion(int id_usuario)
        {
            using (dbDiabetesEntities db = new dbDiabetesEntities())
            {
                PERSONAS personas = new PERSONAS();
                personas = db.PERSONAS.Find(id_usuario);
                nombre_persona.Value = personas.NOMBRE;
                apellido_pa.Value = personas.APELLIDO_PATER;
                apellido_ma.Value = personas.APELLIDO_MATER;
                edad_persona.Value = personas.EDAD.ToString();
                anios_persona.Value = personas.ANIOSCONDIABETES.ToString();
                fecha.Value = personas.FECHA_INICIO.ToString("yyyy-MM-dd");
                telefono_persona.Value = personas.TELEFONO;
                direccion_persona.Value = personas.DIRECCION;

            }
        }

        protected void ModificarPersonas()
        {

        }

        protected void ModificarDatos(object sender, EventArgs e)
        {
            var id_str = Request.QueryString["ID"];
            int id = int.Parse(id_str);
            string nombre = nombre_persona.Value;
            string apellido_pater = apellido_pa.Value;
            string apellido_mater = apellido_ma.Value;
            int edad = int.Parse(edad_persona.Value);
            DateTime diaComienzo = DateTime.Parse(fecha.Value);
            int edad_diabetes = int.Parse(anios_persona.Value);
            string telefono = telefono_persona.Value;
            string direccion = direccion_persona.Value;

            using (dbDiabetesEntities modificar = new dbDiabetesEntities())
            {
                PERSONAS c = modificar.PERSONAS.FirstOrDefault(s => s.ID_PERSONA == id);

                c.NOMBRE = nombre;
                c.APELLIDO_PATER = apellido_pater;
                c.APELLIDO_MATER = apellido_mater;
                c.EDAD = edad;
                c.ANIOSCONDIABETES = edad_diabetes;
                c.FECHA_INICIO = Convert.ToDateTime(diaComienzo);
                c.TELEFONO = telefono;
                c.DIRECCION = direccion;

                modificar.Entry(c).State = System.Data.Entity.EntityState.Modified;
                modificar.SaveChanges();


            }

            Response.Redirect("~/FormsPages/Gestiones/Gestion_Persona.aspx");
        }

        protected void EliminarPersonas(object sender, EventArgs e)
        {
            var id_str = Request.QueryString["ID"];
            int id = int.Parse(id_str);

            using (dbDiabetesEntities eliminar = new dbDiabetesEntities())
            {
                PERSONAS c = eliminar.PERSONAS.FirstOrDefault(s => s.ID_PERSONA == id);

                eliminar.PERSONAS.Remove(c);
                eliminar.SaveChanges();
            }

            Response.Redirect("~/FormsPages/Gestiones/Gestion_Persona.aspx");
        }

        protected void regresarGestion(object sender, EventArgs e)
        {
            Response.Redirect("~/FormsPages/Gestiones/Gestion_Persona.aspx");
        }
    }
}

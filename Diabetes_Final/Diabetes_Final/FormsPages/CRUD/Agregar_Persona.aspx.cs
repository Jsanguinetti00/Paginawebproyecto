using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Diabetes_Final.DataBD;

namespace Diabetes_Final.FormsPages
{
    public partial class Agregar_Usuario : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void agregarPersonas(object sender, EventArgs e)
        {
            string nombre = nombre_persona.Value;
            string apellido_pater = apellido_pa.Value;
            string apellido_mater = apellido_ma.Value;
            int edad = int.Parse(edad_persona.Value);
            DateTime fecha1 = DateTime.Now;
            int edad_diabetes = int.Parse(anios_persona.Value);
            string telefono = telefono_persona.Value;
            string direccion = direccion_persona.Value;
            int tipo = int.Parse(DroptipoUsuario.Text);
            int status = int.Parse(DropStatus.Text);
            string contasenia = contrasenia.Value;

            using (dbDiabetesEntities db = new dbDiabetesEntities())
            {
                PERSONAS personas = new PERSONAS {

                    NOMBRE = nombre,
                    APELLIDO_PATER = apellido_pater,
                    APELLIDO_MATER = apellido_mater,
                    EDAD = edad,
                    FECHA_INICIO = DateTime.Parse(fecha.Value),
                    ANIOSCONDIABETES = edad_diabetes,
                    TELEFONO = telefono,
                    DIRECCION = direccion,

                };

                db.Entry(personas).State = System.Data.Entity.EntityState.Added;
                db.SaveChanges();

                USUARIO usu = new USUARIO()
                {
                    TELEFONO = telefono,
                    CONTRASENA = contasenia,
                    ID_PERSONA = personas.ID_PERSONA,
                    ID_TIPO_USUARIO = tipo,
                    ID_ESTATUS = status,

                };

                db.Entry(usu).State = System.Data.Entity.EntityState.Added;
                db.SaveChanges();
            }

            Response.Redirect("~/FormsPages/Gestiones/Gestion_Persona.aspx");
        }


    }
}
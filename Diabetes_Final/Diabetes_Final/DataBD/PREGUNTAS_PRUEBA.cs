//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Diabetes_Final.DataBD
{
    using System;
    using System.Collections.Generic;
    
    public partial class PREGUNTAS_PRUEBA
    {
        public int ID_PREGUNTASBECK { get; set; }
        public int ID_PREGUNTA { get; set; }
        public int ID_PRUEBA { get; set; }
        public int ID_RESPUESTA { get; set; }
    
        public virtual PREGUNTA PREGUNTA { get; set; }
        public virtual PRUEBA_BECK PRUEBA_BECK { get; set; }
        public virtual RESPUESTAS RESPUESTAS { get; set; }
    }
}

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
    
    public partial class CALENDARIO_7PASOS
    {
        public int ID_CALENDARIO_7PASOS { get; set; }
        public string ASISTENCIA { get; set; }
        public System.TimeSpan HORA_CALEDARIO { get; set; }
        public System.DateTime FECHA_CALENDARIO_7PASOS { get; set; }
        public int ID_TIPO_ACTIVIDAD { get; set; }
        public int ID_PERSONA { get; set; }
    
        public virtual PERSONAS PERSONAS { get; set; }
        public virtual TIPO_ACTIVIDAD TIPO_ACTIVIDAD { get; set; }
    }
}

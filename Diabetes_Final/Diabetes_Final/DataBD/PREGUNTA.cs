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
    
    public partial class PREGUNTA
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PREGUNTA()
        {
            this.PREGUNTAS_PRUEBA = new HashSet<PREGUNTAS_PRUEBA>();
        }
    
        public int ID_PREGUNTA { get; set; }
        public string TXTPREGUNTA { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PREGUNTAS_PRUEBA> PREGUNTAS_PRUEBA { get; set; }
    }
}

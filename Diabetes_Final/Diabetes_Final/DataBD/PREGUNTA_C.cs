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
    
    public partial class PREGUNTA_C
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PREGUNTA_C()
        {
            this.PREGUNTAS_CUESTIONARIO = new HashSet<PREGUNTAS_CUESTIONARIO>();
        }
    
        public int ID_PREGUNTAC { get; set; }
        public string PREGUNTA { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PREGUNTAS_CUESTIONARIO> PREGUNTAS_CUESTIONARIO { get; set; }
    }
}

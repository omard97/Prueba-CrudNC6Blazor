using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CrudNetCore6_BlazorWebAssembly.Shared
{
    public class Usuario
    {
        public int IdUsuario { get; set; }
        [Required(ErrorMessage = "* Obligatorio")]
        public string Nombre { get; set; } = null!;
        [Required(ErrorMessage = "* Obligatorio")]
        public string Apellido { get; set; } = null!;
        [Required(ErrorMessage = "* Obligatorio")]
        public string Email { get; set; } = null!;
        [Required(ErrorMessage = "* Obligatorio")]
        public string Telefono { get; set; } = null!;

        public DateTime FechaAlta { get; set; }

        public DateTime? FechaBaja { get; set; }
    }
}

using CrudNetCore6_BlazorWebAssembly.Server.Servicios;
using CrudNetCore6_BlazorWebAssembly.Shared;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace CrudNetCore6_BlazorWebAssembly.Server.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UsuarioController : ControllerBase
    {
        public readonly IUsuario iUsuario;
        public UsuarioController(IUsuario iUser)
        {
            iUsuario = iUser; ;
        }

        [HttpGet]
        public async Task<List<Usuario>> ListaUsuario()
        {
            return await Task.FromResult(iUsuario.DatosUsuarios());
        }

        [HttpPost]
        public void Post(Usuario usuario)
        {
            iUsuario.NuevoUsuario(usuario);

        }

        [HttpGet("{id}")]

        public IActionResult GetUsuario(int id)
        {
            Usuario u = iUsuario.Datosusuario(id);
            if(u != null)
            {
                return Ok(u);
            }
            return NotFound();
        }

        [HttpPut]
        public void Modificar(Usuario usuario)
        {
            iUsuario.ActualizarUsuario(usuario);
        }

        [HttpDelete("{id}")]
        public IActionResult Delete( int id)
        {
            try
            {
                iUsuario.BorrarUsuario(id);
                return Ok();
            }catch(Exception ex)
            {
                throw new Exception(ex.ToString());
            }
            
        }



    }
}

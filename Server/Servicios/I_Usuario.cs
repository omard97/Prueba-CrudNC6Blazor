using CrudNetCore6_BlazorWebAssembly.Shared;

namespace CrudNetCore6_BlazorWebAssembly.Server.Servicios;

public interface IUsuario
{
    //listar todos los usuarios
    public List<Shared.Usuario> DatosUsuarios();
    
    //Crear un usuario
    public void NuevoUsuario(Shared.Usuario idU);

    public void ActualizarUsuario(Shared.Usuario idU);

    //Listar los datos de un usuario
    public Shared.Usuario Datosusuario(int idU);

    public void BorrarUsuario(int idU);
}


using CrudNetCore6_BlazorWebAssembly.Server.Modelos;
using CrudNetCore6_BlazorWebAssembly.Shared;
using Microsoft.EntityFrameworkCore;

namespace CrudNetCore6_BlazorWebAssembly.Server.Servicios
{
    public class GestionUsuario : IUsuario
    {
        readonly NetCore6EjemploContext dbContext = new();

        public GestionUsuario(NetCore6EjemploContext db)
        {
            dbContext = db;
        }
        public void ActualizarUsuario(Shared.Usuario idU)
        {
            try
            {

                dbContext.Entry(idU).State = EntityState.Modified;
                dbContext.SaveChanges();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.ToString());
            }
        }

        public void BorrarUsuario(int idU)
        {
            try
            {
                Usuario? u = dbContext.Usuarios.Find(idU);
                if (u != null)
                {
                    dbContext.Usuarios.Remove(u);
                    dbContext.SaveChanges();
                }
                else
                {
                    throw new ArgumentException();
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.ToString());
            }
        }

        public Shared.Usuario Datosusuario(int idU)
        {
            try
            {
                Usuario? u = dbContext.Usuarios.Find(idU);
                if( u!= null)
                {
                    return u;
                }
                else
                {
                    throw new ArgumentException();
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.ToString());
            }
        }

        public List<Shared.Usuario> DatosUsuarios()
        {
            try
            {
                return dbContext.Usuarios.ToList();
            }catch(Exception ex)
            {
                throw new Exception(ex.ToString());
            }
        }

        public void NuevoUsuario(Shared.Usuario Usuario)
        {
            try
            {
                Usuario.FechaAlta = DateTime.Now;
                dbContext.Usuarios.Add(Usuario);
                dbContext.SaveChanges();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.ToString());
            }
        }
    }
}

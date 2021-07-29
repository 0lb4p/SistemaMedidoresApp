using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LecturasModel.DAL
{
    public class UsuarioDALDB : IUsuarioDAL
    {
        private SistemaMedidoresEntities1 sistemaDB = new SistemaMedidoresEntities1();

        public void IngresarUsuario(Usuario usuario)
        {
            this.sistemaDB.Usuarios.Add(usuario);
            this.sistemaDB.SaveChanges();
        }

        public Usuario Obtener(int id)
        {
            return this.sistemaDB.Usuarios.Find(id);
        }

        public List<Usuario> ObtenerUsuarios()
        {
            return this.sistemaDB.Usuarios.ToList();
        }

        public void EliminarUsuario(int id)
        {
            Usuario usuario = this.sistemaDB.Usuarios.Find(id);
            this.sistemaDB.Usuarios.Remove(usuario);
            this.sistemaDB.SaveChanges();
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LecturasModel.DAL
{
    public interface IUsuarioDAL
    {
        void IngresarUsuario(Usuario usuario);
        Usuario Obtener(int id);
        List<Usuario> ObtenerUsuarios();
        void EliminarUsuario(int id);


        
    }
}

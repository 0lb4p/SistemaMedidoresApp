using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LecturasModel.DAL
{
    public interface IMedidorDAL
    {
        void IngresarMedidor(Medidor medidor);
        Medidor Obtener(int id);
        List<Medidor> ObtenerMedidores();
        void EliminarMedidor(int id);
    }
}

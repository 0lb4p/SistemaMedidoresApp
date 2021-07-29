using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LecturasModel.DAL
{
    public interface ILecturaDAL
    {
        void IngresarLectura(Lectura lectura);
        Lectura Obtener(int id);
        List<Lectura> ObtenerLecturas();
        void EliminarLectura(int id);
    }
}
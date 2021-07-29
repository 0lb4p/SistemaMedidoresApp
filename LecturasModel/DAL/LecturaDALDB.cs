using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LecturasModel.DAL
{
    public class LecturaDALDB : ILecturaDAL
    {
        private SistemaMedidoresEntities1 sistemaDB = new SistemaMedidoresEntities1();

        public void IngresarLectura(Lectura lectura)
        {
            this.sistemaDB.Lecturas.Add(lectura);
            this.sistemaDB.SaveChanges();
        }

        public Lectura Obtener(int id)
        {
            return this.sistemaDB.Lecturas.Find(id);
        }

        public List<Lectura> ObtenerLecturas()
        {
            return this.sistemaDB.Lecturas.ToList();
        }

        public void EliminarLectura(int id)
        {
            Lectura lectura = this.sistemaDB.Lecturas.Find(id);
            this.sistemaDB.Lecturas.Remove(lectura);
            this.sistemaDB.SaveChanges();
        }


    }
}

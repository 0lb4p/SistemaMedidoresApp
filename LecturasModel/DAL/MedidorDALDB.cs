using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LecturasModel.DAL
{
    public class MedidorDALDB : IMedidorDAL
    {
        private SistemaMedidoresEntities1 sistemaDB = new SistemaMedidoresEntities1();

        public void IngresarMedidor(Medidor medidor)
        {
            this.sistemaDB.Medidors.Add(medidor);
            this.sistemaDB.SaveChanges();
        }

        public Medidor Obtener(int id)
        {
            return this.sistemaDB.Medidors.Find(id);
        }

        public List<Medidor> ObtenerMedidores()
        {
            return this.sistemaDB.Medidors.ToList();
        }

        public void EliminarMedidor(int id)
        {
            Medidor medidor = this.sistemaDB.Medidors.Find(id);
            this.sistemaDB.Medidors.Remove(medidor);
            this.sistemaDB.SaveChanges();
        }
    }
}

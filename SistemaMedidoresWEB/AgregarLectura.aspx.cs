using LecturasModel;
using LecturasModel.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaMedidoresWEB
{
    public partial class AgregarLectura : System.Web.UI.Page
    {

        private ILecturaDAL lecturaDAL = new LecturaDALDB();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ingresarBtn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Lectura lectura = new Lectura();
                lectura.IdMedidor = Convert.ToInt32(this.idMedidorTxt.Text.Trim());
                lectura.Fecha = DateTime.Now;
                lectura.ValorConsumo = Convert.ToInt32(this.valorConsumoTxt.Text.Trim());

                this.lecturaDAL.IngresarLectura(lectura);
            }
        }

    }
}
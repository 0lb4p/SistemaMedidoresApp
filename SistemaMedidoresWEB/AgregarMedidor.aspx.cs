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
    public partial class AgregarMedidor : System.Web.UI.Page
    {

        private IMedidorDAL medidorDAL = new MedidorDALDB();


        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ingresarBtn_Click(object sender, EventArgs e)
        {
            /*
            if (Page.IsValid)
            {
                Medidor medidor = new Medidor();
                medidor.IdMedidor = Convert.ToInt32(this.nroMedidor.Text.Trim());
               

                this.lecturaDAL.IngresarLectura(lectura);
            }*/
        }
    }
}
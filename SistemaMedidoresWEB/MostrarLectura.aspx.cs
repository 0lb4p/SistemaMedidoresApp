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
    public partial class MostrarLectura : System.Web.UI.Page
    {
        private ILecturaDAL lecturaDAL = new LecturaDALDB();


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.cargaGrilla();
            }
        }

        private void cargaGrilla()
        {
            List<Lectura> lecturas;
            lecturas = this.lecturaDAL.ObtenerLecturas();
            this.CargaGrilla(lecturas);
        }
        private void CargaGrilla(List<Lectura> lecturas)
        {
            this.grillaLectura.AutoGenerateColumns = false;
            this.grillaLectura.DataSource = lecturas;
            this.grillaLectura.DataBind();
        }
    }
}
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
    public partial class MostrarUsuario : System.Web.UI.Page
    {

        private IUsuarioDAL usuarioDAL = new UsuarioDALDB();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.cargaGrilla();
            }
        }

        private void cargaGrilla()
        {
            List<Usuario> usuarios;
            usuarios = this.usuarioDAL.ObtenerUsuarios();
            this.CargaGrilla(usuarios);
        }
        private void CargaGrilla(List<Usuario> usuarios)
        {
            this.grillaUsuarios.AutoGenerateColumns = false;
            this.grillaUsuarios.DataSource = usuarios;
            this.grillaUsuarios.DataBind();
        }

        protected void grillaAsistente_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "eliminar")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                this.usuarioDAL.EliminarUsuario(id);
                this.cargaGrilla();
            }
        }


    }
}
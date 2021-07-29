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
    public partial class WebForm1 : System.Web.UI.Page
    {
        private IUsuarioDAL usuarioDAL = new UsuarioDALDB();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ingresarBtn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Usuario usuario = new Usuario();
                usuario.Rut = this.rutTxt.Text.Trim();
                usuario.Nombre = this.nombreTxt.Text.Trim();
                usuario.Contrasena = this.passwordTxt.Text.Trim();
                usuario.CorreoElectronico = this.emailTxt.Text.Trim();

                this.usuarioDAL.IngresarUsuario(usuario);
            }
        }
    }
}
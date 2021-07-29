<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="AgregarUsuario.aspx.cs" Inherits="SistemaMedidoresWEB.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row mt-5">
        <div class="col-lg-6 mx-auto">
        <div class="card">

            <div class="card-header">
            <h3>Registro de Usuario</h3>
                </div>

            <div class="card-body">
            <div class="mb-1">
                <label class="form-label" for="rutTxt">Rut</label>
                <asp:TextBox CssClass="form-control" ID="rutTxt" runat="server"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="El campo rut es obligatorio" ControlToValidate="rutTxt" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="rutTxt" ErrorMessage="Rut no válido" ValidationExpression="^(\d{1,2}(?:\.\d{3}){2}-[\dkK])$" />
            </div>

            <div class="mb-1 col-auto">
                <label class="form-label" for="nombreTxt">Nombre</label>
                <asp:TextBox CssClass="form-control" ID="nombreTxt" runat="server" MaxLength="20"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="El campo nombre es obligatorio" ControlToValidate="nombreTxt" ForeColor="Red"></asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="nombreTxt" ErrorMessage="Mínimo 3 carácteres" ValidationExpression=".{2}." />
            </div>

            <div class="mb-1 col-auto">
                <label class="form-label" for="emailTxt">Correo Electronico</label>
                <asp:TextBox CssClass="form-control" ID="emailTxt" runat="server"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="El campo Email es obligatorio" ControlToValidate="emailTxt" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="emailTxt" ErrorMessage="Correo no válido" ValidationExpression="^[a-zA-Z0-9_\.-]+@([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,6}$" />
            </div>


            <div class="mb-1 col-auto">
                <label class="form-label" for="passwordTxt">Contraseña</label>
                <asp:TextBox CssClass="form-control" ID="passwordTxt" runat="server" TextMode="Password" MaxLength="50"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="El campo contraseña es obligatorio" ControlToValidate="passwordTxt" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="valPassword" runat="server" ControlToValidate="passwordTxt" ErrorMessage="Mínimo 8 carácteres" ValidationExpression=".{7}." />
            </div>

            <asp:Button CssClass="btn btn-primary" OnClick="ingresarBtn_Click" runat="server" ID="ingresarBtn" Text="Registrar"/>
                </div>
            </div>
      </div>
        </div>

</asp:Content>
<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="AgregarMedidor.aspx.cs" Inherits="SistemaMedidoresWEB.AgregarMedidor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row mt-5">
        <div class="col-lg-6 mx-auto">
            <div class="card">

                <div class="card-header">
                    <h3>Agregar Medidor</h3>
                </div>

                <div class="card-body">
                    <label class="form-label" for="nroMedidorTxt">Nro. de medidor</label>
                    <asp:TextBox CssClass="form-control" ID="nroMedidorTxt" TextMode="Number" runat="server"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="El campo nro. de medidor es obligatorio" ControlToValidate="nroMedidorTxt" ForeColor="Red"></asp:RequiredFieldValidator>

                    <asp:Button CssClass="btn btn-primary" OnClick="ingresarBtn_Click" runat="server" ID="ingresarBtn" Text="Registrar" />
                </div>
            </div>
        </div>
    </div>

</asp:Content>

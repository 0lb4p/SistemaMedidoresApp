<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="AgregarLectura.aspx.cs" Inherits="SistemaMedidoresWEB.AgregarLectura" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row mt-5">
        <div class="col-lg-6 mx-auto">
            <div class="card">

                <div class="card-header">
                    <h3>Nueva Lectura</h3>
                </div>

                            <div class="card-body">

                <div class="form-group">
                    <label class="form-label" for="idMedidorTxt">Nro. de medidor</label>
                    <asp:TextBox CssClass="form-control" ID="idMedidorTxt" TextMode="Number" runat="server"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="El campo nro. de medidor es obligatorio" ControlToValidate="idMedidorTxt" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group">
                    <label class="form-label" for="valorConsumoTxt">Valor de consumo</label>
                    <asp:TextBox CssClass="form-control" ID="valorConsumoTxt" TextMode="Number" runat="server"></asp:TextBox>

                    <asp:RegularExpressionValidator ID="validarConsumo" runat="server" ControlToValidate="valorConsumoTxt" ErrorMessage="Deben ser 4 carácteres" ValidationExpression=".{3}." />
                </div>

                <asp:Button CssClass="btn btn-primary" OnClick="ingresarBtn_Click" runat="server" ID="ingresarBtn" Text="Registrar" />
                                </div>
            </div>
        </div>
    </div>
</asp:Content>

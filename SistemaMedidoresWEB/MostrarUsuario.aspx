<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="MostrarUsuario.aspx.cs" Inherits="SistemaMedidoresWEB.MostrarUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="row mt-5">
        <div class="col-lg-6 mx-auto">

            <asp:GridView ID="grillaUsuarios"
                CssClass="table table-hover table-bordered"
                AutoGenerateColums="false"
                ShowHeaderWhenEmpty="true"
                EmptyDataText="No hay registros"
                runat="server">
                <Columns>
                    <asp:BoundField HeaderText="Rut" DataField="Rut" />
                    <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                    <asp:BoundField HeaderText="Correo Electronico" DataField="CorreoElectronico" />

                    <asp:TemplateField HeaderText="Acciones">
                        <ItemTemplate>
                            <asp:Button runat="server" CssClass="btn btn-danger"
                                CommandName="eliminar" Text="Eliminar"
                                CommandArgument='<%# Eval("IdUsuario")%>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>

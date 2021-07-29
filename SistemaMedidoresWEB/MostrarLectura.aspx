<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="MostrarLectura.aspx.cs" Inherits="SistemaMedidoresWEB.MostrarLectura" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row mt-5">
        <div class="col-lg-6 mx-auto">

            <asp:GridView ID="grillaLectura"
                CssClass="table table-hover table-bordered"
                AutoGenerateColums="false"
                ShowHeaderWhenEmpty="true"
                EmptyDataText="No hay registros"
                runat="server">
                <Columns>
                    <asp:BoundField HeaderText="Valor Consumo" DataField="ValorConsumo" />
                    <asp:BoundField HeaderText="Fecha" DataField="Fecha" />
                    <asp:BoundField HeaderText="Nro Medidor" DataField="CorreoElectronico" />

                    <asp:TemplateField HeaderText="Acciones">
                        <ItemTemplate>
                            <asp:Button runat="server" CssClass="btn btn-danger"
                                CommandName="eliminar" Text="Eliminar"
                                CommandArgument='<%# Eval("IdLectura")%>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>

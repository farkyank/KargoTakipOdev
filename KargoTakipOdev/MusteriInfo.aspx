<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MusteriInfo.aspx.cs" Inherits="KargoTakipOdev.MusteriInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 290px;
        }
        .auto-style3 {
            width: 286px;
        }
        .auto-style4 {
            width: 290px;
            height: 39px;
        }
        .auto-style5 {
            height: 39px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /> 
    <table class="auto-style1">
        <tr>
            <td colspan="2">
                <asp:Label ID="lblTitle0" runat="server" Text="Kargo Kayıt"></asp:Label>
            </td>
            <td class="auto-style3" rowspan="9">
                <asp:GridView ID="dgViewMusteriler" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="MusteriId" DataSourceID="SqlDataSource1" Height="200px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="533px">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="MusteriId" HeaderText="MusteriId" InsertVisible="False" ReadOnly="True" SortExpression="MusteriId" />
                        <asp:BoundField DataField="MusteriAd" HeaderText="MusteriAd" SortExpression="MusteriAd" />
                        <asp:BoundField DataField="MusteriSoyAd" HeaderText="MusteriSoyAd" SortExpression="MusteriSoyAd" />
                        <asp:BoundField DataField="MusteriAdres" HeaderText="MusteriAdres" SortExpression="MusteriAdres" />
                        <asp:BoundField DataField="MusteriTelefon" HeaderText="MusteriTelefon" SortExpression="MusteriTelefon" />
                        <asp:BoundField DataField="MusteriKargoNo" HeaderText="MusteriKargoNo" SortExpression="MusteriKargoNo" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbCon %>" SelectCommand="SELECT * FROM [Musteriler]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lnlAd" runat="server" Text="Ad"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAd" runat="server" Width="230px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lblSoyad" runat="server" Text="Soyad"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtSoyad" runat="server" Width="226px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lblAdres" runat="server" Text="Adres"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAdres" runat="server" OnTextChanged="TextBox4_TextChanged" Width="224px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="lblTelefon" runat="server" Text="Telefon"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtTelefon" runat="server" Width="223px"></asp:TextBox>
            </td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lblKargoNo" runat="server" Text="Kargo No"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtKargoNo" runat="server" Width="223px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="btnAdd" runat="server" OnClick="Button1_Click" Text="Add" />
                <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" />
                <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lblMusteriId" runat="server" Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click1" Text="Cancel" Width="207px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>

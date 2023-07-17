<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MusteriInfo.aspx.cs" Inherits="KargoTakipOdev.MusteriInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 252px;
        }

        .auto-style3 {
            width: 286px;
        }

        .auto-style4 {
            width: 252px;
            height: 39px;
        }

        .auto-style5 {
            height: 39px;
        }

        .auto-style6 {
            margin-left: 0px;
        }

        .lblSoyad {
           
            font-size: 30px;
            color: #0000FF;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />

    <table class="auto-style1">
        <tr>
            <td colspan="2">
                <asp:Label ID="lblTitle0" runat="server" Text="KARGO KAYIT" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style3" rowspan="9">
                <asp:GridView ID="dgViewMusteriler"  runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="MusteriId" DataSourceID="SqlDataSource1" Height="200px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="533px" CssClass="auto-style6">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" HeaderText="Seçin"/>
                        <asp:BoundField DataField="MusteriId" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="MusteriId" />
                        <asp:BoundField DataField="MusteriAd" HeaderText="AD" SortExpression="MusteriAd" />
                        <asp:BoundField DataField="MusteriSoyAd" HeaderText="SOYAD" SortExpression="MusteriSoyAd" />
                        <asp:BoundField DataField="MusteriAdres" HeaderText="ADRES" SortExpression="MusteriAdres" />
                        <asp:BoundField DataField="MusteriTelefon" HeaderText="TELEFON" SortExpression="MusteriTelefon" />
                        <asp:BoundField DataField="MusteriKargoNo" HeaderText="KARGO NO" SortExpression="MusteriKargoNo" />
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
                <asp:Label ID="lnlAd" runat="server" Text="Ad" Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAd" runat="server" Width="230px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lblSoyad" runat="server" Text="Soyad" Font-Bold="True" CssClas="lblSoyad"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtSoyad" runat="server" Width="226px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lblAdres" runat="server" Text="Adres" Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAdres" runat="server" OnTextChanged="TextBox4_TextChanged" Width="224px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="lblTelefon" runat="server" Text="Telefon" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtTelefon" runat="server" Width="223px"></asp:TextBox>
            </td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lblKargoNo" runat="server" Text="Kargo No" Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtKargoNo" runat="server" Width="223px"></asp:TextBox>
            </td>
            
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="EKLE" Width="62px" />
                <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="GÜNCELLE" />
                <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="SİL" Width="68px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lblMusteriId" runat="server" Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click1" Text="TEMİZLE" Width="235px" />
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

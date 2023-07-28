<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="KargoTakipOdev.Login" %>

<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <title>giris ekrani</title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 1px;
        }

        .auto-style2 {
            margin-left: 57px;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">

        <body>

            <div class="login" runat="server">
                <span class="login-title">kullanici adi
                </span>


                <asp:TextBox ID="txtUsername" runat="server" CssClass="auto-style1" placeholder="kullanici adi"></asp:TextBox>

                <asp:Panel ID="Panel1" runat="server">
                    <asp:Label ID="Label1" runat="server" Text="sifre"></asp:Label>
                    <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" CssClass="auto-style2" Width="120px" placeholder="sifre"></asp:TextBox>
                </asp:Panel>

                <p>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="giris yap" Width="129px" />
                </p>
            </div>
            <p>
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
            </p>

        </body>
</html>

</form>


</body>
</html>

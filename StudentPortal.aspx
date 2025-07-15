<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentPortal.aspx.cs" Inherits="_32667019_Ass2.StudentPortal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 1533px;
            background-color: #003369;
        }
        .auto-style1 {
            height: 205px;
        }
        .auto-style2 {
            height: 205px;
            width: 578px;
        }
        .auto-style3 {
            width: 578px;
        }
        .auto-style4 {
            height: 205px;
            width: 60px;
        }
        .auto-style5 {
            width: 60px;
        }
        .auto-style6 {
            width: 578px;
            height: 7px;
        }
        .auto-style7 {
            width: 60px;
            height: 7px;
        }
        .auto-style8 {
            height: 7px;
        }
        .auto-style9 {
            text-align: center;
        }
        .auto-style10 {
            height: 205px;
            width: 60px;
            font-size: x-large;
        }
    </style>
</head>
<body style="height: 1529px">
    <form id="form1" runat="server">
        <table style="width: 100%; height: 1526px;">
            <tr>
                <td class="auto-style2">
                    <asp:Image ID="Image1" runat="server" Height="178px" Width="223px" ImageUrl="~/educationLogo.png" />
                    <asp:Label ID="Label5" runat="server" CssClass="auto-style10" Text="Sebokeng Primary School"></asp:Label>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style1">&nbsp;
                    <asp:Label ID="LblDisplay" runat="server"></asp:Label>
                    <asp:Calendar ID="Calendar1" runat="server" SelectedDate="05/28/2023 01:59:16" Visible="False"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Panel ID="Panel1" runat="server" BackColor="White" BorderStyle="Solid" Height="411px">
                        <asp:Label ID="loginLbl" runat="server" Text="LOGIN!"></asp:Label>
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="usernameLbl" runat="server" Text="UserName" Font-Bold="True"></asp:Label>
                        <br />
                        <asp:TextBox ID="usernameTextBox" runat="server" BackColor="White" BorderColor="Black" Height="31px" TextMode="Number" Width="326px"></asp:TextBox>
                        <br />
                        <asp:Label ID="passwordLbl" runat="server" Text="Password"></asp:Label>
                        <br />
                        <asp:TextBox ID="passwordTxtBox" runat="server" BorderColor="Black" OnTextChanged="TextBox1_TextChanged" TextMode="Password" Width="327px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:LinkButton ID="forgotLBtn" runat="server" OnClick="forgotLBtn_Click">Forgot Password!</asp:LinkButton>
                        <br />
                        <br />
                        <br />
                        <asp:Button ID="loginBtn" runat="server" Height="100px" OnClick="loginBtn_Click1" Text="Login" Width="308px" />
                        <br />
                        <asp:Label ID="errorLbl" runat="server"></asp:Label>
                    </asp:Panel>
                    <br />
                    <br />
                    <br />
                </td>
                <td class="auto-style7"></td>
                <td class="auto-style8">
                    <asp:Panel ID="Panel2" runat="server" BackColor="White" BorderStyle="Solid" Height="242px">
                        <div class="auto-style9">
                            <asp:Label ID="registerLbl" runat="server" Font-Bold="True" Text="New Student Press The Button Below to Register"></asp:Label>
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <asp:Button ID="registerBtn" runat="server" Height="80px" OnClick="registerBtn_Click" Text="Register" Width="273px" />
                            <br />
                            <br />
                        </div>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgotPassFrm.aspx.cs" Inherits="_32667019_Ass2.forgotPassFrm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 814px;
            background-color: #003366;
        }
        .auto-style2 {
            font-size: xx-large;
            color: #FFFFFF;
        }
        .auto-style3 {
            font-size: medium;
        }
        .auto-style4 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="Forgot The Password"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" CssClass="auto-style4" Text="Sebokeng Primary School"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Text="Student Number:"></asp:Label>
            <asp:TextBox ID="stNumberTxtBox" runat="server" Height="16px" Width="252px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="New Password:"></asp:Label>
            <asp:TextBox ID="newPasswordTextBox" runat="server" Height="16px" Width="257px" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="newPasswordTextBox" ErrorMessage="Enter new Password"></asp:RequiredFieldValidator>
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Confirm Password:"></asp:Label>
            <asp:TextBox ID="confirmPasswordTextBox" runat="server" Height="16px" Width="249px" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="confirmPasswordTextBox" ErrorMessage="Must Macth with the abpve password"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button ID="changePassBtn" runat="server" Height="27px" OnClick="changePassBtn_Click" Text="Change Password" Width="212px" />
            <br />
            <br />
            <asp:Label ID="errorLbl" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registrationStudent.aspx.cs" Inherits="_32667019_Ass2.registrationStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 1475px;
        }
        .auto-style2 {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Image ID="Image1" runat="server" Height="202px" Width="259px" ImageUrl="~/educationLogo.png" />
            <br />
            <br />
            <asp:Label ID="messageLbl" runat="server" CssClass="auto-style2" Font-Bold="True" Font-Underline="True" Text="Welcome New Student We Are Pleased To Register You In Our School Enter Your Details Below"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Enter Username:"></asp:Label>
            <asp:TextBox ID="usernameTxtBox" runat="server" Height="20px" Width="440px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="studentNumRequiredFieldValidator3" runat="server" ControlToValidate="surnameTextBox" ErrorMessage="Enter only 8 numbers"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Enter First Name:"></asp:Label>
            <asp:TextBox ID="nameTextBox" runat="server" Height="24px" Width="437px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="surnameLbl" runat="server" Text="Enter Surname:"></asp:Label>
            <asp:TextBox ID="surnameTextBox" runat="server" Height="20px" Width="440px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Label ID="passwordLbl" runat="server" Text="Enter Password:"></asp:Label>
            <asp:TextBox ID="passwordTextBox" runat="server" Height="20px" TextMode="Password" Width="440px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="paswordRequiredFieldValidator1" runat="server" ControlToValidate="passwordTextBox" ErrorMessage="Enter A valid Password with one Lower case and one character"></asp:RequiredFieldValidator>
            <br />
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Comfirm Password:"></asp:Label>
            <asp:TextBox ID="comfirmPasswordTextBox" runat="server" Height="20px" TextMode="Password" Width="440px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="confirmRequiredFieldValidator" runat="server" ControlToValidate="comfirmPasswordTextBox" ErrorMessage="password match with above one"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:RadioButton ID="maleRd" runat="server" AutoPostBack="True" OnCheckedChanged="maleRd_CheckedChanged" Text="Male" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="femaleRd" runat="server" AutoPostBack="True" OnCheckedChanged="femaleRd_CheckedChanged" Text="Female" />
            <br />
            <br />
            <asp:Button ID="RegisterBtn" runat="server" Height="39px" OnClick="RegisterBtn_Click" Text="Register" Width="222px" />
            <br />
            <asp:Label ID="errorLbl" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>

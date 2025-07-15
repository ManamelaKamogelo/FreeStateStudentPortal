<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentLogIn.aspx.cs" Inherits="_32667019_Ass2.studentLogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 1537px;
            background-color: #003366;
        }
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style4 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Image ID="Image1" runat="server" Height="179px" Width="244px" ImageUrl="~/educationLogo.png" />
            <asp:Label ID="Label5" runat="server" CssClass="auto-style4" Text="Sebokeng Primary School"></asp:Label>
            <br />
            <br />
            <strong>
            <asp:Label ID="welcomeMessageLbl" runat="server" CssClass="auto-style2"></asp:Label>
            <br />
            <br />
            <asp:Menu ID="Menu1" runat="server" OnMenuItemClick="Menu1_MenuItemClick1">
                <Items>
                    <asp:MenuItem Text="Application Status" Value="Application Status">
                        <asp:MenuItem Text="New Item" Value="New Item"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="Time Table" Value="New Item"></asp:MenuItem>
                    <asp:MenuItem Text="Exam TimeTable" Value="New Item"></asp:MenuItem>
                    <asp:MenuItem Text="View Results" Value="View Results"></asp:MenuItem>
                </Items>
            </asp:Menu>
            </strong>
        </div>
    </form>
</body>
</html>

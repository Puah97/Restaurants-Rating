<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Finiteloop.Account.Login" Title="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
 <link href="css/bootstrap.css" rel ="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=pacifico" rel="stylesheet" type="text/css" />

    <title></title>
    <style type="text/css">
        .style1
        {
            width: 69%;
        }
        .style3
        {
            width: 257px;
        }
        #Reset1
        {
            width: 62px;
        }
        .style4
        {
        }
        .style5
        {
            height: 216px;
        }
        .style9
        {
            width: 488px;
            height: 159px;
        }
        .style13
        {
            width: 175px;
            height: 28px;
        }
        .style14
        {
            width: 257px;
            height: 28px;
        }
        .style15
        {
            width: 125px;
            height: 28px;
        }
        .style16
        {
            width: 75px;
        }
        .style17
        {
            
            width: 345px;
        }
        </style>
</head>
<body bgcolor="#D2691E">
    <form id="form1" runat="server">
    <div align="center">
    <table class="style1" style="background-color: #FFFFFF; width: 500px;">
        <tr>
            <td align="left" class="style5" 
                
                style="margin: 0px; padding: 0px; background-position: -35px -20px; background-color: #ff9900; background-image: url('../Images/Login top.JPG');" 
                colspan="3" valign="bottom">
                &nbsp;&nbsp;
                <table style="width:100%;">
                    <tr>
                        <td class="style16">
                            <asp:Menu ID="NavigationMenu0" runat="server" BackColor="#FFFBD6" 
                                CssClass="menu" DynamicHorizontalOffset="2" EnableViewState="False" 
                                Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" 
                                Orientation="Horizontal" StaticSubMenuIndent="10px">
                                <DynamicHoverStyle BackColor="#D25400" ForeColor="White" />
                                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                <DynamicSelectedStyle BackColor="#FFCC66" />
                                <Items>
                                    <asp:MenuItem NavigateUrl="~/Account/Registration.aspx" Text="SignUp" />
                                </Items>
                                <StaticHoverStyle BackColor="#D25400" ForeColor="White" />
                                <StaticMenuItemStyle BackColor="#482400" Font-Bold="True" Font-Size="Medium" 
                                    ForeColor="White" HorizontalPadding="5px" VerticalPadding="2px" />
                                <StaticMenuStyle BackColor="#401A00" />
                                <StaticSelectedStyle BackColor="#FFCC66" />
                            </asp:Menu>
                        </td>
                        <td class="style17">
                            </td>
                        <td>
                            <asp:Menu ID="NavigationMenu" runat="server" BackColor="#FFFBD6" 
                                CssClass="menu" DynamicHorizontalOffset="2" EnableViewState="False" 
                                Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" 
                                Orientation="Horizontal" StaticSubMenuIndent="10px">
                                <DynamicHoverStyle BackColor="#D25400" ForeColor="White" />
                                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                <DynamicSelectedStyle BackColor="#FFCC66" />
                                <Items>
                                    <asp:MenuItem NavigateUrl="~/Default.aspx" Text="Home" />
                                </Items>
                                <StaticHoverStyle BackColor="#D25400" ForeColor="White" />
                                <StaticMenuItemStyle BackColor="#482400" Font-Bold="True" Font-Size="Medium" 
                                    ForeColor="White" HorizontalPadding="5px" VerticalPadding="2px" />
                                <StaticMenuStyle BackColor="#401A00" />
                                <StaticSelectedStyle BackColor="#FFCC66" />
                            </asp:Menu>
                        </td>
                    </tr>
                </table>
                </td>
        </tr>
        <tr>
            <td align="right" class="style4" colspan="2">
                <div align="left" style="width: 279px; font-size: small;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    *Enter your Login details:<br />
                </div>
            </td>
            <td style="color: #FF0000; font-size: x-small; width: 125px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13" 
                style="font-family: Georgia; color: #808080; ">
                E-mail:</td>
            <td class="style14">
                <asp:TextBox ID="Tbemail" runat="server" CssClass="form-control form-control-warning" Width="180px"></asp:TextBox>
            </td>
            <td style="color: #FF0000; font-size: x-small; " class="style15">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="Tbemail" ErrorMessage="E-mail is required."></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style13" 
                style="font-family: Georgia; color: #808080; ">
                Password:</td>
            <td class="style14">
                <asp:TextBox ID="Tbpass" runat="server" CssClass="form-control" TextMode="Password" Width="180px"></asp:TextBox>
            </td>
            <td style="color: #FF0000; font-size: x-small; " class="style15">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="Tbpass" ErrorMessage="Password is required."></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4" align="right" style="width: 175px">
                <asp:Button ID="ButLogin" runat="server" CssClass="btn btn-warning" onclick="Button1_Click" Text="Login" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="style3" align="left">
                &nbsp;&nbsp;&nbsp;
                </td>
            <td style="color: #FF0000; font-size: x-small; width: 125px;">
                <input id="Reset1" Class="btn btn-warning" type="reset" value="Reset" /></td>
        </tr>
        <tr>
            <td class="style4" style="width: 175px">
                &nbsp;</td>
            <td class="style3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink2" CssClass="badge badge-info" runat="server" 
                    NavigateUrl="~/guest.aspx">Login as guest</asp:HyperLink>
            </td>
            <td style="color: #FF0000; font-size: x-small; width: 125px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" style="width: 175px">
                &nbsp;</td>
            <td class="style3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" CssClass="badge badge-info" runat="server" 
                    NavigateUrl="~/Customer/PassworRecover.aspx">Forgot password</asp:HyperLink>
            </td>
            <td style="color: #FF0000; font-size: x-small; width: 125px;">
                <br />
            </td>
        </tr>
        <tr>
            <td class="style4" align="center" bgcolor="#FCE18F" colspan="3">
                <img alt="CityScape" class="style9" src="../Images/cityscape.jpeg" /><br />
                <small class="main-footer_copyright">Copyright © 2017 Finiteloop Inc. Finitloop 
                and related marks are registered trademarks of Finiteloop.</small></td>
        </tr>
    </table>
    </div>
    </form>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">  </script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Finiteloop.Account.Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
            width: 180px;
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
        .style6
        {
            width: 175px;
            height: 6px;
            text-align: right;
        }
        .style7
        {
            width: 200px;
            height: 6px;
            text-align: left;
        }
        .style8
        {
            width: 125px;
            height: 6px;
            text-align: left;
        }
        .style9
        {
            width: 488px;
            height: 159px;
        }
        .style10
        {
            width: 363px;
        }
    </style>
</head>
<body bgcolor="#D2691E"">
    <form id="form1" runat="server">
    <div align="center">
    <table class="style1" style="background-color: #FFFFFF; width: 500px;">
        <tr>
            <td align="right" class="style5" 
                
                style="background-position: -35px -20px; background-color: #ff9900; background-image: url('../Images/Login top.JPG');" 
                colspan="3" valign="bottom">
                <table style="width:100%;">
                    <tr>
                        <td class="style16">
                            <asp:Menu ID="NavigationMenu0" runat="server" BackColor="#FFFBD6" 
                                CssClass="menu" DynamicHorizontalOffset="2" EnableViewState="False" 
                                Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" 
                                Orientation="Horizontal" StaticSubMenuIndent="10px" 
                                onmenuitemclick="NavigationMenu0_MenuItemClick">
                                <DynamicHoverStyle BackColor="#D25400" ForeColor="White" />
                                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                <DynamicSelectedStyle BackColor="#FFCC66" />
                                <Items>
                                    <asp:MenuItem NavigateUrl="~/Account/Login.aspx" Text="Login" />
                                </Items>
                                <StaticHoverStyle BackColor="#D25400" ForeColor="White" />
                                <StaticMenuItemStyle BackColor="#482400" Font-Bold="True" Font-Size="Medium" 
                                    ForeColor="White" HorizontalPadding="5px" VerticalPadding="2px" />
                                <StaticMenuStyle BackColor="#401A00" />
                                <StaticSelectedStyle BackColor="#FFCC66" />
                            </asp:Menu>
                        </td>
                        <td class="style10">
                            &nbsp;</td>
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
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    *Enter your valid details.<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    *Password Rules:<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4-8 Characters, lowercase,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;uppercase and numbers.</div>
            </td>
            <td style="color: #FF0000; font-size: x-small; width: 125px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style4" 
                style="font-family: Georgia; color: #808080; width: 175px;">
                Full Name:</td>
            <td class="style3" style="width: 200px">
                <asp:TextBox ID="Tbfname" runat="server" CssClass="form-control form-control-warning" Width="180px"></asp:TextBox>
            </td>
            <td style="color: #FF0000; font-size: x-small; width: 125px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="Tbfname" ErrorMessage="Name is required."></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style4" 
                style="font-family: Georgia; color: #808080; width: 175px;">
                E-mail:</td>
            <td class="style3" style="width: 200px">
                <asp:TextBox ID="Tbemail" runat="server" CssClass="form-control form-control-warning" Width="180px"></asp:TextBox>
            </td>
            <td style="color: #FF0000; font-size: x-small; width: 125px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="Tbemail" ErrorMessage="E-mail is required."></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="Tbemail" ErrorMessage="Valid email required." 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style4" 
                style="font-family: Georgia; color: #808080; width: 175px;">
                Cell Number:</td>
            <td class="style3" style="width: 200px">
                <asp:TextBox ID="Tbcell" runat="server" CssClass="form-control form-control-warning" Width="180px"></asp:TextBox>
            </td>
            <td style="color: #FF0000; font-size: x-small; width: 125px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="Tbcell" ErrorMessage="Cell Number is required."></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="Tbcell" ErrorMessage="Valid Cell number requird." 
                    ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style4" 
                style="font-family: Georgia; color: #808080; width: 175px;">
                Password:</td>
            <td class="style3" style="width: 200px">
                <asp:TextBox ID="Tbpass" runat="server" CssClass="form-control form-control-warning" TextMode="Password" Width="180px"></asp:TextBox>
            </td>
            <td style="color: #FF0000; font-size: x-small; width: 125px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="Tbpass" ErrorMessage="Password is required."></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="Tbpass" ErrorMessage="Check Password  rules above." 
                    ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,8}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style4" 
                style="font-family: Georgia; color: #808080; width: 175px;">
                Confirm Password:</td>
            <td class="style3" style="width: 200px">
                <asp:TextBox ID="Tbconpass" runat="server" CssClass="form-control form-control-warning" TextMode="Password" Width="180px"></asp:TextBox>
            </td>
            <td style="color: #FF0000; font-size: x-small; width: 125px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="Tbconpass" ErrorMessage="Please Confirm Password."></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="Tbpass" ControlToValidate="Tbconpass" 
                    ErrorMessage="Passwords doesn't match."></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;<asp:Button ID="Button1" runat="server" CssClass="btn btn-warning" onclick="Button1_Click" Text="Submit" />
                &nbsp;&nbsp;&nbsp;
                </td>
            <td class="style7">
                &nbsp;</td>
            <td style="color: #FF0000; font-size: x-small;" class="style8">
                <input id="Reset1" type="reset" Class="btn btn-warning" value="Reset" /></td>
        </tr>
        <tr>
            <td class="style4" align="right" style="width: 175px">
                &nbsp;</td>
            <td class="style3" align="left" style="width: 200px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                </td>
            <td style="color: #FF0000; font-size: x-small; width: 125px;">
                &nbsp;</td>
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
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>

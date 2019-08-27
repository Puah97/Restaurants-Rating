<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PassworRecover.aspx.cs" Inherits="Finiteloop.Account.Login" Title="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link href="https://fonts.googleapis.com/css?family=pacifico" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 69%;
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
        .style16
        {
            width: 75px;
        }
        .style17
        {
            width: 345px;
        }
        .style18
        {
            width: 100%;
        }
        .style19
        {
            text-align: center;
        }
        .style20
        {
            text-align: left;
        }
        .style21
        {
            text-align: left;
            height: 30px;
        }
        .style22
        {
            text-align: center;
            width: 156px;
        }
        .style23
        {
            text-align: center;
            height: 30px;
            width: 156px;
        }
        .style24
        {
            text-align: left;
            width: 156px;
        }
    </style>
</head>
<body bgcolor="#ff9900">
    <form id="form1" runat="server">
    <div align="center">
    <table class="style1" style="background-color: #FFFFFF; width: 500px;">
        <tr>
            <td align="left" class="style5" 
                
                
                style="margin: 0px; padding: 0px; background-position: -35px -20px; background-color: #ff9900; background-image: url('../Images/Login top.JPG');" 
                valign="bottom">
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
            <td align="right" class="style4">
                <table class="style18">
                    <tr>
                        <td class="style22">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style19" colspan="2">
                <asp:Label ID="lblEmail" runat="server" Text="Provide Your Email" style="text-align: left"></asp:Label>
                        &nbsp;And Click Continue</td>
                    </tr>
                    <tr>
                        <td class="style23">
                            <asp:Label ID="l" runat="server" Text="Email" style="text-align: right"></asp:Label>
                        </td>
                        <td class="style21">
                            
                            <asp:TextBox ID="TextBox1" CssClass="form-control form-control-warning" 
                                runat="server" Width="180px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style24">
                <asp:Label ID="lblsecques" runat="server" Text="Security Question" Visible="False"></asp:Label>
                        </td>
                        <td class="style20">
                            
                            <asp:TextBox ID="TextBox2" CssClass="form-control form-control-warning" 
                                runat="server" Visible="False" Width="180px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style19" colspan="2">
                <asp:Button ID="btncontinue" CssClass="btn btn-warning" runat="server" Text="Continue" 
                    onclick="btbContinue_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="style19">
                <asp:Label ID="lblpwd" Cssclass="badge badge-success" runat="server" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="style19">
                <asp:Button ID="RECOVER" CssClass="btn btn-warning" runat="server" Text="RECOVER" 
                    onclick="RECOVER_Click" Visible="False" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="style19">
                            <asp:Button ID="btndone" runat="server" CssClass="btn btn-warning" onclick="btndone_Click" Text="Done" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style4" align="center" bgcolor="#FCE18F">
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

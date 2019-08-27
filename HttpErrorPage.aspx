<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HttpErrorPage.aspx.cs" Inherits="HttpErrorPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
            width: 526px;
            height: 292px;
        }
    </style>
</head>
<body bgcolor="#ff9900">
    <form id="form1" runat="server">
    <div align="center">
    <table class="style1" style="background-color: #FFFFFF; width: 500px;">
        <tr>
            <td align="left" class="style5" 
                
                
                style="margin: 0px; padding: 0px; background-position: -35px -20px; background-color: #ff9900; background-image: url('Images/Login%20top.JPG');" 
                valign="bottom">
                &nbsp;&nbsp;
                <table style="width:100%;">
                    <tr>
                        <td class="style16">
                            &nbsp;</td>
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
                <img alt="404" class="style18" src="Images/404.jpg" /></td>
        </tr>
        <tr>
            <td class="style4" align="center" bgcolor="#FCE18F">
                <img alt="CityScape" class="style9" src="Images/cityscape.jpeg" /><br />
                <small class="main-footer_copyright">Copyright © 2017 Finiteloop Inc. Finitloop 
                and related marks are registered trademarks of Finiteloop.</small></td>
        </tr>
    </table>
    </div>
    </form>
    
</body>
</html>
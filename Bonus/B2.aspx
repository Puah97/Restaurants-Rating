<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="B2.aspx.cs" Inherits="Bonus_B2" %>

<%@ Register assembly="FlashControl" namespace="Bewise.Web.UI.WebControls" tagprefix="Bewise" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <Bewise:FlashControl ID="FlashControl1" runat="server" Height="650px" 
    MovieUrl="~/Bonus/SSC.swf" Width="1000px" />
    <table style="width:100%;">
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" PostBackUrl="~/Bonus/Bprogram.aspx" 
                    Text="Mcdonalds" Width="126px" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" PostBackUrl="~/Bonus/B2.aspx" 
                    Text="Soccer" Width="126px" />
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" PostBackUrl="~/Bonus/B3.aspx" 
                    Text="Happy Wheels" Width="126px" />
            </td>
            <td>
                <asp:Button ID="Button4" runat="server" PostBackUrl="~/Bonus/B4.aspx" 
                    Text="Hardest Game" Width="126px" />
            </td>
        </tr>
    </table>
</asp:Content>


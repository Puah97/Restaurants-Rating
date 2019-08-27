<%@ Page Title="" Language="C#" MasterPageFile="~/SiteCp.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div>
    <table class="nav-justified">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Panel ID="Panel6" runat="server" BorderColor="#FF6600" BorderStyle="Outset" BorderWidth="20px" Height="200px" Width="200px">
                    <asp:Image ID="Image2" runat="server" Height="200px" Width="200px" />
                </asp:Panel>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lblupload" runat="server"></asp:Label>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>New Details</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-right">&nbsp;</td>
            <td class="text-center">
                <asp:Label ID="lblName2" runat="server" Text="Clasification"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server" 
                    onselectedindexchanged="DropDownList2_SelectedIndexChanged" Width="122px">
                    <asp:ListItem>Single</asp:ListItem>
                    <asp:ListItem>Young Couple</asp:ListItem>
                    <asp:ListItem>Maried Couple</asp:ListItem>
                    <asp:ListItem>Family</asp:ListItem>
                    <asp:ListItem>Friends</asp:ListItem>
                    <asp:ListItem>Collection</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-right">&nbsp;</td>
            <td class="text-center">
                <asp:Label ID="lblName1" runat="server" Text="Gender"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList3" CssClass="form-control" runat="server" 
                    Width="122px">
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px" class="text-right"></td>
            <td style="height: 20px" class="text-center">
                <asp:Label ID="Label2" runat="server" Text="Adress"></asp:Label>
            </td>
            <td style="height: 20px">
                <asp:TextBox ID="txtaddr" runat="server"></asp:TextBox>
            </td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td class="text-right">&nbsp;</td>
            <td class="text-center">
                <asp:Label ID="lblsequrityq" runat="server" Text="Security Question"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" 
                    Width="122px">
                    <asp:ListItem>First pet name</asp:ListItem>
                    <asp:ListItem>Most rude teacher</asp:ListItem>
                    <asp:ListItem>Favourite color</asp:ListItem>
                    <asp:ListItem>Favourite fruit</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-right" style="height: 27px"></td>
            <td class="text-center" style="height: 27px">
                <asp:Label ID="lblanswer" runat="server" Text="Answer"></asp:Label>
            </td>
            <td style="height: 27px">
                <asp:TextBox ID="txtans" CssClass="form-control" runat="server" Width="122px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" class="badge badge-danger" runat="server" ControlToValidate="txtans" ErrorMessage="Field can not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 27px"></td>
            <td style="height: 27px"></td>
            <td style="height: 27px"></td>
        </tr>
        <tr>
            <td class="text-right">&nbsp;</td>
            <td class="text-center">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnDone" CssClass="btn btn-warning" runat="server" onclick="btnDone_Click" Text="Done" 
                    Width="122px" />
                </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-right">&nbsp;</td>
            <td class="text-center">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table><br /><br />
        </div><br /><br />
</asp:Content>


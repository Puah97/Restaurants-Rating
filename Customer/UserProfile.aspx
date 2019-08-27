<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="Customer_UserProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="col-lg-7 col-lg-offset-2">
    <table style="width: 100%">
        <tr >
         <td align="center" colspan="3" 
                style="font-size: x-large;">
       <h1 class="text-right">USER PROFILE</h1>
            </td>
            
        </tr>
        <tr>
            <td style="width: 241px">
                &nbsp;</td>
            <td colspan="3">
                <asp:Panel ID="Panel6" runat="server" BorderColor="#FF6600" 
                    BorderStyle="Outset" BorderWidth="20px" Height="200px" Width="200px">
                    <asp:Image ID="Image2" runat="server" Height="200px" 
    Width="200px" />
                </asp:Panel>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 241px; height: 26px;">
                </td>
            <td colspan="3" style="height: 26px">
                <asp:Label ID="lblupload" Cssclass="badge badge-success" runat="server"></asp:Label>
                <asp:FileUpload ID="FileUpload1"  runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="badge badge-danger" runat="server" 
                    ErrorMessage="Field cannot be empty" ControlToValidate="FileUpload1" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 26px">
                </td>
        </tr>
        <tr>
            <td style="height: 23px; width: 241px">
            </td>
            <td style="width: 252px; height: 23px; font-size: large;">
                <h1>
                    Current Details</h1>
            </td>
            <td style="height: 23px; font-size: large">
                &nbsp;</td>
            <td style="height: 23px; font-size: large; width: 303px;">
                <h1 style="font-family: 'Jing Jing'">
                    &nbsp;</h1>
            </td>
            <td style="height: 23px">
            </td>
        </tr>
        <tr>
            <td style="height: 23px; width: 241px" class="text-right">
                <asp:Label ID="lblName0" runat="server" Text="Name"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td style="height: 23px; width: 252px">
                <asp:TextBox ID="txtname" CssClass="form-control form-control-warning" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="badge badge-danger" runat="server" 
                    ErrorMessage="Field cannot be empty" ControlToValidate="txtname" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 23px; text-align: right;">
                &nbsp;</td>
            <td style="height: 23px; width: 303px; text-align: justify;">
                &nbsp;</td>
            <td style="height: 23px">
            </td>
        </tr>
        <tr>
            <td style="width: 241px" class="text-right">
                <asp:Label ID="lblcell0" runat="server" Text="Cell"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td style="width: 252px">
                <asp:TextBox ID="txtcell" CssClass="form-control form-control-warning" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" CssClass="badge badge-danger" runat="server" 
                    ControlToValidate="txtcell" ErrorMessage="Only vodacom numbers are llowed" 
                    ForeColor="Red" 
                    ValidationExpression="(^0[87][23467]((\d{7})|( |-)((\d{3}))( |-)(\d{4})|( |-)(\d{7})))"></asp:RegularExpressionValidator>
            </td>
            <td style="text-align: right">
                &nbsp;</td>
            <td style="width: 303px; text-align: justify;">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 241px; height: 30px;" class="text-right">
                <asp:Label ID="lblgender0" runat="server" Text="Gender"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td style="width: 252px; height: 30px;">
                <asp:TextBox ID="txtgender" CssClass="form-control form-control-warning" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="badge badge-danger" runat="server" 
                    ErrorMessage="Field cannot be empty" ControlToValidate="txtgender" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 30px; text-align: right">
                &nbsp;</td>
            <td style="width: 303px; height: 30px; text-align: justify;">
                &nbsp;</td>
            <td style="height: 30px">
                </td>
        </tr>
        <tr>
            <td style="width: 241px; height: 26px;">
                </td>
            <td style="width: 252px; height: 26px;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnupdate" runat="server" CssClass="btn btn-warning" onclick="btnupdate_Click" 
                    Text="Update Profile" Width="122px" />
                <asp:Label ID="lblProfile" Cssclass="badge badge-success" runat="server" style="text-align: left" 
                    Visible="False" ForeColor="#66FF66"></asp:Label>
            </td>
            <td style="text-align: right; height: 26px;">
                &nbsp;</td>
            <td style="width: 303px; text-align: justify; height: 26px;">
                &nbsp;</td>
            <td style="height: 26px">
                </td>
        </tr>
        <tr>
            <td style="width: 241px">
                &nbsp;</td>
            <td style="width: 252px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnDone" CssClass="btn btn-warning" runat="server" onclick="btnDone_Click" Text="Done" 
                    Width="122px" />
            </td>
            <td>
                &nbsp;</td>
            <td style="width: 303px; text-align: left;">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 241px">
                &nbsp;</td>
            <td style="width: 252px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="width: 303px; text-align: left;">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 241px">
                &nbsp;</td>
            <td style="width: 252px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="width: 303px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 241px">
                &nbsp;</td>
            <td style="width: 252px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="width: 303px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 241px; height: 30px;">
                </td>
            <td style="width: 252px; height: 30px;">
                </td>
            <td style="height: 30px">
                &nbsp;</td>
            <td style="width: 303px; height: 30px">
                &nbsp;</td>
            <td style="height: 30px">
                </td>
        </tr>
    </table>
    </div>
</asp:Content>


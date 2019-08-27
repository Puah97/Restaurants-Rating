<%@ Page Title="Add Restaurant" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="AddRest.aspx.cs" Inherits="Finiteloop.AddRest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
    <table style="width: 100%">
        <tr>
            <td style="width: 548px">
                &nbsp;</td>
            <td class="modal-sm" colspan="2">
            <h1 class="text-left">ADD RESTUARANT</h1>
                <p class="text-left">&nbsp;</p>
                <p class="text-left">&nbsp;</p>
            </td>
        </tr>
        <tr>
            <td style="width: 548px">
                &nbsp;</td>
            <td style="width: 207px">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="dtsrcfeeDesc">
                    <Columns>
                        <asp:BoundField DataField="Fee_Description" HeaderText="Fee_Description" 
                            SortExpression="Fee_Description" />
                        <asp:BoundField DataField="Fee_Amount" HeaderText="Fee_Amount" 
                            SortExpression="Fee_Amount" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="dtsrcfeeDesc" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:RegConnectionString.ProviderName %>" 
                    SelectCommand="SELECT Fee_Description, Fee_Amount FROM `restaurant review`.tblfee">
                </asp:SqlDataSource>
            </td>
            <td style="width: 1064px">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    DataSourceID="dtsrcfee" DataTextField="Fee_Description" 
                    DataValueField="Fee_Num">
                </asp:RadioButtonList>
                <asp:SqlDataSource ID="dtsrcfee" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:RegConnectionString.ProviderName %>" 
                    SelectCommand="SELECT Fee_Num, Fee_Description FROM `restaurant review`.tblfee">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="height: 26px; width: 548px">
                &nbsp;</td>
            <td style="height: 26px; width: 207px" class="text-center">
                <asp:Label ID="Label2" runat="server" Text="Restuarent Name"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            </td>
            <td style="height: 26px; width: 1064px" class="text-left">
                <asp:TextBox ID="txtname" CssClass="form-control form-control-warning" 
                    runat="server" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" class="badge badge-danger" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="Restaurant name is required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 548px">
                &nbsp;</td>
            <td style="width: 207px" class="text-center">
                <asp:Label ID="lbltel0" runat="server" Text="Tell"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            </td>
            <td style="width: 1064px" class="text-left">
                <asp:TextBox ID="txttell" CssClass="form-control form-control-warning" 
                    runat="server" Width="150px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" class="badge badge-danger" runat="server" 
                    ControlToValidate="txttell" 
                    ErrorMessage="Enter valid witbank telephone number  (013)" ForeColor="Red" 
                    
                    ValidationExpression="(^0[13][1234567]((\d{7})|( |-)((\d{3}))( |-)(\d{4})|( |-)(\d{7})))"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 548px">
                &nbsp;</td>
            <td style="width: 207px" class="text-center">
                Location&nbsp;&nbsp;&nbsp; </td>
            <td style="width: 1064px" class="text-left">
                <asp:DropDownList ID="DropDownList1" 
                    CssClass="form-control form-control-warning" runat="server" Width="122px">
                    <asp:ListItem>Del-Judor</asp:ListItem>
                    <asp:ListItem>Klipfontein</asp:ListItem>
                    <asp:ListItem>Reyno Ridge</asp:ListItem>
                    <asp:ListItem Value="Ben Fleur">Ben Bleu</asp:ListItem>
                    <asp:ListItem>Saveways</asp:ListItem>
                    <asp:ListItem>Highveld Mall</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 548px">
                &nbsp;</td>
            <td style="width: 207px" class="text-center">
                <asp:Label ID="lbllog0" runat="server" Text="Logo"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            </td>
            <td style="width: 1064px" class="text-left">
                <asp:FileUpload ID="FileUpload3" runat="server" />
                <asp:Label ID="lbllogo" Cssclass="badge badge-success" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
        </tr>
        <tr>
            <td style="height: 26px; width: 548px">
                &nbsp;</td>
            <td style="height: 26px; width: 207px" class="text-center">
                Map&nbsp;&nbsp;&nbsp; </td>
            <td style="height: 26px; width: 1064px" class="text-left">
                <asp:FileUpload ID="FileUpload4" runat="server" />
                <asp:Label ID="lblupl2" runat="server" Cssclass="badge badge-success" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 548px">
                &nbsp;</td>
            <td style="width: 207px" class="text-center">
                <asp:Label ID="lblwb0" runat="server" Text="Website"></asp:Label>
            &nbsp;Url&nbsp;&nbsp;&nbsp; </td>
            <td style="width: 1064px" class="text-left">
                <asp:TextBox ID="txtwb" CssClass="form-control form-control-warning" 
                    runat="server" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" class="badge badge-danger" runat="server" 
                    ControlToValidate="txtwb" ErrorMessage="Website url is required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 26px; width: 548px">
                &nbsp;</td>
            <td style="height: 26px; width: 207px" class="text-center">
                <asp:Label ID="lbladdr0" runat="server" Text="Address"></asp:Label>
                / Shop number&nbsp;&nbsp;&nbsp; </td>
            <td style="height: 26px; width: 1064px" class="text-left">
                <asp:TextBox ID="txtaddr" CssClass="form-control form-control-warning" 
                    runat="server" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" class="badge badge-danger" runat="server" 
                    ControlToValidate="txtaddr" 
                    ErrorMessage="Shop number or address is required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 548px">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnaddrest" CssClass="btn btn-warning" runat="server" onclick="btnaddrest_Click" 
                    Text="ADD RESTUARENT" />
                <asp:Label ID="lbladdedRes" Cssclass="badge badge-success" runat="server" Text="Label" ForeColor="#66FF66" 
                    Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
    <br /><br /><br /><br />
    </div>
</asp:Content>

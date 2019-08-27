<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Billy.aspx.cs" Inherits="Finiteloop.Rest_Info.Billy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDSr01" 
        BackColor="#FF9900" Height="302px" Width="993px">
        <EditItemTemplate>
            Res_Name:
            <asp:TextBox ID="Res_NameTextBox" runat="server" 
                Text='<%# Bind("Res_Name") %>' />
            <br />
            Res_Logo:
            <asp:TextBox ID="Res_LogoTextBox" runat="server" 
                Text='<%# Bind("Res_Logo") %>' />
            <br />
            Res_Loc:
            <asp:TextBox ID="Res_LocTextBox" runat="server" Text='<%# Bind("Res_Loc") %>' />
            <br />
            Res_Web:
            <asp:TextBox ID="Res_WebTextBox" runat="server" Text='<%# Bind("Res_Web") %>' />
            <br />
            Res_TelNo:
            <asp:TextBox ID="Res_TelNoTextBox" runat="server" 
                Text='<%# Bind("Res_TelNo") %>' />
            <br />
            Res_Address:
            <asp:TextBox ID="Res_AddressTextBox" runat="server" 
                Text='<%# Bind("Res_Address") %>' />
            <br />
            Res_Town:
            <asp:TextBox ID="Res_TownTextBox" runat="server" 
                Text='<%# Bind("Res_Town") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Res_Name:
            <asp:TextBox ID="Res_NameTextBox0" runat="server" 
                Text='<%# Bind("Res_Name") %>' />
            <br />
            Res_Logo:
            <asp:TextBox ID="Res_LogoTextBox0" runat="server" 
                Text='<%# Bind("Res_Logo") %>' />
            <br />
            Res_Loc:
            <asp:TextBox ID="Res_LocTextBox0" runat="server" 
                Text='<%# Bind("Res_Loc") %>' />
            <br />
            Res_Web:
            <asp:TextBox ID="Res_WebTextBox0" runat="server" 
                Text='<%# Bind("Res_Web") %>' />
            <br />
            Res_TelNo:
            <asp:TextBox ID="Res_TelNoTextBox0" runat="server" 
                Text='<%# Bind("Res_TelNo") %>' />
            <br />
            Res_Address:
            <asp:TextBox ID="Res_AddressTextBox0" runat="server" 
                Text='<%# Bind("Res_Address") %>' />
            <br />
            Res_Town:
            <asp:TextBox ID="Res_TownTextBox0" runat="server" 
                Text='<%# Bind("Res_Town") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <div style="text-align: left; width: 973px">
                <table style="width:101%;">
                    <tr>
                        <td style="width: 254pt; height: 271px;">
                            <asp:Image ID="Image1" runat="server" Height="200pt" 
                                ImageUrl='<%# Eval("Res_Logo") %>' Width="250pt" />
                        </td>
                        <td style="height: 271px; width: 361px; text-align: center;" valign="top">
                            <asp:Panel ID="Panel1" runat="server" 
                                
                                style="font-family: 'Jing Jing'; font-size: large; font-weight: 700; text-align: center" 
                                BackColor="#FFFFCC">
                                <asp:Label ID="Res_NameLabel0" runat="server" 
                                    style="font-size: xx-large; text-decoration: underline; font-style: italic;" 
                                    Text='<%# Bind("Res_Name") %>' />
                            </asp:Panel>
                            <asp:Image ID="Image2" runat="server" Height="233px" 
                                ImageUrl='<%# Eval("Res_Loc") %>' style="text-align: center" 
                                Width="357px" />
                            <br />
                        </td>
                        <td style="height: 271px" valign="top">
                            <asp:Panel ID="Panel3" runat="server" BackColor="#FFFFCC" BorderColor="#FFFFCC" 
                                BorderStyle="None" BorderWidth="2px" Height="271px" style="font-size: medium" 
                                Width="255px">
                                <asp:Panel ID="Panel4" runat="server" BackColor="#FF9933" BorderColor="#FFFFCC" 
                                    BorderStyle="Solid" BorderWidth="1pt" ForeColor="White" Height="24px" 
                                    style="text-align: center; font-weight: 700">
                                    RESTAURANT DETAILS</asp:Panel>
                                <span style="font-size: large">
                                <div>
                                    <asp:Button ID="Button1" runat="server" PostBackUrl='<%# Eval("Res_Web") %>' 
                                        Text="Website" />
                                    <br />
                                </div>
                                <span style="text-decoration: underline">
                                <br />
                                Tell Number</span><br />
                                <asp:Label ID="Res_TelNoLabel0" runat="server" 
                                    Text='<%# Bind("Res_TelNo") %>' />
                                <br />
                                <br />
                                <span style="text-decoration: underline">Address</span><br />
                                <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Height="63px" 
                                    ReadOnly="True" Rows="3" style="font-size: large" 
                                    Text='<%# Eval("Res_Address") %>' TextMode="MultiLine" Width="248px"></asp:TextBox>
                                <br />
                                <asp:Label ID="Res_TownLabel0" runat="server" Text='<%# Bind("Res_Town") %>' />
                                </span>
                            </asp:Panel>
                        </td>
                    </tr>
                </table>
                <asp:Button ID="Button2" runat="server" PostBackUrl="~/writeReview.aspx" 
                    Text="Write a Review" />
                <br />
            </div>
        </ItemTemplate>
    </asp:FormView>
    <asp:Panel ID="Panel6" runat="server" 
        style="font-size: x-large; font-weight: 700; font-family: 'Times New Roman'">
        Comments</asp:Panel>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDSr01R" 
        style="text-align: left; font-size: large" Width="947px" 
        DataKeyField="rat_code">
        <ItemTemplate>
            <table bgcolor="#FF9900" frame="below" style="border-style: none; width: 100%;">
                <tr>
                    <td bgcolor="#FF9900" style="width: 182px">
                        &nbsp;</td>
                    <td bgcolor="#FF9900" style="width: 280px">
                        Review Date:<asp:Label ID="Review_DateLabel" runat="server" BackColor="White" 
                            Text='<%# Eval("Review_Date") %>' />
                    </td>
                    <td bgcolor="#FF9900" style="text-align: left">
                        &nbsp;Star Rating:
                        <asp:Label ID="rat_codeLabel" runat="server" BackColor="White" 
                            Text='<%# Eval("rat_code") %>' />
                    </td>
                </tr>
                <tr>
                    <td bgcolor="#FF9900" colspan="2">
                        Heading:<asp:Panel ID="Panel5" runat="server" BackColor="White">
                            <asp:Label ID="rat_nameLabel" runat="server" Text='<%# Eval("rat_name") %>' />
                        </asp:Panel>
                        Comment:</td>
                    <td bgcolor="#FF9900">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td bgcolor="White" colspan="3" style="border: thin solid #ff9900;">
                        <asp:Label ID="Review_ContentLabel" runat="server" 
                            Text='<%# Eval("Review_Content") %>' />
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <br />
    <asp:SqlDataSource ID="SqlDSr01R" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CSr01R %>" 
        ProviderName="<%$ ConnectionStrings:CSr01R.ProviderName %>" 
        
        SelectCommand="SELECT `restaurant review`.tblfoodcritic.Cr_Name, `restaurant review`.tblreview.Review_Date, `restaurant review`.tblreview.rat_code, `restaurant review`.tblrating.rat_name, `restaurant review`.tblreview.Review_Content FROM `restaurant review`.tblfoodcritic, `restaurant review`.tblreview, `restaurant review`.tblrating WHERE (`restaurant review`.tblfoodcritic.Cr_No = `restaurant review`.tblreview.Cr_No) AND (tblrating.rat_code = tblreview.rat_code) AND (tblreview.Res_Code = 'r02')">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDSr01" runat="server" 
    ConnectionString="<%$ ConnectionStrings:CSr02 %>" 
    ProviderName="<%$ ConnectionStrings:CSr02.ProviderName %>" SelectCommand="SELECT Res_Name, Res_Logo, Res_Loc, Res_Web, Res_TelNo, Res_Address, Res_Town 
FROM tblrestaurant
WHERE Res_Code = 'r02'"></asp:SqlDataSource>
</asp:Content>

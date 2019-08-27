<%@ Page Title="View Review" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="ViewReview.aspx.cs" Inherits="ViewReview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="col-lg-7 col-lg-offset-2"> 
<h1>RESTAURANT REVIEWS </h1>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <asp:Timer ID="Timer1" runat="server" Interval="2000" ontick="Timer1_Tick">
    </asp:Timer>
    <asp:Image ID="Image1" runat="server" Height="200px" Width="402px" />
    </ContentTemplate>
    </asp:UpdatePanel>
    
    <table style="width: 100%">
        <tr>
            <td >
            
                </td>
        </tr>
        <tr>
            <td>
                <asp:DropDownList ID="DropDownList1" 
                    CssClass="form-control form-control-warning"  runat="server" AutoPostBack="True" 
                    DataSourceID="dtsrcRes1" DataTextField="Res_Name" 
                    DataValueField="Res_Code" Width="122px">
                </asp:DropDownList>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                    CellPadding="2" DataSourceID="dtsrcComments" ForeColor="Black" GridLines="None">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:BoundField DataField="Review_Date" HeaderText="Date of Comment" 
                            SortExpression="Review_Date" />
                        <asp:BoundField DataField="Review_Content" HeaderText="Comments" 
                            SortExpression="Review_Content" />
                    </Columns>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                        HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
                <asp:SqlDataSource ID="dtsrcComments" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:RegConnectionString.ProviderName %>" SelectCommand="SELECT Review_Date, Review_Content FROM `restaurant review`.tblreview
WHERE Res_Code = ?">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" DefaultValue="r06" 
                            Name="Res_Code" PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="dtsrcRes1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:RegConnectionString.ProviderName %>" 
                    SelectCommand="SELECT Res_Code, Res_Name FROM `restaurant review`.tblrestaurant">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                    CellPadding="2" DataSourceID="dtsrcResLogo" ForeColor="Black" GridLines="None" 
                    Height="50px" Width="125px">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <FooterStyle BackColor="Tan" />
                    <FooterTemplate>
                        <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("Res_Logo") %>' 
                            Height="200px" Width="200px" />
                    </FooterTemplate>
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                        HorizontalAlign="Center" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="dtsrcResLogo" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:RegConnectionString.ProviderName %>" SelectCommand="SELECT Res_Logo FROM `restaurant review`.tblrestaurant
WHERE Res_Code = ?">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Res_Code" 
                            PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
        </tr>
    </table><br /><br /><br />

    </div><br />
</asp:Content>


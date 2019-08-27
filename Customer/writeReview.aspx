<%@ Page Title="Write Review" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="writeReview.aspx.cs" Inherits="Finiteloop.writeReview" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-lg-7 col-lg-offset-2" >
    <table align="center" style="width: 100%">
        <tr>
            <td align="center" 
                
                style="font-size: x-large; text-decoration: underline; height: 68px; width: 510px;">
            </td>
            <td align="center" colspan="3" 
                style="font-size: x-large; text-decoration: underline; height: 68px;">
       
            </td>
        </tr>
        <tr>
            <td style="width: 510px">
                &nbsp;</td>
            <td colspan="2">
            <h1 class="text-center">Write A Review</h1></td>
            <td>
                </td>
        </tr>
        <tr>
            <td style="width: 510px; height: 263px;">
                &nbsp;</td>
            <td style="width: 4px; height: 263px;">
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
            <td align="left" style="height: 263px; width: 192px; text-align: left; margin-left: 80px;" 
                valign="top">
                <asp:Panel ID="Panel1" runat="server" 
                    Width="115px" style="font-size: large">
                    Walk-in Date</asp:Panel>
                <asp:Calendar ID="Calendar1" runat="server" ondayrender="Calendar1_DayRender" 
                    BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" 
                    DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
                    ForeColor="#663399" Height="200px" ShowGridLines="True" Width="349px">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                        ForeColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                </asp:Calendar>
                <br />
                <asp:Panel ID="Panel4" runat="server" 
                    Width="97px" style="font-size: large">
                    Restaurant:</asp:Panel>
                <asp:DropDownList ID="DropDownList1" 
                    CssClass="form-control form-control-warning" runat="server" DataSourceID="dtsrcRest" 
                    DataTextField="Res_Name" DataValueField="Res_Code" Height="40px" 
                    Width="204px" style="font-size: large; margin-bottom: 2px;" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <br />
                <br />
                <asp:Panel ID="Panel5" runat="server" 
                    Width="151px" style="font-size: large" Height="23px">
                    Service based on:</asp:Panel>
                <asp:DropDownList ID="DropDownList2" CssClass="form-control form-control-warning" runat="server" 
                    DataSourceID="dtsrcService1" DataTextField="serviceType" 
                    DataValueField="serviceID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="dtsrcService1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:RegConnectionString.ProviderName %>" 
                    SelectCommand="SELECT `restaurant review`.tblservice.* FROM `restaurant review`.tblservice">
                </asp:SqlDataSource>
                <br />
                <br />
                <asp:Panel ID="Panel6" runat="server" 
                    Width="151px" style="font-size: large" Height="23px">
                    How was service:</asp:Panel>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" 
                    DataSourceID="dtsrcradio" DataTextField="rat_name" DataValueField="rat_code" 
                    onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:RadioButtonList>
                <asp:SqlDataSource ID="dtsrcradio" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:RegConnectionString.ProviderName %>" 
                    SelectCommand="SELECT rat_code, rat_name FROM `restaurant review`.tblrating">
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="dtsrcRest" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:RegConnectionString.ProviderName %>" 
                    
                    SelectCommand="SELECT Res_Code, Res_Name FROM `restaurant review`.tblrestaurant" 
                    onselecting="dtsrcRest_Selecting">
                </asp:SqlDataSource>
                <br />
                <asp:Panel ID="Panel2" runat="server" 
                    Width="84px" style="font-size: large" Height="20px">
                    Comment</asp:Panel>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control form-control-warning" Height="78px" TextMode="MultiLine" 
                    Width="348px" Contextchanged="TextBox1_TextChanged" 
                    ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="can not be empty" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:Button ID="Button1" CssClass="btn btn-warning" runat="server" onclick="Button1_Click" Text="Post" 
                    Width="101px" />
                <asp:Label ID="lblRating" runat="server" Cssclass="badge badge-success" ForeColor="#66FF66" Visible="False"></asp:Label>
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
            <td align="left" style="height: 263px; width: 669px" valign="top">
    
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="text-align: left; width: 510px;">
                &nbsp;</td>
            <td style="text-align: left; width: 4px;">
                &nbsp;</td>
            <td style="text-align: left; width: 192px">
                &nbsp;</td>
            <td style="text-align: left; width: 669px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 510px;">
                &nbsp;</td>
            <td style="width: 4px;">
                <br />
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 510px">
                &nbsp;</td>
            <td align="right" style="width: 4px">
                &nbsp;</td>
            <td style="text-align: left; width: 192px">
                &nbsp;</td>
            <td style="text-align: left; width: 669px">
                &nbsp;</td>
        </tr>
    </table>
    </div>
</asp:Content>

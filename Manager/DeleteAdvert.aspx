<%@ Page Title="Delete Advertisement" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="DeleteAdvert.aspx.cs" Inherits="Finiteloop.Manager.DeleteAdvert" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-lg-7 col-lg-offset-0"> 
    <table style="width: 100%">
        <tr>
            <td >
                <h1>&nbsp;</h1></td>
        </tr>
    </table>
    <br />
    <table class="nav-justified">
        <tr>
            <td style="width: 9px">
                &nbsp;</td>
            <td style="width: 1446px">
               <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DELETE ADVERTISEMENT</h1></td>
        </tr>
        <tr>
            <td style="width: 9px">
                &nbsp;</td>
            <td style="width: 1446px">
    <asp:GridView ID="GridView1"  runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" DataSourceID="dtsrcDeleteAdvert" 
        AllowPaging="True" onselectedindexchanged="GridView1_SelectedIndexChanged" 
        style="margin-left: 91px" Width="813px">
        <Columns>
            <asp:BoundField DataField="Res_Name" HeaderText="Restaurant Name" 
                SortExpression="Res_Name" />
            <asp:BoundField DataField="Res_TelNo" HeaderText="Restaurant TelNo" 
                SortExpression="Res_TelNo" />
            <asp:BoundField DataField="Res_Town" HeaderText="Restaurant Town" 
                SortExpression="Res_Town" />
            <asp:BoundField DataField="Res_Web" HeaderText="Restaurant Web" 
                SortExpression="Res_Web" />
            <asp:BoundField DataField="star_date" HeaderText="Start Date" 
                SortExpression="star_date" />
            <asp:BoundField DataField="end_date" HeaderText="End Date" 
                SortExpression="end_date" />
            <asp:BoundField DataField="Addvert_link" HeaderText="Addvert Link" 
                SortExpression="Addvert_link" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="dtsrcDeleteAdvert" runat="server" 
    ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" 
    ProviderName="<%$ ConnectionStrings:RegConnectionString.ProviderName %>" 
    SelectCommand="SELECT `restaurant review`.tblrestaurant.Res_Name, `restaurant review`.tblrestaurant.Res_TelNo, `restaurant review`.tblrestaurant.Res_Town, `restaurant review`.tblrestaurant.Res_Web, `restaurant review`.tbladvertisement.star_date, `restaurant review`.tbladvertisement.end_date, `restaurant review`.tbladvertisement.Addvert_link FROM `restaurant review`.tblrestaurant, `restaurant review`.tbladvertisement WHERE `restaurant review`.tblrestaurant.Res_Code = `restaurant review`.tbladvertisement.Res_Code"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 9px">
                &nbsp;</td>
            <td style="width: 1446px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" 
    DataSourceID="dtsrcAdvCode" DataTextField="Res_Name" 
    DataValueField="ad_AdvertID" Width="122px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="dtsrcAdvCode" runat="server" 
    ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" 
    ProviderName="<%$ ConnectionStrings:RegConnectionString.ProviderName %>" 
    SelectCommand="SELECT tbladvertisement.ad_AdvertID, tblrestaurant.Res_Name FROM tbladvertisement, tblrestaurant WHERE tbladvertisement.Res_Code = tblrestaurant.Res_Code">
    </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 9px">
                &nbsp;</td>
            <td style="width: 1446px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;<asp:Button ID="btndelete" CssClass="btn btn-warning" runat="server" OnClick="btndelete_Click" Text="DELETE" />
    <asp:Label ID="lbldelete" runat="server" Cssclass="badge badge-success" ForeColor="#66FF66" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" InsertCommand="CALL DeleteAvert(?)" InsertCommandType="StoredProcedure" ProviderName="<%$ ConnectionStrings:RegConnectionString.ProviderName %>">
        <InsertParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="ad_AdvertID" PropertyName="SelectedValue" />
        </InsertParameters>
    </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    <br />
    <br />
     <br />
    <br />
    </div>
</asp:Content>

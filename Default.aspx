<%--<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default3" %>--%>
<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <div class="col-lg-7 col-lg-offset-2">
    
        <asp:ListView ID="ListView1" runat="server" 
            GroupItemCount="3">
            <AlternatingItemTemplate>
                <td runat="server" style="">
                    <br />
                    <a href="#"><asp:Image ID="Image1" runat="server" BorderColor="#FF9900" BorderStyle="Solid" 
                        Height="180px" ImageUrl='<%# Eval("Res_Logo") %>' Width="180px" /></a>
                </td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="">
                    Res_Logo:
                    <asp:TextBox ID="Res_LogoTextBox" runat="server" 
                        Text='<%# Bind("Res_Logo") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                        Text="Update" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Cancel" />
                    <br />
                </td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" 
                    style="">
                    <tr>
                        <td>
                            No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
<td runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr ID="itemPlaceholderContainer" runat="server">
                    <td ID="itemPlaceholder" runat="server">
                    </td>
                </tr>
            </GroupTemplate>
            <InsertItemTemplate>
                <td runat="server" style="">
                    Res_Logo:
                    <asp:TextBox ID="Res_LogoTextBox" runat="server" 
                        Text='<%# Bind("Res_Logo") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                        Text="Insert" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Clear" />
                    <br />
                </td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="">
                    <br />
                    <a href="#"><asp:Image ID="Image2" runat="server" BorderColor="#FF9900" BorderStyle="Solid" 
                        Height="180px" ImageUrl='<%# Eval("Res_Logo") %>' Width="180px" /></a>
                </td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table ID="groupPlaceholderContainer" runat="server" border="0" 
                                style="">
                                <tr ID="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" 
                            style="">
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" class="style1">
                    <br />
                    <a href="#"><asp:Image ID="Image3" runat="server" BorderColor="#FF9900" BorderStyle="Solid" 
                        Height="180px" ImageUrl='<%# Eval("Res_Logo") %>' Width="180px" /></a>
                </td>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="dtsrcAvailableRes" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:RegConnectionString.ProviderName %>" 
            SelectCommand="SELECT Res_Logo FROM `restaurant review`.tblrestaurant">
        </asp:SqlDataSource>
        <br />
        <br />
       <br />
        <br />
                <br />
        <br />
    
    </div>
    </asp:Content>


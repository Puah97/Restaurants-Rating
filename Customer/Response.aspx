<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Response.aspx.cs" Inherits="Customer_Response" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="dtsrcresponse">
        <AlternatingItemTemplate>
            <tr style="">
                <td>
                    <asp:DynamicControl runat="server" DataField="Review_Response" 
                        Mode="ReadOnly" />
                </td>
                <td>
                    <asp:DynamicControl runat="server" DataField="Response_Date" Mode="ReadOnly" />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                        Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Cancel" />
                </td>
                <td>
                    <asp:DynamicControl runat="server" DataField="Review_Response" Mode="Edit" />
                </td>
                <td>
                    <asp:DynamicControl runat="server" DataField="Response_Date" Mode="Edit" />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>
                        No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" 
                        ValidationGroup="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Clear" />
                </td>
                <td>
                    <asp:DynamicControl runat="server" DataField="Review_Response" Mode="Insert" 
                        ValidationGroup="Insert" />
                </td>
                <td>
                    <asp:DynamicControl runat="server" DataField="Response_Date" Mode="Insert" 
                        ValidationGroup="Insert" />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:DynamicControl runat="server" DataField="Review_Response" 
                        Mode="ReadOnly" />
                </td>
                <td>
                    <asp:DynamicControl runat="server" DataField="Response_Date" Mode="ReadOnly" />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table ID="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr runat="server" style="">
                                <th runat="server">
                                    Review_Response</th>
                                <th runat="server">
                                    Response_Date</th>
                            </tr>
                            <tr ID="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="">
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="">
                <td>
                    <asp:DynamicControl runat="server" DataField="Review_Response" 
                        Mode="ReadOnly" />
                </td>
                <td>
                    <asp:DynamicControl runat="server" DataField="Response_Date" Mode="ReadOnly" />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="dtsrcresponse" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:RegConnectionString.ProviderName %>" 
        SelectCommand="SELECT Review_Response, Response_Date FROM `restaurant review`.tblreview">
    </asp:SqlDataSource>
</asp:Content>


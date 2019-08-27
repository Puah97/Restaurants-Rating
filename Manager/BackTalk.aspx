<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="BackTalk.aspx.cs" Inherits="Manager_BackTalk" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="nav-justified">
        <tr>
            <td style="height: 130px; width: 109px;"></td>
            <td style="height: 130px; width: 54px;"></td>
            <td style="height: 130px; width: 212px;" class="text-center">&nbsp;</td>
            <td style="height: 130px" class="text-center">
                &nbsp;</td>
            <td style="height: 130px"></td>
            <td style="height: 130px"></td>
        </tr>
        <tr>
            <td style="height: 98px; width: 109px;">&nbsp;</td>
            <td style="height: 98px; width: 54px;">&nbsp;</td>
            <td style="height: 98px" colspan="2">
                <br />
&nbsp; Service Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Text="Rating"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Text="Date"></asp:Label>
                <br />
                &nbsp;
                <asp:DropDownList ID="DropDownList3" runat="server" 
                    DataSourceID="dtsrcServiceT" DataTextField="serviceType" 
                    DataValueField="serviceID" Height="30px" Width="140px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="dtsrcServiceT" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:RegConnectionString.ProviderName %>" 
                    SelectCommand="SELECT `restaurant review`.tblservice.* FROM `restaurant review`.tblservice">
                </asp:SqlDataSource>
&nbsp;<asp:DropDownList ID="DropDownList1"  runat="server" DataSourceID="dtsrefilter" DataTextField="rat_name" DataValueField="rat_code" Height="30px" Width="140px">
                </asp:DropDownList>
                &nbsp;<asp:DropDownList ID="DropDownList2" 
                     runat="server" Height="30px" 
                    style="margin-left: 31" Width="140px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="0">January</asp:ListItem>
                    <asp:ListItem Value="1">February</asp:ListItem>
                    <asp:ListItem Value="2">March</asp:ListItem>
                    <asp:ListItem Value="3">April</asp:ListItem>
                    <asp:ListItem Value="4">May</asp:ListItem>
                    <asp:ListItem Value="5">June</asp:ListItem>
                    <asp:ListItem Value="6">July</asp:ListItem>
                    <asp:ListItem Value="7">August</asp:ListItem>
                    <asp:ListItem Value="8">September</asp:ListItem>
                    <asp:ListItem Value="9">October</asp:ListItem>
                    <asp:ListItem Value="10">November</asp:ListItem>
                    <asp:ListItem Value="11">December</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="btnfilter" runat="server" CssClass="btn btn-warning" OnClick="btnfilter_Click" Text="search" style=" position: relative; left: 5px; bottom: 4px;" />
            </td>
            <td style="height: 98px">&nbsp;</td>
            <td style="height: 98px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 98px; width: 109px;">&nbsp;</td>
            <td style="height: 98px" colspan="3">
            <div class="well", style="width:75%; ">
                <asp:ListView ID="ListView1" style="text-align: center;" runat="server">
         
                    <AlternatingItemTemplate>

                        <li style="">&nbsp;<asp:Label ID="Label3"  runat="server" Text='<%# Eval("Review_Content") %>' />
                        </li>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <li style="">Review_Content:
                            <asp:TextBox ID="Review_ContentTextBox" runat="server" Text='<%# Bind("Review_Content") %>' />
                            <br />
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </li>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        No comments available.
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <li style="">Review_Content:
                            <asp:TextBox ID="Review_ContentTextBox"  runat="server" Text='<%# Bind("Review_Content") %>' />
                            <br />
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </li>
                    </InsertItemTemplate>
                    <ItemSeparatorTemplate>
<br />
                    </ItemSeparatorTemplate>
                    <ItemTemplate>
                        <li style="">
                           <asp:Label ID="Label4"  runat="server" Text='<%# Eval("Review_Content") %>'></asp:Label>
&nbsp;
                            <br />
                        </li>
                        <br />
                        </li>
                        <br />
                        </li>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <ul id="itemPlaceholderContainer" runat="server" style="">
                            <li runat="server" id="itemPlaceholder" />
                        </ul>
                        <div style="">
                        </div>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <li style="">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Review_Content") %>' />
                        </li>
                    </SelectedItemTemplate>
                   
                </asp:ListView>
                 </div>
            </td>
            <td style="height: 98px"></td>
            <td style="height: 98px"></td>
        </tr>
        <tr>
            <td style="height: 20px; width: 109px;">&nbsp;</td>
            <td style="height: 20px; width: 54px;">&nbsp;</td>
            <td style="height: 20px; width: 212px;"></td>
            <td style="height: 20px">
                <asp:SqlDataSource ID="dtsrefilter" runat="server" ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" ProviderName="<%$ ConnectionStrings:RegConnectionString.ProviderName %>" SelectCommand="SELECT rat_code, rat_name FROM `restaurant review`.tblrating"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" ProviderName="<%$ ConnectionStrings:RegConnectionString.ProviderName %>" SelectCommand="SELECT Review_Content FROM `restaurant review`.tblreview"></asp:SqlDataSource>
            </td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="width: 109px">&nbsp;</td>
            <td style="width: 54px">&nbsp;</td>
            <td colspan="2">

                <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" 
                    Height="103px" TextMode="MultiLine" Width="520px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 109px">&nbsp;</td>
            <td style="width: 54px">&nbsp;</td>
            <td style="width: 212px">&nbsp;</td>
            <td>
              
                <asp:Button ID="btnrespond" CssClass="btn btn-warning" runat="server" Text="Respond" OnClick="btnrespond_Click" />
                <asp:Label ID="lblresponce" runat="server" Cssclass="badge badge-success" Text="Label" ForeColor="#66FF66" 
                    Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 109px">&nbsp;</td>
            <td style="width: 54px">&nbsp;</td>
            <td style="width: 212px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 109px">&nbsp;</td>
            <td style="width: 54px">&nbsp;</td>
            <td style="width: 212px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 109px">&nbsp;</td>
            <td style="width: 54px">&nbsp;</td>
            <td style="width: 212px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 109px">&nbsp;</td>
            <td style="width: 54px">&nbsp;</td>
            <td style="width: 212px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


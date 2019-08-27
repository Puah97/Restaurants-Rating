<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="viewAdverts.aspx.cs" Inherits="Finiteloop.viewAdverts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-lg-7 col-lg-offset-1">
&nbsp&nbsp<h1 style='font-family: Poppins'>RESTAURANT ADVERTISEMENT </h1>
   
        <asp:ListView ID="ListView1" runat="server" DataSourceID="dtsrcViewAdverts" GroupItemCount="3">
            <AlternatingItemTemplate>
                <td runat="server" style="">
                    <asp:Image ID="Image1" runat="server" Height="98px" ImageUrl='<%# Eval("Res_Logo") %>' Width="161px" />
                    <br />
                    <asp:Label ID="Res_NameLabel" runat="server" Font-Names="Copperplate Gothic Bold" Text='<%# Eval("Res_Name") %>'></asp:Label>
                    <br />
                    <asp:Label ID="Res_TelNoLabel" runat="server" Font-Names="Copperplate Gothic Bold" Text='<%# Eval("Res_TelNo") %>'></asp:Label>
                    <br />
                    <asp:Label ID="Res_TownLabel" runat="server" Text='<%# Eval("Res_Town") %>' 
                        Font-Names="Copperplate Gothic Bold"></asp:Label>
                    <br />
                    <br />
                    <em>Click this link bellow for more info<br /> </em>
                    <asp:HyperLink ID="HyperLink24" runat="server" 
                        NavigateUrl='<%# Eval("Res_Web") %>' Text='<%# Eval("Res_Web") %>'></asp:HyperLink>
                    <br />
                    <br />
                    <em>offer is available from </em>
                    <asp:Label ID="star_dateLabel" runat="server" Text='<%# Eval("star_date") %>'></asp:Label>
                    &nbsp;<em>to </em>
                    <asp:Label ID="end_dateLabel" runat="server" Text='<%# Eval("end_date") %>'></asp:Label>
                    <br />
                    <em>Click this link bellow to view offer<br /> </em>
                    <asp:HyperLink ID="HyperLink25" runat="server" 
                        NavigateUrl='<%# Eval("Addvert_link") %>' Text='<%# Eval("Addvert_link") %>'></asp:HyperLink>
                    <br />
                </td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="">Res_Name:
                    <asp:TextBox ID="Res_NameTextBox" runat="server" Text='<%# Bind("Res_Name") %>' />
                    <br />
                    Res_TelNo:
                    <asp:TextBox ID="Res_TelNoTextBox" runat="server" Text='<%# Bind("Res_TelNo") %>' />
                    <br />
                    Res_Town:
                    <asp:TextBox ID="Res_TownTextBox" runat="server" Text='<%# Bind("Res_Town") %>' />
                    <br />
                    Res_Logo:
                    <asp:TextBox ID="Res_LogoTextBox" runat="server" Text='<%# Bind("Res_Logo") %>' />
                    <br />
                    Res_Web:
                    <asp:TextBox ID="Res_WebTextBox" runat="server" Text='<%# Bind("Res_Web") %>' />
                    <br />
                    star_date:
                    <asp:TextBox ID="star_dateTextBox" runat="server" Text='<%# Bind("star_date") %>' />
                    <br />
                    end_date:
                    <asp:TextBox ID="end_dateTextBox" runat="server" Text='<%# Bind("end_date") %>' />
                    <br />
                    Addvert_link:
                    <asp:TextBox ID="Addvert_linkTextBox" runat="server" Text='<%# Bind("Addvert_link") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    <br />
                </td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
                <td runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
            <InsertItemTemplate>
                <td runat="server" style="">Res_Name:
                    <asp:TextBox ID="Res_NameTextBox" runat="server" Text='<%# Bind("Res_Name") %>' />
                    <br />
                    Res_TelNo:
                    <asp:TextBox ID="Res_TelNoTextBox" runat="server" Text='<%# Bind("Res_TelNo") %>' />
                    <br />
                    Res_Town:
                    <asp:TextBox ID="Res_TownTextBox" runat="server" Text='<%# Bind("Res_Town") %>' />
                    <br />
                    Res_Logo:
                    <asp:TextBox ID="Res_LogoTextBox" runat="server" Text='<%# Bind("Res_Logo") %>' />
                    <br />
                    Res_Web:
                    <asp:TextBox ID="Res_WebTextBox" runat="server" Text='<%# Bind("Res_Web") %>' />
                    <br />
                    star_date:
                    <asp:TextBox ID="star_dateTextBox" runat="server" Text='<%# Bind("star_date") %>' />
                    <br />
                    end_date:
                    <asp:TextBox ID="end_dateTextBox" runat="server" Text='<%# Bind("end_date") %>' />
                    <br />
                    Addvert_link:
                    <asp:TextBox ID="Addvert_linkTextBox" runat="server" Text='<%# Bind("Addvert_link") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br />
                </td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="">
                    <br />
                    <asp:Image ID="Image1" runat="server" Height="98px" ImageUrl='<%# Eval("Res_Logo") %>' Width="161px" />
                    <br />
                    &nbsp;<asp:Label ID="Res_NameLabel" runat="server" Font-Names="Copperplate Gothic Bold" Text='<%# Eval("Res_Name") %>' />
                    <br />
                    <asp:Label ID="Res_TelNoLabel" runat="server" Font-Names="Copperplate Gothic Bold" Text='<%# Eval("Res_TelNo") %>' />
                    <br />
                    &nbsp;<asp:Label ID="Res_TownLabel" runat="server" Font-Names="Copperplate Gothic Bold" Text='<%# Eval("Res_Town") %>' />
                    <br />
                    <br />
                    <em>Click this link bellow for more info<br /> </em>
                    <asp:HyperLink ID="HyperLink22" runat="server" 
                        NavigateUrl='<%# Eval("Res_Web") %>' Text='<%# Eval("Res_Web") %>'></asp:HyperLink>
                    &nbsp;<br />
                    <br />
                    <em>offer is available from</em>
                    <asp:Label ID="star_dateLabel" runat="server" Text='<%# Eval("star_date") %>' />
                    &nbsp;<em>to</em>
                    <asp:Label ID="end_dateLabel" runat="server" Text='<%# Eval("end_date") %>' />
                    <br />
                    <em>Click this link bellow to view offer<br /> </em>
                    <asp:HyperLink ID="HyperLink23" runat="server" 
                        NavigateUrl='<%# Eval("Addvert_link") %>' Text='<%# Eval("Addvert_link") %>'></asp:HyperLink>
                    <br />
                </td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                                <tr id="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style=""></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="">
                    <asp:Image ID="Image1" runat="server" Height="98px" ImageUrl='<%# Eval("Res_Logo") %>' Width="161px" />
                    <br />
                    <asp:Label ID="Res_NameLabel" runat="server" Font-Names="Copperplate Gothic Bold" Text='<%# Eval("Res_Name") %>' />
                    <br />
                    <asp:Label ID="Res_TelNoLabel" runat="server" Font-Names="Copperplate Gothic Bold" Text='<%# Eval("Res_TelNo") %>' />
                    <br />
                    <asp:Label ID="Res_TownLabel" runat="server" Font-Names="Copperplate Gothic Bold" Text='<%# Eval("Res_Town") %>' />
                    <br />
                    <br />
                    <em>Click this link bellow for more info<br /> </em>
                    <asp:HyperLink ID="HyperLink20" runat="server" 
                        NavigateUrl='<%# Eval("Res_Web") %>' Text='<%# Eval("Res_Web") %>'></asp:HyperLink>
                    <br />
                    <br />
                    <em>offer is available from </em>
                    <asp:Label ID="star_dateLabel" runat="server" Text='<%# Eval("star_date") %>' />
                    &nbsp;<em>to </em>
                    <asp:Label ID="end_dateLabel" runat="server" Text='<%# Eval("end_date") %>' />
                    <br />
                    <em>Click this link bellow to view offer<br /> </em>
                    <asp:HyperLink ID="HyperLink21" runat="server" 
                        NavigateUrl='<%# Eval("Addvert_link") %>' Text='<%# Eval("Addvert_link") %>'></asp:HyperLink>
                    <br />
                </td>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="dtsrcViewAdverts" runat="server" ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" ProviderName="<%$ ConnectionStrings:RegConnectionString.ProviderName %>" SelectCommand="SELECT `restaurant review`.tblrestaurant.Res_Name, `restaurant review`.tblrestaurant.Res_TelNo, `restaurant review`.tblrestaurant.Res_Town, `restaurant review`.tblrestaurant.Res_Logo, `restaurant review`.tblrestaurant.Res_Web, `restaurant review`.tbladvertisement.star_date, `restaurant review`.tbladvertisement.end_date, `restaurant review`.tbladvertisement.Addvert_link FROM `restaurant review`.tblrestaurant, `restaurant review`.tbladvertisement WHERE `restaurant review`.tblrestaurant.Res_Code = `restaurant review`.tbladvertisement.Res_Code"></asp:SqlDataSource>
        <%-- <asp:Panel ID="Panel1" runat="server" BorderStyle="Inset" BorderWidth="8px" HorizontalAlign="Center" ScrollBars="Vertical" EnableViewState="False">
    </asp:Panel><br /><br /><br /><br />--%>
    <br /><br /><br /><br />
    </div>
</asp:Content>

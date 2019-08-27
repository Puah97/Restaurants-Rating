<%@ Page Title="Update Adverts" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="UpdateAvertisement.aspx.cs" Inherits="Finiteloop.Manager.UpdateAvertisement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-lg-7 col-lg-offset-1">
    <table style="width: 100%">
        <tr>
            <td></td>
        </tr>
        <tr>
            <td style="width: 204px; height: 20px;"></td>
            <td style="width: 322px; height: 20px;"></td>
        </tr>
        <tr>
            <td style="width: 204px">
                &nbsp;</td>
            <td align="center" colspan="2">
                <h1>Update Advertisment</h1></td>
        </tr>
        <tr>
            <td style="width: 204px">
                <br /></td>
            <td align="center" colspan="2">
                <asp:HiddenField ID="HiddenField1" runat="server" />
                <br />
                <br />Advert Link<br />
                <asp:DropDownList ID="DropDownList3" runat="server"  
                    DataSourceID="dtsrcAdvCode" DataTextField="Addvert_link" 
                    DataValueField="ad_AdvertID" 
                    onselectedindexchanged="DropDownList3_SelectedIndexChanged1" Width="122px" 
                    Height="30px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="dtsrcAdvCode" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:RegConnectionString.ProviderName %>" 
                    SelectCommand="call SelectAdvert(?)" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="HiddenField1" Name="Res_Code" 
                            PropertyName="Value" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 204px">&nbsp;</td>
            <td align="center" style="width: 322px">
                <asp:Label ID="Label2" runat="server" Text="Start Date"></asp:Label>
                <br />
                <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" 
                    BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
                    Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" 
                    OnSelectionChanged="Calendar1_SelectionChanged" 
                    SelectedDate="06/11/2017 02:51:54" ShowGridLines="True" 
                    VisibleDate="2017-06-11" Width="220px" ondayrender="Calendar1_DayRender">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                </asp:Calendar>
            </td>
            <td align="center" style="width: 292px">
                <asp:Label ID="Label3" runat="server" Text="End Date"></asp:Label>
                <asp:Calendar ID="Calendar2" runat="server" BackColor="#FFFFCC" 
                    BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
                    Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" 
                    OnSelectionChanged="Calendar2_SelectionChanged" ShowGridLines="True" 
                    Width="220px" ondayrender="Calendar2_DayRender">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                </asp:Calendar>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td style="height: 67px; width: 204px"></td>
            <td align="." colspan="2" style="height: 67px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Text="Description"></asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" 
                    Width="199px" ontextchanged="TextBox1_TextChanged">http://www.example.com</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 204px">&nbsp;</td>
            <td align="center" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="dtsrcdesc">
                    <Columns>
                        <asp:BoundField DataField="Fee_Description" HeaderText="Fee_Description" 
                            SortExpression="Fee_Description" />
                        <asp:BoundField DataField="Fee_Amount" HeaderText="Fee_Amount" 
                            SortExpression="Fee_Amount" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="dtsrcdesc" runat="server" ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" ProviderName="<%$ ConnectionStrings:RegConnectionString.ProviderName %>" SelectCommand="SELECT Fee_Description, Fee_Amount FROM `restaurant review`.tblfee"></asp:SqlDataSource>

                <asp:DropDownList ID="DropDownList2" 
                     runat="server" DataSourceID="dtsrcrest" 
                    DataTextField="Fee_Description" DataValueField="Fee_Num" Width="122px" 
                    onselectedindexchanged="DropDownList2_SelectedIndexChanged" Height="30px">
                </asp:DropDownList>
                <br />
                <asp:SqlDataSource ID="dtsrcrest" runat="server" ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" ProviderName="<%$ ConnectionStrings:RegConnectionString.ProviderName %>" SelectCommand="SELECT Fee_Num, Fee_Description FROM `restaurant review`.tblfee"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 204px">&nbsp;</td>
            <td align="center" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 204px">&nbsp;</td>
            <td align="center" colspan="2">
                <asp:Button ID="Button1" CssClass="btn btn-warning" runat="server" onclick="Button1_Click" Text="UPDATE" />
                <asp:Label ID="Label5" runat="server" Cssclass="badge badge-success" ForeColor="Lime" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="height: 23px; width: 204px"></td>
        </tr>
        <tr>
            <td style="width: 204px">&nbsp;</td>
            <td style="width: 322px">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" InsertCommand="CALL UpdateAdvert(?,?,?,?,?,?)" InsertCommandType="StoredProcedure" ProviderName="<%$ ConnectionStrings:RegConnectionString.ProviderName %>">
                    <InsertParameters>
                        <asp:ControlParameter ControlID="HiddenField1" Name="Res_Code" 
                            PropertyName="Value" />
                        <asp:ControlParameter ControlID="DropDownList2" Name="Fee_Num" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="Calendar1" Name="start_date" PropertyName="SelectedDate" />
                        <asp:ControlParameter ControlID="Calendar2" Name="end_date" PropertyName="SelectedDate" />
                        <asp:ControlParameter ControlID="TextBox1" Name="special_description" PropertyName="Text" />
                        <asp:ControlParameter ControlID="DropDownList3" Name="ad_AdvertID" 
                            PropertyName="SelectedValue" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table><br /><br /><br /><br />
    </div>
</asp:Content>

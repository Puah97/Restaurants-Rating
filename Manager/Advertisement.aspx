<%@ Page Title="Advertise" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Advertisement.aspx.cs" Inherits="Finiteloop.Advertisement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-lg-7 col-lg-offset-2">
    <table style="width: 100%">
        <tr>
            <td style="width: 1723px; height: 20px;">
                </td>
            <td colspan="3" style="height: 20px">
                <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Posting Advertisment</h1></td>
        </tr>
        <tr>
            <td style="width: 1723px; height: 20px;">
                &nbsp;</td>
            <td colspan="3" style="height: 20px">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" style="width: 1723px">
                &nbsp;</td>
            <td align="center" style="width: 1030px">
                <asp:Label ID="Label2" runat="server" Text="Start Date"></asp:Label>
                <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" 
                    BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
                    Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" 
                    OnSelectionChanged="Calendar1_SelectionChanged" 
                    SelectedDate="06/11/2017 02:51:54" ShowGridLines="True" 
                    VisibleDate="2017-06-11" Width="222px" 
                    ondayrender="Calendar1_DayRender">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                </asp:Calendar>
            </td>
            <td align="center" style="width: 963px" class="modal-lg">
                <asp:Label ID="Label3" runat="server" Text="End Date"></asp:Label>
                <asp:Calendar ID="Calendar2" runat="server" BackColor="#FFFFCC" 
                    BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
                    Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" 
                    OnSelectionChanged="Calendar2_SelectionChanged" ShowGridLines="True" 
                    Width="222px" ondayrender="Calendar2_DayRender">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                </asp:Calendar>
            </td>
            <td align="left" style="width: 77%">
                    <asp:HiddenField ID="HiddenField1" runat="server" />
                </td>
        </tr>
        <tr>
            <td style="width: 1723px">
                &nbsp;</td>
            <td style="width: 1030px">
                &nbsp;</td>
            <td style="width: 963px" class="modal-lg">
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 1723px" class="text-center">
                &nbsp;</td>
            <td class="text-center" colspan="2">
                <asp:Label ID="Label4" runat="server" Text="Offer link"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox1" runat="server"  
                    Width="200px" ontextchanged="TextBox1_TextChanged">http://www.example.com</asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" 
                    ErrorMessage="You must enter the link of the advert" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            <td align="left" valign="bottom" style="width: 77%">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" style="width: 1723px">
                &nbsp;</td>
            <td align="center" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="dtsrcdesc" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="Fee_Description" HeaderText="Fee_Description" 
                            SortExpression="Fee_Description" />
                        <asp:BoundField DataField="Fee_Amount" HeaderText="Fee_Amount" 
                            SortExpression="Fee_Amount" />
                    </Columns>
                </asp:GridView>
                <asp:DropDownList ID="DropDownList2" 
                    CssClass="form-control form-control-warning" runat="server" DataSourceID="dtsrcrest" 
                    DataTextField="Fee_Description" DataValueField="Fee_Num" 
                    onselectedindexchanged="DropDownList2_SelectedIndexChanged" Width="122px">
                </asp:DropDownList>
                <br />
                <asp:SqlDataSource ID="dtsrcrest" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:RegConnectionString.ProviderName %>" 
                    SelectCommand="SELECT Fee_Num, Fee_Description FROM `restaurant review`.tblfee" 
                    onselecting="dtsrcrest_Selecting"></asp:SqlDataSource>
                <asp:Button ID="Button1" CssClass="btn btn-warning" runat="server" onclick="Button1_Click" 
                    Text="POST ADVERT" />
                <asp:Label ID="lblpost" runat="server" Cssclass="badge badge-success" ForeColor="#66FF66" Visible="False"></asp:Label>
                <br />
                <asp:SqlDataSource ID="dtsrcdesc" runat="server" ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" ProviderName="<%$ ConnectionStrings:RegConnectionString.ProviderName %>" SelectCommand="SELECT Fee_Description, Fee_Amount FROM `restaurant review`.tblfee"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" InsertCommand="CALL MakeAdvertisement(?,?,?,?,?)" InsertCommandType="StoredProcedure" ProviderName="<%$ ConnectionStrings:RegConnectionString.ProviderName %>">
                    <InsertParameters>
                        <asp:ControlParameter ControlID="HiddenField1" Name="Res_Code" 
                            PropertyName="Value" />
                        <asp:ControlParameter ControlID="DropDownList2" Name="Fee_Num" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="Calendar1" Name="start_date" PropertyName="SelectedDate" />
                        <asp:ControlParameter ControlID="Calendar2" Name="end_date" PropertyName="SelectedDate" />
                        <asp:ControlParameter ControlID="TextBox1" Name="special_description" PropertyName="Text" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
            <td align="left" valign="top" style="width: 77%">
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 1723px">
                &nbsp;</td>
            <td align="center" style="width: 1030px">
                &nbsp;</td>
            <td align="center" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" style="width: 1723px">
                &nbsp;</td>
            <td align="center" style="width: 1030px">
                &nbsp;</td>
            <td align="center" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" style="width: 1723px">
                &nbsp;</td>
            <td align="center" style="width: 1030px">
                &nbsp;</td>
            <td align="center" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" style="width: 1723px">
                &nbsp;</td>
            <td align="center" style="width: 1030px">
                &nbsp;</td>
            <td align="center" colspan="2">
                &nbsp;</td>
        </tr>
        </table><br /><br /><br /><br />
        </div>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="ShowAdvertForm.aspx.cs" Inherits="Manager_ShowAdvertForm" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="text-decoration: underline; font-size: x-large">
                <strong><em>RESTAURANTS WEBSITE AND ADVERT LINKS </em></strong>
            </td>
        </tr>
        <tr>
            <td>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <br />
                <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" 
                    BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
                    Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" 
                    ShowGridLines="True" Width="220px">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                        ForeColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                </asp:Calendar>
                <asp:Calendar ID="Calendar2" runat="server" BackColor="#FFFFCC" 
                    BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
                    Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" 
                    ShowGridLines="True" Width="220px">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                        ForeColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                </asp:Calendar>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="SEARCH" />
            </td>
        </tr>
        <tr>
            <td>
                <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
                    Font-Size="8pt" InteractiveDeviceInfos="(Collection)" 
                    WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt">
                    <LocalReport ReportPath="Manager\ShowAdvertReport.rdlc">
                        <DataSources>
                            <rsweb:ReportDataSource DataSourceId="ObjectDataSourceShowAdvert" 
                                Name="DataSetShowdvert" />
                        </DataSources>
                    </LocalReport>
                </rsweb:ReportViewer>
                <asp:ObjectDataSource ID="ObjectDataSourceShowAdvert" runat="server" 
                    FilterExpression="star_date &gt;=star_date AND star_date &lt; end_date" 
                    OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
                    TypeName="DataSetShowAdvertTableAdapters.DataTable1TableAdapter">
                    <FilterParameters>
                        <asp:ControlParameter ControlID="Calendar1" Name="star_date" 
                            PropertyName="SelectedDate" />
                        <asp:ControlParameter ControlID="Calendar2" Name="end_date" 
                            PropertyName="SelectedDate" />
                    </FilterParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
    </table>
</asp:Content>


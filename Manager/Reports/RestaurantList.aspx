<%@ Page Title="Restaurant Report" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="RestaurantList.aspx.cs" Inherits="Manager_Reports_RestaurantList" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width: 100%">
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <br />
        </td>
    </tr>
    <tr>
        <td style="height: 34px">
            <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
                Font-Size="8pt" InteractiveDeviceInfos="(Collection)" 
                WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" 
                BorderColor="#CC9900" BorderStyle="Solid" Height="628px" Width="987px">
                <LocalReport ReportPath="Manager\Reports\RestListReport.rdlc">
                    <DataSources>
                        <rsweb:ReportDataSource DataSourceId="ObjectDataSourceRestList" 
                            Name="DataSetRestList" />
                    </DataSources>
                </LocalReport>
            </rsweb:ReportViewer>
            <asp:ObjectDataSource ID="ObjectDataSourceRestList" runat="server" 
                OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
                TypeName="DataSetRestListTableAdapters.DataTable1TableAdapter">
            </asp:ObjectDataSource>
        </td>
    </tr>
</table>
</asp:Content>


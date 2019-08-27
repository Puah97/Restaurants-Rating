<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="TopAdvertForm.aspx.cs" Inherits="Manager_TopAdvertForm" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="height: 19px">
            <marquee style="font-weight: 700; font-style: italic; text-decoration: underline; font-size: x-large">
                RESTAURANT TOTAL NUMBER OF ADVERTS </marquee></td>
        </tr>
        <tr>
            <td>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
        <tr>
            <td>
                <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
                    Font-Size="8pt" InteractiveDeviceInfos="(Collection)" 
                    WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt">
                    <LocalReport ReportPath="Manager\TopAdvertReport.rdlc">
                        <DataSources>
                            <rsweb:ReportDataSource DataSourceId="ObjectDataSourceTopAdv" 
                                Name="DataSetTopAdvert" />
                        </DataSources>
                    </LocalReport>
                </rsweb:ReportViewer>
                <asp:ObjectDataSource ID="ObjectDataSourceTopAdv" runat="server" 
                    OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
                    TypeName="DataSetTopAdvertTableAdapters.DataTable1TableAdapter">
                </asp:ObjectDataSource>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server">
                </asp:ObjectDataSource>
                <asp:ObjectDataSource ID="ObjectDataSourceTopAdvert" runat="server">
                </asp:ObjectDataSource>
            </td>
        </tr>
    </table>
</asp:Content>


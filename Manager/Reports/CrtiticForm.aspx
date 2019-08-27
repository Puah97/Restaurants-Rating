<%@ Page Title="Critic Report" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="CrtiticForm.aspx.cs" Inherits="Manager_Reports_CrtiticForm" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        REGISTERED FOOD CRITICS REPORT<br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
            </p>
    <p>
        &nbsp;</p>
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
        Font-Size="8pt" InteractiveDeviceInfos="(Collection)" 
        WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" 
        BorderColor="#CC9900" BorderStyle="Solid" Height="628px" Width="987px">
        <LocalReport ReportPath="Manager\Reports\CriticReport.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="ObjectDataSourceCritics" 
                    Name="DataSetCritics" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
    <asp:ObjectDataSource ID="ObjectDataSourceCritics" runat="server" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
        TypeName="DataSetCriticTableAdapters.DataTable1TableAdapter">
    </asp:ObjectDataSource>
    <p>
    </p>
</asp:Content>


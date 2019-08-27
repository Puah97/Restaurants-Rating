<%@ Page Title="Rating Repoprt" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="ResRateForm.aspx.cs" Inherits="Manager_Reports_ResRateForm" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td>
                RESTAURANT RATINGS<asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
        <tr>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="Res_Name" 
                    DataValueField="Res_Name" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged1">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:RegConnectionString.ProviderName %>" 
                    SelectCommand="SELECT Res_Name FROM `restaurant review`.tblrestaurant">
                </asp:SqlDataSource>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
                    Font-Size="8pt" InteractiveDeviceInfos="(Collection)" 
                    WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" 
                    BorderColor="#CC9900" BorderStyle="Solid" Height="628px" Width="987px">
                    <LocalReport ReportPath="Manager\Reports\ResRateReport.rdlc">
                        <DataSources>
                            <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" 
                                Name="DataSet1" />
                        </DataSources>
                    </LocalReport>
                </rsweb:ReportViewer>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                    OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
                    TypeName="DataSetRatingTableAdapters.DataTable1TableAdapter" 
                    onselecting="ObjectDataSource1_Selecting">
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

